# Análisis de Marketing para Amazon Ecommerce con SQL

## Pregunta de negocio

Este proyecto responde la pregunta de negocio: **¿en qué debería invertir Amazon su presupuesto de marketing del próximo trimestre?**

Para responderla, se analizó una base de datos de ecommerce usando SQL, con el objetivo de identificar qué categorías, productos y canales de adquisición generan mayor valor para el negocio. El análisis considera las ventas por categoría, los clientes registrados que no han comprado, los productos premium, los clientes con mayor gasto, los productos estrella por categoría y los canales de marketing con mayor ingreso.

El análisis fue realizado sobre una base de datos SQLite compuesta por cinco tablas: `categorias`, `productos`, `clientes`, `pedidos` y `detalle_pedidos`. A partir de los resultados, se propone una recomendación de inversión de marketing basada en datos.

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

La categoría que más ingresos genera es **Electrónica**, con $1,269.83, equivalente aproximadamente al 40.4% del ingreso total. Le siguen Hogar y Cocina, con $759.94, y Deportes, con $699.94. Esto muestra que el ingreso no está distribuido de manera uniforme entre todas las categorías, sino que una parte importante de las ventas se concentra en productos tecnológicos. En contraste, categorías como Moda y Libros tienen una participación menor dentro del total analizado.

2. ¿Qué clientes se registraron pero nunca compraron?

| Cliente          | Canal    |
| ---------------- | -------- |
| Mariana Silva    | Búsqueda |
| Isabella Ramírez | Email    |
| Tomás Herrera    | Referido |

Hay tres clientes registrados que aún no han realizado ninguna compra: Mariana Silva, Isabella Ramírez y Tomás Herrera. Estos clientes llegaron por los canales de Búsqueda, Email y Referido, lo que indica que la falta de conversión no está concentrada en una sola fuente de adquisición. Aunque estos usuarios mostraron interés inicial al registrarse, no avanzaron hasta completar una compra, por lo que representan un grupo relevante para entender posibles puntos de abandono en el proceso comercial.

3. ¿Cuáles son los productos premium del catálogo?

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

Los productos premium, definidos como aquellos con precio superior al promedio de la tienda, se concentran principalmente en Deportes, Hogar y Cocina y Electrónica. Entre ellos se encuentran productos como Bicicleta Estática, Robot Aspirador, Kindle Paperwhite y Tablet Fire HD 10. Sin embargo, el hecho de que un producto tenga un precio alto no significa automáticamente que sea el más importante para el negocio. Para entender su relevancia real, también es necesario analizar si ese producto genera ingresos significativos a través de las ventas.

4. ¿Quiénes son los 5 primeros clientes que más gastan y de qué canal provienen? 

| Cliente         | Canal          | Gasto total |
| --------------- | -------------- | ----------: |
| Laura Gómez     | Búsqueda       |     $742.91 |
| Ana Torres      | Búsqueda       |     $419.95 |
| Sebastián Núñez | Redes Sociales |     $359.98 |
| Carlos Ruiz     | Redes Sociales |     $359.95 |
| Valentina Díaz  | Búsqueda       |     $339.98 |

Tres de los cinco primeros clientes que más gastan llegaron por el canal de Búsqueda y dos por Redes Sociales. Esto muestra que, dentro de los clientes de mayor valor, Búsqueda tiene una presencia importante. Además, Redes Sociales también aparece como un canal relevante, aunque con menor participación dentro del grupo de clientes que más gastan.

5. Dentro de cada categoría, ¿cuáles son los productos estrella?

