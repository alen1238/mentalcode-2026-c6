# Introducción a Diagramas de Flujo y Ciclos

## ¿Qué es un diagrama de flujo?

Un diagrama de flujo es una representación gráfica de un proceso o algoritmo. Utiliza **símbolos estandarizados** para mostrar cada paso del proceso y las decisiones que se toman.

### Principales elementos de un diagrama de flujo

| **Símbolo**            | **Nombre técnico**           | **Función**                                                  |
|------------------------|------------------------------|--------------------------------------------------------------|
| 🔷 Rombos              | **Decisión**                 | Representa una pregunta o condición con dos o más salidas.   |
| ⬛ Rectángulos         | **Proceso o Acción**         | Representa una instrucción o paso del proceso.               |
| 🟠 Elipses             | **Inicio / Fin (Terminal)**  | Indica el punto de inicio o fin del diagrama.                |
| 🔲 Paralelepípedo      | **Entrada/Salida**           | Representa una operación de entrada o salida de datos.       |
| 🔀 Flechas             | **Líneas de flujo**          | Indican la dirección del proceso de un paso a otro.          |

---
# Introducción a los Ciclos y Procesos en Programación

## 1. Ventajas de los Ciclos en Programación

Los ciclos son estructuras fundamentales en la programación porque permiten **repetir instrucciones automáticamente** sin necesidad de escribirlas una y otra vez. Sus principales ventajas son:

- **Ahorro de tiempo y esfuerzo:** se evita escribir código repetitivo.
- **Automatización:** la computadora puede ejecutar miles de repeticiones sin cansarse.
- **Flexibilidad:** el programa se adapta fácilmente si cambia la cantidad de repeticiones.

---

## 2. Ejemplos de Procesos con Entrada, Proceso y Salida

### a. Cajero automático
- **Entrada:** tarjeta, clave y monto solicitado.
- **Proceso:** validación de clave y saldo, retiro de efectivo.
- **Salida:** dinero y comprobante.

### b. Semáforo inteligente
- **Entrada:** sensores de tráfico.
- **Proceso:** cálculo del tiempo óptimo de luz verde.
- **Salida:** señales de tráfico (verde, amarillo, rojo).

### c. Microondas
- **Entrada:** tiempo y potencia.
- **Proceso:** calentamiento de alimentos.
- **Salida:** comida caliente.

### d. App de mensajería
- **Entrada:** texto o audio.
- **Proceso:** codificación, envío y decodificación.
- **Salida:** mensaje entregado al destinatario.

### e. Filtro de agua
- **Entrada:** agua con impurezas.
- **Proceso:** filtrado.
- **Salida:** agua limpia.

---

## 3. Procesos Condicionados

Un proceso condicionado depende de una **decisión (si ocurre algo, se ejecuta una acción; si no, otra distinta)**.

### a. Cajero automático
- **Si** la clave es correcta y hay saldo suficiente → entrega dinero.
- **Si no** → mensaje de error.

### b. Puerta eléctrica con sensor
- **Si** detecta una persona → abre la puerta.
- **Si no** → permanece cerrada.

### c. Tienda online
- **Si** el pago es aprobado → confirma compra.
- **Si no** → rechaza el pedido.

### d. Aire acondicionado con termostato
- **Si** la temperatura es mayor a la configurada → enfría.
- **Si no** → permanece apagado.

### e. Examen en línea
- **Si** la respuesta es correcta → suma puntos.
- **Si no** → no suma.

---

## 4. Procesos con Ciclos

Un ciclo se repite **mientras se cumpla una condición**. Esta condición puede ser el tiempo, una cantidad o un estado.  
Por eso, los ciclos en programación siempre dependen de una condición que determina cuántas veces se repite la acción.

### a. Lavadora automática
- **Entrada:** ropa y tiempo de lavado.
- **Proceso con ciclo:** repite *agitar → enjuagar → exprimir* hasta que finaliza el tiempo.
- **Salida:** ropa limpia.

### b. Semáforo
- **Entrada:** tiempo programado.
- **Proceso con ciclo:** repite la secuencia *verde → amarillo → rojo* indefinidamente.
- **Salida:** control del tráfico.

### c. Riego automático de plantas
- **Entrada:** humedad del suelo.
- **Proceso con ciclo:** mientras la humedad esté baja, repite *abrir válvula → regar → medir humedad*.
- **Salida:** plantas hidratadas.

