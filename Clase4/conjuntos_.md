# Fundamentos de conjuntos y su aplicación en SQL

## 1. ¿Qué es un conjunto?

Un conjunto es una colección bien definida de elementos distintos. En matemáticas, los conjuntos se representan usando llaves `{}` y sus elementos pueden ser cualquier tipo de objeto. Por ejemplo, el conjunto de estudiantes matriculados se puede representar como:

```
A = {Ana, Luis, Marta}
```

Y el conjunto de estudiantes que entregaron la tarea se puede representar como:

```
B = {Luis, Marta, Pedro}
```

## 2. Conceptos clave de conjuntos

| Concepto              | Símbolo | Explicación                                                                 |
|-----------------------|---------|------------------------------------------------------------------------------|
| **Unión**             | A ∪ B   | Todos los elementos que están en A, en B o en ambos.                        |
| **Intersección**      | A ∩ B   | Solo los elementos que están tanto en A como en B.                          |
| **Diferencia**        | A - B   | Elementos que están en A pero no en B.                                      |
| **Diferencia simétrica** | A △ B   | Elementos que están en A o en B, pero no en ambos.                         |
| **Complemento**       | Aᶜ      | Todos los elementos que no están en A, respecto a un universo definido.    |

## 3. Aplicación práctica con SQL

| Descripción del grupo                                                                  | Relación de conjuntos | SQL correspondiente |
|-----------------------------------------------------------------------------------------|------------------------|---------------------|
| Estudiantes que están matriculados y entregaron la tarea.                              | A ∩ B                 | `INNER JOIN`        |
| Estudiantes que están matriculados, o entregaron la tarea, o ambas cosas.              | A ∪ B                 | `FULL JOIN`         |
| Estudiantes que solo están matriculados o solo entregaron la tarea, pero no ambos.     | A △ B                 | `FULL JOIN` + `WHERE A.key IS NULL OR B.key IS NULL` |
| Todos los estudiantes matriculados, hayan o no entregado la tarea.                     | A                     | `LEFT JOIN`         |
| Estudiantes que están matriculados pero no entregaron la tarea.                        | A - B                 | `LEFT JOIN` + `WHERE B.key IS NULL` |
| Estudiantes que entregaron la tarea, estén o no matriculados.                          | B                     | `RIGHT JOIN`        |
| Estudiantes que entregaron la tarea pero no están matriculados.                        | B - A                 | `RIGHT JOIN` + `WHERE A.key IS NULL` |

## 4. Actividad para practicar

Relaciona cada uno de los siguientes grupos con un concepto de conjuntos:


### Ejemplo 1: Clientes y promociones
- **Conjunto A**: Clientes que realizaron una compra.
- **Conjunto B**: Clientes que se inscribieron al boletín promocional.

1. Clientes que realizaron una compra y se inscribieron al boletín promocional.  
2. Clientes que realizaron una compra, o se inscribieron al boletín, o ambas cosas.  
3. Clientes que solo compraron o solo se inscribieron al boletín, pero no ambos.  
4. Todos los clientes que realizaron una compra, se hayan o no inscrito al boletín.  
5. Clientes que realizaron una compra pero no se inscribieron al boletín.  
6. Clientes que se inscribieron al boletín, hayan comprado o no.  
7. Clientes que se inscribieron al boletín pero no realizaron ninguna compra.

### Ejemplo 2: Usuarios y plataforma de streaming
- **Conjunto A**: Usuarios que tienen suscripción activa a la plataforma.
- **Conjunto B**: Usuarios que han calificado o dejado reseñas de contenido.

1. Usuarios suscritos que calificaron contenido.  
2. Usuarios suscritos o que calificaron contenido (o ambos).  
3. Usuarios que solo están suscritos o solo calificaron, pero no ambos.  
4. Todos los usuarios con suscripción activa (califiquen o no).  
5. Usuarios con suscripción activa que no han calificado contenido.  
6. Usuarios que calificaron contenido (tengan o no suscripción).  
7. Usuarios que calificaron sin tener suscripción activa.


## Ejemplo 3: Empleados y capacitaciones
**Conjunto A**: Empleados que asistieron al curso de seguridad laboral.  
**Conjunto B**: Empleados que aprobaron el examen de seguridad.

- Empleados que asistieron al curso y aprobaron el examen.
- Empleados que asistieron al curso o aprobaron el examen, o ambas cosas.
- Empleados que solo asistieron al curso o solo aprobaron el examen, pero no ambos.
- Todos los empleados que asistieron al curso (hayan aprobado o no).
- Empleados que asistieron al curso pero no aprobaron el examen.
- Empleados que aprobaron el examen (hayan asistido al curso o no).
- Empleados que aprobaron sin haber asistido al curso.

---

## Ejemplo 4: Productos y devoluciones
**Conjunto A**: Productos vendidos en el último mes.  
**Conjunto B**: Productos que fueron devueltos por fallas.

- Productos que fueron vendidos y luego devueltos.
- Productos que fueron vendidos, o devueltos, o ambas cosas.
- Productos que solo fueron vendidos o solo fueron devueltos, pero no ambos.
- Todos los productos vendidos (independientemente de si fueron devueltos o no).
- Productos vendidos que no fueron devueltos.
- Productos devueltos (hayan sido vendidos el último mes o no).
- Productos devueltos que no fueron vendidos este último mes.

