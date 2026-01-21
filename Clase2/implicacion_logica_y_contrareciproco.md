# Implicación lógica y contrarecíproco en reglas de negocio

## 1. ¿Por qué estudiar implicación lógica en sistemas?

En programación y en los sistemas de información, casi todo funciona a
partir de **reglas de negocio**: *si ocurre algo, entonces el sistema
debe responder de cierta forma*.

Detrás de sentencias como `if`, validaciones, permisos y flujos de
decisión, existe una estructura lógica muy precisa llamada **implicación
lógica**.\
Comprenderla permite diseñar reglas claras, evitar ambigüedades y
construir sistemas confiables.

------------------------------------------------------------------------

## 2. La implicación lógica: `p → q`

Una proposición de la forma:

> **Si p, entonces q**

representa una **promesa o garantía** del sistema.

### Ejemplo

> **Si el usuario es administrador, entonces puede borrar datos**

-   **p**: El usuario es administrador
-   **q**: El usuario puede borrar datos

La regla **solo se rompe** cuando: 
- p es verdadera y q es falsa

Es decir, cuando se cumple la condición pero no la consecuencia.

------------------------------------------------------------------------

## 3. Casos que NO rompen la regla

-   El usuario no es administrador y no puede borrar datos.
-   El usuario no es administrador y puede borrar datos.

En ambos casos, la condición inicial no se cumple, por lo tanto la regla
no se viola.

------------------------------------------------------------------------

## 4. El contrarecíproco (contrapositiva)

Dada una proposición:

    p → q

Su **contrarecíproco** es:

    ¬q → ¬p

📌 Se niega la consecuencia y se niega la condición, invirtiendo el
orden.

### Regla fundamental

> **Una proposición y su contrarecíproco son lógicamente equivalentes.**

------------------------------------------------------------------------

## 5. Ejemplo de contrarecíproco

### Regla original

> Si el usuario es administrador, entonces puede borrar datos.

### Contrarecíproco

> Si el usuario **no puede borrar datos**, entonces **no es
> administrador**.

Ambas expresan exactamente la misma regla de negocio desde la lógica.

------------------------------------------------------------------------

## 6. Importancia en programación

En sistemas reales, muchas validaciones se expresan naturalmente como
contrarecíprocos:

``` java
if (!puedeBorrarDatos) {
    throw new AccesoDenegadoException();
}
```

Esto es equivalente a verificar directamente la condición original.

------------------------------------------------------------------------

## 7. Ejercicios: identificar ruptura de reglas

### Instrucción

Dada cada regla, indique **qué afirmación rompe la regla de negocio**.

### Ejercicio 1

**Regla:** Si el usuario es administrador, entonces puede borrar datos.

a)  El usuario es administrador y puede borrar datos.\
b)  El usuario no es administrador y no puede borrar datos.\
c)  El usuario no es administrador y puede borrar datos.\
d)  El usuario es administrador y no puede borrar datos.

------------------------------------------------------------------------

### Ejercicio 2

**Regla:** Si el usuario está autenticado, entonces puede acceder al
sistema.

a)  Está autenticado y accede.\
b)  No está autenticado y no accede.\
c)  No está autenticado y accede.\
d)  Está autenticado y no accede.

------------------------------------------------------------------------

### Ejercicio 3

**Regla:** Si el código compila, entonces la aplicación puede
ejecutarse.

a)  Compila y se ejecuta.\
b)  No compila y no se ejecuta.\
c)  No compila y se ejecuta.\
d)  Compila y no se ejecuta.

------------------------------------------------------------------------

### Ejercicio 4

**Regla:** Si la base de datos está conectada, entonces se pueden hacer
consultas.

a)  Está conectada y hay consultas.\
b)  No está conectada y no hay consultas.\
c)  No está conectada y hay consultas.\
d)  Está conectada y no hay consultas.

------------------------------------------------------------------------

### Ejercicio 5

**Regla:** Si el servidor de correo está activo, entonces se pueden
enviar correos.

a)  Está activo y se envían correos.\
b)  No está activo y no se envían correos.\
c)  No está activo y se envían correos.\
d)  Está activo y no se envían correos.

------------------------------------------------------------------------

## 8. Ejercicios: construir el contrarecíproco

### Instrucción

Dada cada proposición, escriba su **contrarecíproco equivalente**.

1.  Si el usuario está autenticado, entonces puede acceder al sistema.
2.  Si el servidor está activo, entonces la aplicación responde.
3.  Si el código compila, entonces el programa se ejecuta.
4.  Si la base de datos está conectada, entonces se pueden hacer
    consultas.
5.  Si el usuario es administrador, entonces puede borrar datos.
6.  Si las pruebas pasan, entonces el sistema puede desplegarse.
7.  Si la contraseña es segura, entonces el acceso es permitido.
8.  Si la API responde con estado 200, entonces la solicitud fue
    exitosa.
9.  Si el archivo existe, entonces el sistema puede leerlo.
10. Si el servidor tiene suficiente memoria, entonces la aplicación
    funciona correctamente.

------------------------------------------------------------------------

## 9. Idea clave para recordar

> 🔹 La implicación lógica define garantías.\
> 🔹 Solo se rompe cuando la condición se cumple y la consecuencia no.\
> 🔹 El contrarecíproco mantiene exactamente el mismo significado
> lógico.

------------------------------------------------------------------------