### d. Entrenamiento en el gimnasio
- **Entrada:** número de repeticiones (ej. 15 sentadillas).
- **Proceso con ciclo:** repetir movimiento hasta completar las repeticiones.
- **Salida:** serie finalizada.

### e. Juego de dados
- **Entrada:** decisión del jugador “seguir o parar”.
- **Proceso con ciclo:** mientras diga “seguir”, lanzar los dados y acumular puntos.
- **Salida:** puntuación total.

---
# Ejercicios con Ciclos – Enunciados

## Ejercicio 1: Suma acumulada hasta alcanzar un límite

Una persona quiere guardar dinero para comprar una laptop que cuesta **$1000**. Cada vez que tiene dinero disponible, lo deposita en su cuenta de ahorros.

El sistema debe:

1. Pedir al usuario cuánto dinero va a depositar.
2. Sumar ese depósito al total acumulado.
3. Mostrar cuánto lleva ahorrado.
4. Repetir el proceso hasta que el total ahorrado sea **mayor o igual a $1000**.
5. Al alcanzar o superar los $1000, mostrar un mensaje de felicitación y finalizar.


## Ejercicio 2: Sistema de inscripción a un curso gratuito

Un centro educativo está ofreciendo un curso gratuito de programación, pero solo pueden inscribirse estudiantes que:

1. Sean mayores de 15 años.
2. Tengan acceso a internet.
3. No estén ya inscritos (se valida con una lista de nombres ya registrados).

El sistema debe:

1. Preguntar el nombre del estudiante.
2. Preguntar su edad.
3. Preguntar si tiene acceso a internet (sí o no).
4. Verificar si ya está inscrito.
5. Si cumple todas las condiciones, agregarlo a la lista de inscritos y mostrar un mensaje de confirmación.
6. Si no cumple alguna, mostrarle el motivo por el cual no fue aceptado.

El proceso se repite hasta que el usuario (administrador) diga que no desea registrar a más estudiantes.


## Ejercicio 3: Verificación de contraseña segura

Un sistema de registro en una plataforma educativa requiere que cada usuario elija una contraseña segura.  
La contraseña debe cumplir las siguientes condiciones:

1. Tener al menos 8 caracteres.
2. Incluir al menos una letra mayúscula.
3. Incluir al menos un número.

El sistema debe:

1. Pedir al usuario que escriba una contraseña.
2. Verificar si cumple con los requisitos.
3. Si no cumple, mostrar los errores específicos y volver a pedir una nueva contraseña.
4. Si cumple, registrar la contraseña y finalizar el proceso.

---

## Ejercicios prácticos adicionales

### Ejercicio 4: Encuentra el número secreto

El sistema tiene un número secreto guardado. El usuario debe adivinarlo.

1. Pedir al usuario que adivine el número.
2. Si el número es incorrecto, indicar si el número secreto es mayor o menor.
3. Repetir hasta que adivine el número correctamente.
4. Al acertar, mostrar un mensaje de felicitación.

### Ejercicio 5: Registro de temperaturas

Un sistema debe registrar las temperaturas diarias hasta que el usuario escriba la palabra "fin".

1. Pedir una temperatura.
2. Guardar la temperatura en una lista.
3. Repetir mientras el valor ingresado no sea "fin".
4. Al finalizar, mostrar cuántas temperaturas se registraron y su promedio.

### Ejercicio 6: Repetición de mensaje motivacional

Un profesor quiere imprimir un mensaje motivador 10 veces en pantalla.

1. Repetir 10 veces el mensaje: “¡Tú puedes lograrlo!”.
2. Mostrar un número al lado de cada repetición.

### Ejercicio 7: Suma de números positivos

Un usuario debe ingresar números. El sistema suma todos los positivos y se detiene si se escribe un número negativo.

1. Pedir un número.
2. Si es positivo, sumarlo al total.
3. Si es negativo, terminar el proceso y mostrar el total acumulado.

### Ejercicio 8: Lista de compras

El sistema permite ingresar productos a una lista de compras.

1. Preguntar al usuario el nombre de un producto.
2. Agregarlo a la lista.
3. Preguntar: “¿Deseas ingresar otro producto?”
4. Si responde “sí”, repetir.
5. Si responde “no”, mostrar la lista completa.

---
