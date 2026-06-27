-- 1. ¿Qué categorías le dejan más dinero a Amazon?

SELECT
	c.nombre AS categoria,
    ROUND(SUM(d.precio_unitario*d.cantidad),2) AS ingreso_total
FROM categorias c
INNER JOIN productos p
	ON c.id_categoria = p.id_categoria
INNER JOIN detalle_pedidos d
	ON p.id_producto = d.id_producto
GROUP BY
	categoria
ORDER BY
	ingreso_total DESC
;

-- 2. ¿Qué clientes se registraron pero nunca compraron?

SELECT
	c.id_cliente,
    c.nombre AS cliente,
    c.canal AS canal_adquisicion
FROM clientes c
LEFT JOIN pedidos p
	ON c.id_cliente = p.id_cliente
WHERE p.id_cliente ISNULL
ORDER BY
	c.nombre
;

-- 3. ¿Cuáles son los productos premium del catálogo? Aquellos que cuestan más que el precio promedio.

SELECT
	nombre,
    precio
FROM productos
WHERE precio > (SELECT AVG (precio)
                FROM productos)
ORDER BY precio DESC
;

-- 4. ¿Quiénes son los 5 primeros clientes que más gastan?

WITH pedidos_clientes AS (
    SELECT
        c.id_cliente,
        c.nombre,
 		c.canal,
        d.cantidad * d.precio_unitario AS precio_total
    FROM clientes c
    INNER JOIN pedidos p 
        ON c.id_cliente = p.id_cliente
    INNER JOIN detalle_pedidos d
        ON p.id_pedido = d.id_pedido
)
SELECT
    pc.id_cliente,
    pc.nombre,
    pc.canal,
    ROUND(SUM(pc.precio_total), 2) AS gasto_total
FROM pedidos_clientes pc
GROUP BY
    pc.id_cliente,
    pc.nombre
ORDER BY
    gasto_total DESC
LIMIT 5
;

--  Dentro de cada categoría, ¿cuáles son los productos estrella?

WITH ingresos_producto AS (
    SELECT
  		c.nombre AS categoria,
  		p.nombre AS producto,
        ROUND(SUM(d.cantidad * d.precio_unitario), 2) AS valor_total
    FROM productos p
    INNER JOIN detalle_pedidos d 
        ON p.id_producto = d.id_producto
    INNER JOIN categorias c 
        ON p.id_categoria = c.id_categoria
    GROUP BY 
       categoria,
       producto
)
SELECT 
    categoria,
    producto,
    valor_total,
    RANK() OVER (
        PARTITION BY categoria
        ORDER BY valor_total DESC
    ) AS ranking
FROM ingresos_producto
ORDER BY 
    categoria,
    ranking
;

-- 6. ¿Por qué canal de marketing llegan los clientes que más gastan? 

SELECT
    c.canal,
    ROUND(SUM(d.cantidad * d.precio_unitario), 2) AS ingreso_total
FROM clientes c
INNER JOIN pedidos p
    ON c.id_cliente = p.id_cliente
INNER JOIN detalle_pedidos d
    ON p.id_pedido = d.id_pedido
GROUP BY
    c.canal
ORDER BY
    ingreso_total DESC
;