## Ejemplo 5: Inventario, ventas y productos en promoción

**Conjunto A**: Productos que están actualmente en inventario.  
**Conjunto B**: Productos que han sido vendidos este mes.  
**Conjunto C**: Productos que están en promoción activa.

- Productos que están en inventario, se han vendido este mes y están en promoción.
- Productos que están en al menos uno de los tres conjuntos (inventario, ventas o promoción).
- Productos que están en inventario y en promoción, pero no se han vendido.
- Productos vendidos este mes que no están ni en inventario ni en promoción.
- Productos que están en promoción pero no se han vendido ni están en inventario.
- Productos que están tanto en inventario como en ventas, pero no en promoción.
- Productos que no están en ninguno de los tres conjuntos (es decir, productos antiguos, no disponibles ni en promoción).

## Ejemplo 6: Clientes y su actividad en la tienda en línea
Conjunto A: Clientes que realizaron una compra este mes.  
Conjunto B: Clientes que están registrados en el programa de fidelización.  
Conjunto C: Clientes que dejaron una reseña de producto.  

- Clientes que compraron, están en el programa de fidelización y dejaron reseña.  
- Clientes que compraron, o están en el programa de fidelización, o dejaron reseña, o hicieron varias de estas acciones.  
- Clientes que compraron y dejaron reseña, pero no están en el programa de fidelización.  
- Clientes que dejaron reseña pero no compraron ni están en el programa de fidelización.  
- Clientes que están en el programa de fidelización y además compraron, pero no dejaron reseña.  
- Clientes que no realizaron ninguna acción (no compraron, no están en el programa de fidelización ni dejaron reseña).  
- Clientes que realizaron exactamente dos de las tres acciones (compra, fidelización o reseña).  

---

## Ejemplo 7: Proveedores y entregas
Conjunto A: Proveedores que entregaron productos este mes.  
Conjunto B: Proveedores que tienen contrato activo.  
Conjunto C: Proveedores que ofrecen descuentos especiales.  

- Proveedores que entregaron productos, tienen contrato activo y ofrecen descuentos.  
- Proveedores que entregaron productos, o tienen contrato activo, o dan descuentos, o varias de estas cosas.  
- Proveedores que entregaron productos y tienen contrato activo, pero no ofrecen descuentos.  
- Proveedores que entregaron productos sin contrato activo ni descuentos.  
- Proveedores que tienen contrato activo y ofrecen descuentos, pero no han entregado productos.  
- Proveedores que no entregaron productos, no tienen contrato activo ni ofrecen descuentos.  
- Proveedores que cumplen exactamente dos de las tres condiciones (entregar, contrato activo, descuentos).  

---

## Ejemplo 8: Empleados y desempeño
Conjunto A: Empleados que cumplieron con las metas de ventas.  
Conjunto B: Empleados que recibieron capacitación este trimestre.  
Conjunto C: Empleados que fueron ascendidos.  

- Empleados que cumplieron metas, recibieron capacitación y fueron ascendidos.  
- Empleados que cumplieron metas, o recibieron capacitación, o fueron ascendidos, o varias de estas.  
- Empleados que cumplieron metas y fueron ascendidos, pero no recibieron capacitación.  
- Empleados que recibieron capacitación sin cumplir metas ni haber sido ascendidos.  
- Empleados que cumplieron metas y recibieron capacitación, pero no fueron ascendidos.  
- Empleados que no cumplieron metas, no recibieron capacitación ni fueron ascendidos.  
- Empleados que cumplieron exactamente dos de las tres condiciones (metas, capacitación o ascenso).  

---

## Ejemplo 9: Productos y facturación
Conjunto A: Productos que se vendieron este mes.  
Conjunto B: Productos que generaron facturas electrónicas.  
Conjunto C: Productos que tuvieron devoluciones.  

- Productos que se vendieron, generaron factura electrónica y tuvieron devoluciones.  
- Productos que se vendieron, o generaron factura, o tuvieron devoluciones, o varias de estas cosas.  
- Productos que se vendieron y generaron factura, pero no tuvieron devoluciones.  
- Productos que tuvieron devoluciones sin haber sido vendidos ni facturados.  
- Productos que se vendieron y tuvieron devoluciones, pero no fueron facturados electrónicamente.  
- Productos que no se vendieron, no fueron facturados ni tuvieron devoluciones.  
- Productos que cumplen exactamente dos de las tres condiciones (venta, factura o devolución).  

---

## Ejemplo 10: Clientes y campañas de marketing
Conjunto A: Clientes que recibieron un cupón digital.  
Conjunto B: Clientes que hicieron clic en una campaña de correo.  
Conjunto C: Clientes que asistieron a un evento promocional.  

- Clientes que recibieron cupón, hicieron clic en el correo y asistieron al evento.  
- Clientes que recibieron cupón, o hicieron clic en el correo, o asistieron al evento, o varias de estas cosas.  
- Clientes que recibieron cupón y asistieron al evento, pero no hicieron clic en el correo.  
- Clientes que asistieron al evento sin haber recibido cupón ni haber hecho clic en el correo.  
- Clientes que recibieron cupón y además hicieron clic en el correo, pero no asistieron al evento.  
- Clientes que no recibieron cupón, no hicieron clic en el correo ni asistieron al evento.  
- Clientes que realizaron exactamente dos de las tres acciones (cupón, clic o evento).  
