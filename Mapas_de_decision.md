#  Ejercicios de Mapas de Decisión

## ¿Qué es un Mapa de Decisión?

Un **mapa de decisión** es una herramienta visual que representa gráficamente las posibles decisiones, condiciones y resultados en un proceso de toma de decisiones. Se utiliza para analizar situaciones complejas y facilitar la elección de la mejor alternativa basada en criterios específicos.

###  Componentes de un Mapa de Decisión:

- **Decisión**: Punto donde se debe elegir entre diferentes opciones.
- **Condición**: Situación o criterio que afecta la decisión.
- **Resultado**: Consecuencia de una decisión bajo ciertas condiciones.

###  Ejemplo:

**Enunciado**: Si el usuario ingresa su correo electrónico y contraseña correctamente, se inicia sesión.

- **Condición**: El usuario ingresa su correo electrónico y contraseña correctamente.
- **Decisión**: Validar las credenciales.
- **Resultado**: Iniciar sesión.

---

## Instrucciones:

Lee cuidadosamente cada uno de los siguientes enunciados. Para cada uno:

1. Identifica las **condiciones** que se evalúan.
2. Determina las **decisiones** que deben tomarse.
3. Establece los posibles **resultados**.
4. Representa el caso utilizando un **mapa de decisión** (puedes usar tablas o diagramas).

---

## Enunciados:

1. **Inicio de Sesión**: Si el usuario ingresa su correo electrónico y contraseña correctamente, se inicia sesión.
2. **Control de comentarios ofensivos**: Una red social quiere automatizar el sistema de moderación de comentarios:
Reglas de moderación:
- Si un comentario contiene insultos y lenguaje discriminatorio, debe ser eliminado automáticamente.
- Si contiene solo insultos o solo lenguaje discriminatorio, debe enviarse a revisión manual.
- Si no contiene ninguno, se publica automáticamente.
3. **Sugerencia de contenido**: Una plataforma de streaming sugiere contenido basado en el tipo de usuario y el día de la semana. 
   Reglas de sugerencia:
- Si es fin de semana y el usuario es premium, se sugiere contenido exclusivo.
- Si es fin de semana o el usuario es premium (pero no ambos), se sugiere contenido popular.
- Si no es ninguna de las dos condiciones, se sugiere contenido gratuito.
4. **Aprobación de crédito**: Una entidad financiera desea automatizar la decisión de aprobar o rechazar una solicitud de préstamo a través de un sistema de evaluación lógica. Para ello, ha definido los siguientes criterios que deben cumplirse secuencialmente: 
   - El solicitante debe tener 21 años o más. 
   - Sus ingresos mensuales deben ser iguales o superiores a $1.500.000. 
   - Debe tener un historial crediticio positivo.
 Si en cualquiera de estos pasos el solicitante no cumple con el criterio, el sistema debe rechazar la solicitud automáticamente. Solo si cumple con los tres criterios, el sistema debe aprobar el crédito.
5. **Descuento tienda en línea**: Una tienda en línea desea automatizar el sistema de descuentos al momento de la compra. El sistema debe aplicar descuentos con base en las siguientes condiciones:
 Reglas del descuento: 
- Si el cliente realiza una compra de más de $200.000 y además es cliente frecuente, se le otorga un 20% de descuento.
- Si el cliente realiza una compra de más de $200.000 o es cliente frecuente (pero no ambos), se le otorga un 10% de descuento.
- En cualquier otro caso, no se aplica ningún descuento.

---
#  Ejercicios Avanzados: Mapas de Decisión en Contextos Informáticos y Empresariales

Estos ejercicios requieren una interpretación lógica más profunda. Involucran múltiples condiciones, operaciones compuestas, rangos y estructuras que se asemejan más a la lógica usada en programación real.

---

##  1. Clasificación de tickets en una mesa de ayuda técnica

Una empresa desea clasificar automáticamente los tickets que llegan a su sistema de soporte:

