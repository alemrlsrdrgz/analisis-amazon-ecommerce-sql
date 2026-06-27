# Análisis de Marketing para Amazon Ecommerce con SQL

## Pregunta de negocio

**¿En qué debería invertir Amazon su presupuesto de marketing del próximo trimestre?**

Este proyecto analiza una base de datos de ecommerce usando SQL con el objetivo de identificar qué categorías, productos y canales de adquisición generan mayor valor para el negocio. A partir de los resultados, se propone una recomendación de inversión de marketing basada en datos.

## Contexto del análisis

El equipo de liderazgo necesita decidir dónde invertir el presupuesto de marketing del próximo trimestre. Para responder esta pregunta, se analizaron las ventas por categoría, los clientes sin compra, los productos premium, los clientes que más gastan, los productos estrella por categoría y los canales de adquisición con mayor ingreso.

El análisis fue realizado con SQL sobre una base de datos SQLite compuesta por cinco tablas:

* `categorias`
* `productos`
* `clientes`
* `pedidos`
* `detalle_pedidos`

---

## Hallazgos

1. ¿Qué categorías le dejan más dinero a Amazon?

| Categoría      | Ingreso total |
| -------------- | ------------: |
| Electrónica    |     $1,269.83 |
| Hogar y Cocina |       $759.94 |
| Deportes       |       $699.94 |
| Moda           |       $320.95 |
| Libros         |        $88.95 |

**Análisis:**
La categoría más fuerte del negocio es **Electrónica**, con un ingreso de $1,269.83, lo que equivale al **40.4%** de los ingresos totales.
Le siguen Hogar y Cocina con una participación del 24.2% y Deportes con 22.3%.

2. ¿Qué clientes se registraron pero nunca compraron?

| Cliente          | Canal    |
| ---------------- | -------- |
| Mariana Silva    | Búsqueda |
| Isabella Ramírez | Email    |
| Tomás Herrera    | Referido |

**Análisis:**
Hay clientes registrados que no han realizado ninguna compra provenientes de 3 canales por igual: Búsqueda, Email y Referido.

3. ¿Cuáles son los productos premium del catálogo? Aquellos cuyo precio está por encima del precio promedio de la tienda.

| Producto              | Categoría      |  Precio |
| --------------------- | -------------- | ------: |
| Bicicleta Estática    | Deportes       | $249.99 |
| Robot Aspirador       | Hogar y Cocina | $199.99 |
| Kindle Paperwhite     | Electrónica    | $149.99 |
| Tablet Fire HD 10     | Electrónica    | $149.99 |
| Freidora de Aire      | Hogar y Cocina | $119.99 |
| Mancuernas Ajustables | Deportes       | $109.99 |
| Cámara de Seguridad   | Electrónica    |  $89.99 |
| Chaqueta Impermeable  | Moda           |  $89.99 |

**Análisis:**
Los productos premium se concentran principalmente en **Electrónica, Deportes y Hogar y Cocina**.

4. ¿Quiénes son los 5 primeros clientes que más gastan y de qué canal provienen?

| Cliente         | Canal          | Gasto total |
| --------------- | -------------- | ----------: |
| Laura Gómez     | Búsqueda       |     $742.91 |
| Ana Torres      | Búsqueda       |     $419.95 |
| Sebastián Núñez | Redes Sociales |     $359.98 |
| Carlos Ruiz     | Redes Sociales |     $359.95 |
| Valentina Díaz  | Búsqueda       |     $339.98 |

**Análisis:**
Tres de los cinco clientes que más gastan llegaron por el canal de **Búsqueda**. 

5. Dentro de cada categoría, ¿cuáles son los productos estrella?

El ranking de productos por ingreso muestra que cada categoría tiene una dinámica diferente.

En **Electrónica**, los principales productos son:

| Producto              | Ingreso total | Ranking |
| --------------------- | ------------: | ------: |
| Kindle Paperwhite     |       $299.98 |       1 |
| Echo Dot 5            |       $239.96 |       2 |
| Auriculares Bluetooth |       $199.96 |       3 |
| Fire TV Stick 4K      |       $199.96 |       3 |
| Cámara de Seguridad   |       $179.98 |       5 |

**Hallazgo:**
Electrónica no depende de un solo producto. Tiene varios productos con buen desempeño, lo que permite pensar en campañas más amplias por categoría o en paquetes de productos.

