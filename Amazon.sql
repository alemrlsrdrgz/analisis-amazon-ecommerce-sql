-- ============================================================
-- amazon.db · Caso de Estudio · Done With You · Portafolio SQL
-- Base de datos de práctica para el primer proyecto de portafolio.
-- 5 tablas. SQLite
-- ------------------------------------------------------------

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS detalle_pedidos;
DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS categorias;

-- 1) CATEGORIAS
CREATE TABLE categorias (
    id_categoria INTEGER PRIMARY KEY,
    nombre       TEXT NOT NULL
);

-- 2) PRODUCTOS  (precio para promedios y ranking; FK a categoria)
CREATE TABLE productos (
    id_producto       INTEGER PRIMARY KEY,
    nombre            TEXT NOT NULL,
    id_categoria      INTEGER NOT NULL,
    precio            REAL NOT NULL,
    fecha_lanzamiento TEXT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

-- 3) CLIENTES  (canal = cómo se adquirió al cliente -> sabor marketing)
CREATE TABLE clientes (
    id_cliente     INTEGER PRIMARY KEY,
    nombre         TEXT NOT NULL,
    ciudad         TEXT,
    pais           TEXT,
    canal          TEXT,            -- Búsqueda / Redes Sociales / Email / Referido
    fecha_registro TEXT
);

-- 4) PEDIDOS  (conecta clientes; fecha para rangos/tendencia)
CREATE TABLE pedidos (
    id_pedido  INTEGER PRIMARY KEY,
    id_cliente INTEGER NOT NULL,
    fecha      TEXT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- 5) DETALLE_PEDIDOS  (TABLA PUENTE entre pedidos y productos; el dinero)
