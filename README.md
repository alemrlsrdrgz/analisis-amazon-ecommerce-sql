# Análisis de Marketing para Amazon Ecommerce con SQL

## 1. El caso

Este proyecto responde la siguiente pregunta de negocio: 
**¿En qué debería invertir Amazon su presupuesto de marketing del próximo trimestre?**

Para responderla, se analizó una base de datos de ecommerce usando SQL, con el objetivo de identificar qué categorías, productos y canales de adquisición generan mayor valor para el negocio. El análisis considera las ventas por categoría, los clientes registrados que no han comprado, los productos premium, los clientes con mayor gasto, los productos estrella por categoría y los canales de marketing con mayor ingreso.

El análisis fue realizado sobre una base de datos SQLite compuesta por cinco tablas: `categorias`, `productos`, `clientes`, `pedidos` y `detalle_pedidos`. A partir de los resultados, se propone una recomendación de inversión de marketing basada en datos.


---

## 2. Hallazgos

**2.1 Categorías con mayor ingreso**

La categoría que más ingresos genera es **Electrónica**, con $1,269.83, equivalente aproximadamente al 40.4% del ingreso total. Le siguen Hogar y Cocina, con $759.94, y Deportes, con $699.94. Esto muestra que el ingreso no está distribuido de manera uniforme entre todas las categorías, sino que una parte importante de las ventas se concentra en productos tecnológicos. En contraste, categorías como Moda y Libros tienen una participación menor dentro del total analizado.

**2.2 Clientes registrados que nunca compraron**

Se identificaron tres clientes registrados que aún no han realizado ninguna compra: Mariana Silva, Isabella Ramírez y Tomás Herrera. Estos clientes llegaron por los canales de Búsqueda, Email y Referido, lo que indica que la falta de conversión no está concentrada en una sola fuente de adquisición. Aunque estos usuarios mostraron interés inicial al registrarse, no avanzaron hasta completar una compra, por lo que representan un grupo relevante para entender posibles puntos de abandono en el proceso comercial.

**2.3 Productos premium del catálogo**

Los productos premium, definidos como aquellos con precio superior al promedio de la tienda, se concentran principalmente en Deportes, Hogar y Cocina y Electrónica. Entre ellos se encuentran productos como Bicicleta Estática, Robot Aspirador, Kindle Paperwhite y Tablet Fire HD 10. Sin embargo, el hecho de que un producto tenga un precio alto no significa automáticamente que sea el más importante para el negocio. Para entender su relevancia real, también es necesario analizar si ese producto genera ingresos significativos a través de las ventas.

**2.4 Clientes que más gastan**

Entre los cinco clientes con mayor gasto, tres llegaron por el canal de Búsqueda y dos por Redes Sociales. Esto muestra que **Búsqueda** tiene una presencia importante dentro de los clientes de mayor valor. Además, Redes Sociales también aparece como un canal relevante, aunque con menor participación dentro del grupo de clientes que más gastan.

**2.5 Productos estrella por categoría**

Al analizar el ranking de productos por ingreso dentro de cada categoría, se observan dos comportamientos principales. En Electrónica, hay varios productos con buen desempeño, como Kindle Paperwhite, Echo Dot 5, Auriculares Bluetooth y Fire TV Stick 4K, lo que indica que esta categoría no depende de un solo producto estrella. En cambio, en otras categorías el ingreso parece estar más concentrado en uno o dos productos principales, como Bicicleta Estática en Deportes y Robot Aspirador en Hogar y Cocina. También se observa un empate en Electrónica entre Auriculares Bluetooth y Fire TV Stick 4K, ambos con $199.96 de ingreso.

**2.6 Canales de marketing con mayor ingreso**

El canal con mayor ingreso total es Búsqueda, con $1,758.81. También es el canal con mayor ingreso promedio por cliente, con aproximadamente $439.70. En segundo lugar aparece Redes Sociales, con $969.88 de ingreso total. Esto indica que los clientes provenientes de Búsqueda tienen un comportamiento de compra más fuerte, tanto por el ingreso total que generan como por el gasto promedio por cliente. Por su parte, Email y Referido presentan ingresos más bajos en comparación con los demás canales.


---

## 3. Recomendación

La recomendación no es invertir simplemente donde hoy se vende más, sino priorizar la combinación que muestra señales más consistentes de demanda, intención de compra y clientes de alto valor. Con la información disponible, la combinación más sólida es Búsqueda + Electrónica.

Electrónica es la categoría que más ingresos genera y cuenta con varios productos estrella, lo que permite sostener una campaña sin depender de un único producto. Al mismo tiempo, **Búsqueda** es el canal con mayor ingreso total, mayor ingreso promedio por cliente y mayor presencia entre los clientes que más gastan. Sin embargo, el análisis no incluye información sobre costos de adquisición, márgenes, tasas de conversión o retorno sobre inversión. Por eso, no sería prudente asignar el 100% del presupuesto a una sola apuesta. La distribución sugerida del presupuesto sería la siguiente:

| Estrategia                         | Presupuesto sugerido | Rol dentro de la estrategia                                                                                    |
| ---------------------------------- | -------------------: | -------------------------------------------------------------------------------------------------------------- |
| Búsqueda + Electrónica             |                  60% | Apuesta principal por ser la combinación con mayor evidencia de demanda, valor de cliente y productos estrella |
| Redes Sociales + productos premium |                  25% | Apuesta secundaria para productos visuales y de alto ticket en Deportes y Hogar y Cocina                       |
| Email de reactivación              |                  10% | Recuperar clientes registrados que aún no han comprado                                                         |
| Referidos / pruebas A/B            |                   5% | Experimentación controlada para validar nuevas oportunidades                                                   |

**En conclusión**, Amazon debería invertir principalmente en Búsqueda + Electrónica durante el próximo trimestre. Esta decisión se basa en tres señales clave: una categoría con alta demanda, un canal que atrae clientes de mayor valor y un conjunto de productos estrella que permite escalar campañas sin depender de un único producto.