También se observa un empate entre **Auriculares Bluetooth** y **Fire TV Stick 4K**, ambos con el mismo ingreso total. Al usar `RANK()`, ambos productos ocupan el puesto 3 y el siguiente producto pasa al puesto 5. Esto ocurre porque `RANK()` deja un salto después de un empate.

**Interpretación de negocio:**
En Electrónica conviene promocionar varios productos estrella al mismo tiempo. En cambio, en categorías como Deportes y Hogar y Cocina, la estrategia podría enfocarse en productos líderes específicos, como Bicicleta Estática y Robot Aspirador.

---

## 6. ¿Por qué canal de marketing llegan los clientes que más gastan?

El análisis por canal muestra que **Búsqueda** es el canal con mayor ingreso total y mayor ingreso promedio por cliente.

| Canal          | Clientes con compra | Pedidos | Ingreso total | Ingreso por cliente |
| -------------- | ------------------: | ------: | ------------: | ------------------: |
| Búsqueda       |                   4 |      11 |     $1,758.81 |             $439.70 |
| Redes Sociales |                   4 |       8 |       $969.88 |             $242.47 |
| Email          |                   2 |       3 |       $215.96 |             $107.98 |
| Referido       |                   1 |       2 |       $194.96 |             $194.96 |

**Hallazgo:**
Búsqueda es el canal más rentable en términos de ingreso total y gasto promedio por cliente.

**Interpretación de negocio:**
Este canal parece atraer usuarios con mayor intención de compra. Por eso, debería ser la prioridad para la inversión de marketing del próximo trimestre.

---

# Recomendación final: los 3 actos

## Acto 1: Análisis

Los datos muestran tres patrones principales:

1. **Electrónica es la categoría que más ingresos genera**, con aproximadamente el 40.4% del total.
2. **Búsqueda es el canal de adquisición más fuerte**, tanto en ingreso total como en ingreso promedio por cliente.
3. **Los productos estrella de Electrónica no se concentran en un solo producto**, sino en varios productos con buen desempeño.

Esto indica que la oportunidad más fuerte está en combinar el canal con mejor desempeño con la categoría más rentable.

---

## Acto 2: Criterio

Para decidir dónde invertir el presupuesto, se usaron tres criterios:

1. **Ingreso actual:** invertir donde ya existe demanda comprobada.
2. **Calidad del cliente:** priorizar los canales que atraen clientes con mayor gasto.
3. **Potencial de campaña:** elegir categorías y productos que permitan escalar ventas.

Bajo estos criterios, la combinación más sólida es:

**Búsqueda + Electrónica**

Búsqueda trae clientes con mayor intención de compra y Electrónica es la categoría que más dinero genera.

---

## Acto 3: Decisión

La recomendación es invertir principalmente en **campañas de Búsqueda enfocadas en productos de Electrónica**, especialmente en productos estrella como:

* Kindle Paperwhite
* Echo Dot 5
* Auriculares Bluetooth
* Fire TV Stick 4K
* Cámara de Seguridad

Como segunda prioridad, se recomienda invertir en **Redes Sociales para productos premium y visuales**, especialmente en categorías como Deportes y Hogar y Cocina, donde destacan productos como Bicicleta Estática y Robot Aspirador.

Finalmente, se recomienda reservar una parte menor del presupuesto para **campañas de reactivación por Email**, dirigidas a clientes registrados que aún no han comprado.

---

## Distribución sugerida del presupuesto

| Estrategia                         | Porcentaje sugerido | Justificación                                                         |
| ---------------------------------- | ------------------: | --------------------------------------------------------------------- |
| Búsqueda + Electrónica             |                 60% | Mayor ingreso total, mejor ingreso por cliente y categoría más fuerte |
| Redes Sociales + productos premium |                 25% | Segundo canal más importante y buen potencial para productos visuales |
| Email de reactivación              |                 10% | Bajo costo para convertir clientes registrados sin compra             |
| Referidos / pruebas A/B            |                  5% | Canal pequeño, útil para experimentos controlados                     |

---

# Conclusión

Amazon debería invertir el presupuesto de marketing del próximo trimestre principalmente en **Búsqueda**, enfocado en productos de **Electrónica**.

La razón es que esta combinación une el canal que trae los clientes que más gastan con la categoría que más ingresos genera. En lugar de repartir el presupuesto de forma uniforme, la mejor decisión es invertir donde los datos ya muestran intención de compra, alto valor de cliente y potencial de crecimiento.

**Decisión final:**
Invertir en **Búsqueda + Electrónica** como estrategia principal, apoyar con **Redes Sociales para productos premium** y usar **Email para reactivar clientes dormidos**.