| Categoría | Producto | Ingreso total | Ranking |
|---|---|---:|---:|
| Deportes | Bicicleta Estática | $499.98 | 1 |
| Deportes | Mancuernas Ajustables | $109.99 | 2 |
| Deportes | Esterilla de Yoga | $89.97 | 3 |
| Electrónica | Kindle Paperwhite | $299.98 | 1 |
| Electrónica | Echo Dot 5 | $239.96 | 2 |
| Electrónica | Auriculares Bluetooth | $199.96 | 3 |
| Electrónica | Fire TV Stick 4K | $199.96 | 3 |
| Electrónica | Cámara de Seguridad | $179.98 | 5 |
| Electrónica | Tablet Fire HD 10 | $149.99 | 6 |
| Hogar y Cocina | Robot Aspirador | $399.98 | 1 |
| Hogar y Cocina | Freidora de Aire | $239.98 | 2 |
| Hogar y Cocina | Cafetera Programable | $79.99 | 3 |
| Hogar y Cocina | Juego de Sábanas | $39.99 | 4 |
| Libros | Hábitos Atómicos | $56.97 | 1 |
| Libros | Padre Rico Padre Pobre | $16.99 | 2 |
| Libros | El Poder del Ahora | $14.99 | 3 |
| Moda | Zapatillas Running | $129.98 | 1 |
| Moda | Chaqueta Impermeable | $89.99 | 2 |
| Moda | Reloj Deportivo | $54.99 | 3 |
| Moda | Mochila Antirrobo | $45.99 | 4 |

Al analizar el ranking de productos por ingreso dentro de cada categoría, se observan dos comportamientos principales. En Electrónica, hay varios productos con buen desempeño, como Kindle Paperwhite, Echo Dot 5, Auriculares Bluetooth y Fire TV Stick 4K, lo que indica que esta categoría no depende de un solo producto estrella. En cambio, en otras categorías el ingreso parece estar más concentrado en uno o dos productos principales, como Bicicleta Estática en Deportes y Robot Aspirador en Hogar y Cocina. También se observa un empate en Electrónica entre Auriculares Bluetooth y Fire TV Stick 4K, ambos con $199.96 de ingreso.

6. ¿Por qué canal de marketing llegan los clientes que más gastan?

| Canal          | Clientes con compra | Pedidos | Ingreso total | Ingreso por cliente |
| -------------- | ------------------: | ------: | ------------: | ------------------: |
| Búsqueda       |                   4 |      11 |     $1,758.81 |             $439.70 |
| Redes Sociales |                   4 |       8 |       $969.88 |             $242.47 |
| Email          |                   2 |       3 |       $215.96 |             $107.98 |
| Referido       |                   1 |       2 |       $194.96 |             $194.96 |

El canal con mayor ingreso total es Búsqueda, con $1,758.81. También es el canal con mayor ingreso promedio por cliente. En segundo lugar aparece Redes Sociales, con $969.88 de ingreso total. Esto indica que los clientes provenientes de Búsqueda tienen un comportamiento de compra más fuerte, tanto por el ingreso total que generan como por el gasto promedio por cliente. Por su parte, Email y Referido presentan ingresos más bajos en comparación con los demás canales.

---

# Recomendación:

## Análisis

Los datos muestran tres patrones principales:

1. **Electrónica es la categoría que más ingresos genera**, con aproximadamente el 40.4% del total.
2. **Búsqueda es el canal de adquisición más fuerte**, tanto en ingreso total como en ingreso promedio por cliente.
3. **Los productos estrella de Electrónica no se concentran en un solo producto**, sino en varios productos con buen desempeño.

Esto indica que la oportunidad más fuerte está en combinar el canal con mejor desempeño con la categoría más rentable.

---

## Criterio

Para decidir dónde invertir el presupuesto, se usaron tres criterios:

1. **Ingreso actual:** invertir donde ya existe demanda comprobada.
2. **Calidad del cliente:** priorizar los canales que atraen clientes con mayor gasto.
3. **Potencial de campaña:** elegir categorías y productos que permitan escalar ventas.

Bajo estos criterios, la combinación más sólida es:

**Búsqueda + Electrónica**

Búsqueda trae clientes con mayor intención de compra y Electrónica es la categoría que más dinero genera.

---

## Decisión

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