CREATE TABLE detalle_pedidos (
    id_detalle      INTEGER PRIMARY KEY,
    id_pedido       INTEGER NOT NULL,
    id_producto     INTEGER NOT NULL,
    cantidad        INTEGER NOT NULL,
    precio_unitario REAL NOT NULL,
    FOREIGN KEY (id_pedido)   REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

-- ===================== DATOS =====================

INSERT INTO categorias (id_categoria, nombre) VALUES
(1,'Electrónica'),
(2,'Hogar y Cocina'),
(3,'Libros'),
(4,'Moda'),
(5,'Deportes');

INSERT INTO productos (id_producto, nombre, id_categoria, precio, fecha_lanzamiento) VALUES
-- Electrónica
(1,'Echo Dot 5',1,59.99,'2023-10-01'),
(2,'Fire TV Stick 4K',1,49.99,'2023-09-15'),
(3,'Kindle Paperwhite',1,149.99,'2021-10-01'),
(4,'Auriculares Bluetooth',1,49.99,'2022-05-01'),   -- mismo precio que Fire TV
(5,'Cámara de Seguridad',1,89.99,'2022-03-01'),
(6,'Tablet Fire HD 10',1,149.99,'2023-04-01'),       -- mismo precio que Kindle
-- Hogar y Cocina
(7,'Freidora de Aire',2,119.99,'2022-01-01'),
(8,'Cafetera Programable',2,79.99,'2021-06-01'),
(9,'Juego de Sábanas',2,39.99,'2020-01-01'),
(10,'Robot Aspirador',2,199.99,'2023-02-01'),
-- Libros
(11,'Hábitos Atómicos',3,18.99,'2019-01-01'),
(12,'El Poder del Ahora',3,14.99,'2018-01-01'),
(13,'Padre Rico Padre Pobre',3,16.99,'2017-01-01'),
-- Moda
(14,'Zapatillas Running',4,64.99,'2022-01-01'),
(15,'Chaqueta Impermeable',4,89.99,'2021-09-01'),
(16,'Mochila Antirrobo',4,45.99,'2020-06-01'),
(17,'Reloj Deportivo',4,54.99,'2022-08-01'),
-- Deportes
(18,'Esterilla de Yoga',5,29.99,'2021-01-01'),
(19,'Mancuernas Ajustables',5,109.99,'2022-02-01'),
(20,'Bicicleta Estática',5,249.99,'2023-01-01');

INSERT INTO clientes (id_cliente, nombre, ciudad, pais, canal, fecha_registro) VALUES
(1,'Laura Gómez','Bogotá','Colombia','Búsqueda','2024-01-10'),
(2,'Carlos Ruiz','Medellín','Colombia','Redes Sociales','2024-01-22'),
(3,'Ana Torres','Ciudad de México','México','Búsqueda','2024-02-05'),
(4,'Diego Fernández','Buenos Aires','Argentina','Email','2024-02-15'),
(5,'Sofía Castro','Lima','Perú','Referido','2024-02-28'),
(6,'Mateo Rojas','Santiago','Chile','Redes Sociales','2024-03-08'),
(7,'Valentina Díaz','Madrid','España','Búsqueda','2024-03-20'),
(8,'Andrés Morales','Guadalajara','México','Email','2024-04-02'),
(9,'Camila Vargas','Miami','Estados Unidos','Búsqueda','2024-04-18'),
(10,'Sebastián Núñez','Córdoba','Argentina','Redes Sociales','2024-05-01'),
(11,'Isabella Ramírez','Cali','Colombia','Email','2024-05-15'),       -- sin pedidos
(12,'Tomás Herrera','Quito','Ecuador','Referido','2024-05-28'),       -- sin pedidos
(13,'Mariana Silva','São Paulo','Brasil','Búsqueda','2024-06-02'),    -- sin pedidos
(14,'Javier Castro','Monterrey','México','Redes Sociales','2024-06-10');

INSERT INTO pedidos (id_pedido, id_cliente, fecha) VALUES
(1,1,'2024-03-02'),
(2,2,'2024-03-10'),
(3,3,'2024-03-15'),
(4,1,'2024-03-22'),
(5,4,'2024-03-28'),
(6,5,'2024-04-04'),
(7,2,'2024-04-10'),
(8,6,'2024-04-15'),
(9,3,'2024-04-20'),
(10,7,'2024-04-25'),
(11,1,'2024-05-01'),
(12,8,'2024-05-06'),
(13,9,'2024-05-11'),
(14,4,'2024-05-16'),
(15,10,'2024-05-20'),
(16,2,'2024-05-24'),
(17,5,'2024-05-28'),
(18,3,'2024-06-01'),
(19,1,'2024-06-05'),
(20,14,'2024-06-09'),
(21,6,'2024-06-12'),
(22,9,'2024-06-15'),
(23,7,'2024-06-18'),
(24,10,'2024-06-22');

INSERT INTO detalle_pedidos (id_detalle, id_pedido, id_producto, cantidad, precio_unitario) VALUES
(1,1,1,1,59.99),(2,1,11,2,18.99),
(3,2,2,1,49.99),(4,2,4,1,49.99),
(5,3,10,1,199.99),
(6,4,3,1,149.99),(7,4,12,1,14.99),
(8,5,7,1,119.99),
(9,6,14,1,64.99),(10,6,18,1,29.99),
(11,7,1,1,59.99),(12,7,2,1,49.99),
(13,8,8,1,79.99),
(14,9,4,2,49.99),
(15,10,20,1,249.99),
(16,11,10,1,199.99),(17,11,9,1,39.99),
(18,12,13,1,16.99),(19,12,11,1,18.99),
(20,13,15,1,89.99),(21,13,16,1,45.99),
(22,14,1,1,59.99),
(23,15,19,1,109.99),
(24,16,3,1,149.99),
(25,17,2,2,49.99),
(26,18,17,1,54.99),(27,18,14,1,64.99),
(28,19,6,1,149.99),(29,19,5,1,89.99),
(30,20,1,1,59.99),(31,20,4,1,49.99),
(32,21,18,2,29.99),
(33,22,7,1,119.99),
(34,23,5,1,89.99),
(35,24,20,1,249.99);