### Reglas:
- Si el ticket es de prioridad alta, el cliente es VIP, **y no ha sido respondido en menos de 1 hora**, se marca como **crítico**.
- Si el ticket es de prioridad alta **o** el cliente es VIP, pero sí fue respondido a tiempo, se clasifica como **urgente**.
- Si es de prioridad media o baja, pero el cliente ha reportado **más de 3 tickets en el mes**, se marca como **seguimiento especial**.
- Cualquier otro caso es **ticket normal**.

### Variables:
- `prioridad`: alta, media, baja
- `clienteVIP`: verdadero/falso
- `tiempoRespuestaHoras`: número
- `ticketsEsteMes`: número entero

---

##  2. Automatización de pedidos inteligentes para distribuidores

Un sistema de reabastecimiento evalúa pedidos en una red de distribuidores.

### Reglas:
- Si el inventario está por debajo del 20% del mínimo esperado **y** las ventas han aumentado al menos un 30% respecto al mes pasado **y** es fin de mes, se genera un **pedido anticipado de emergencia**.
- Si al menos dos de esas condiciones se cumplen, se genera un **pedido urgente normal**.
- Si solo una se cumple, se genera un **pedido programado**.
- Si no se cumple ninguna, **no se realiza ningún pedido**.

### Variables:
- `nivelInventario`: porcentaje
- `variacionVentas`: porcentaje (+ o -)
- `esFinDeMes`: verdadero/falso

---

## 3. Validación de transacciones bancarias sospechosas

Un banco quiere automatizar el análisis de seguridad de sus transacciones.

### Reglas:
- Si el monto es mayor a $10.000.000 **y** se realiza desde una ubicación no habitual **y** fuera del horario laboral (antes de 6am o después de 9pm), se **bloquea automáticamente**.
- Si se cumplen dos condiciones, se **solicita verificación por llamada al cliente**.
- Si solo una condición es verdadera, se **envía alerta por mensaje**.
- Si no se cumple ninguna, se **aprueba normalmente**.

### Variables:
- `monto`: valor numérico
- `ubicacionNoHabitual`: verdadero/falso
- `hora`: número entero (24h)

---

##  4. Evaluación del desempeño anual de empleados

Un sistema de RRHH determina la clasificación final del empleado según múltiples factores.

### Reglas:
- Si tiene promedio de evaluaciones superior a 4.5, **no tiene sanciones registradas**, **y participó en al menos 2 capacitaciones**, se clasifica como **destacado**.
- Si tiene promedio entre 4.0 y 4.5 y cumple al menos una de las otras dos condiciones, se clasifica como **satisfactorio**.
- Si tiene promedio entre 3.0 y 4.0, independientemente de las otras condiciones, se clasifica como **en observación**.
- Si tiene promedio menor a 3.0 **o** tiene sanciones, se clasifica como **desempeño deficiente**.

### Variables:
- `promedioEvaluacion`: número decimal (0.0 a 5.0)
- `sanciones`: verdadero/falso
- `capacitaciones`: número entero

---

##  5. Sistema de sugerencias automatizadas de marketing

Una plataforma digital selecciona automáticamente el tipo de campaña para cada usuario según múltiples criterios.

### Reglas:
- Si el usuario ha comprado en los últimos 7 días **y** ha visitado la tienda al menos 3 veces esta semana **y** su historial indica interés en nuevos productos, se lanza una **campaña de fidelización avanzada**.
- Si ha comprado recientemente **y** al menos una de las otras condiciones es verdadera, se lanza una **campaña de recomendación personalizada**.
- Si solo ha visitado muchas veces pero no ha comprado, se lanza una **campaña de remarketing**.
- Si no ha interactuado en absoluto, se lanza una **campaña de reactivación**.

### Variables:
- `diasDesdeUltimaCompra`: número entero
- `visitasSemanales`: número entero
- `interesNovedades`: verdadero/falso

---

**Desafío adicional**: Para cada ejercicio:
1. Haz el mapa de decisión.
2. Describe verbalmente el razonamiento detrás de cada camino.
3. Transforma la lógica en pseudocódigo o código real en tu lenguaje de preferencia.



¡Explora, analiza y toma decisiones informadas!
