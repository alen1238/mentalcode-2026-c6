# Taller: Detectives de reglas de negocio (Nivel Avanzado)

## Instrucciones generales
Para cada ejercicio:

1. Analice la **regla de negocio original**.  
2. Evalúe cada situación planteada.  
3. Determine:
   - ¿La regla se cumple o se rompe?
   - ¿La situación corresponde a la proposición original, a su **contrarrecíproco**, o a una proposición **no equivalente**?
4. Justifique su respuesta usando lógica proposicional.

---

## Ejercicio 1: Control de despliegues

**Regla de negocio:**  
Si **(el código no tiene errores críticos ∧ las pruebas automáticas pasan)**, entonces **el sistema puede desplegarse en producción**.

**Situación A:**  
- El código no tiene errores críticos  
- Las pruebas automáticas pasan  
- El sistema no se desplegó  

**Situación B:**  
- El sistema no se desplegó  
- El código tiene errores críticos  

---

## Ejercicio 2: Acceso a base de datos

**Regla de negocio:**  
Si **(el usuario es desarrollador ∨ es administrador)**, entonces **puede acceder a la base de datos**.

**Situación A:**  
- El usuario no es desarrollador  
- No puede acceder a la base de datos  

**Situación B:**  
- El usuario no puede acceder a la base de datos  
- El usuario no es desarrollador ni administrador  

---

## Ejercicio 3: Validación de formularios

**Regla de negocio:**  
Si **(el formulario está completo ∧ no contiene datos inválidos)**, entonces **puede enviarse**.

**Situación A:**  
- El formulario está completo  
- Contiene datos inválidos  
- El formulario no se envía  

**Situación B:**  
- El formulario se envía  
- El formulario está completo  

---

## Ejercicio 4: Autenticación en el sistema

**Regla de negocio:**  
Si **(el usuario no está autenticado ∨ la sesión ha expirado)**, entonces **no puede realizar operaciones críticas**.

**Situación A:**  
- El usuario no está autenticado  
- Realiza una operación crítica  

**Situación B:**  
- El usuario puede realizar operaciones críticas  
- La sesión no ha expirado y el usuario está autenticado  

---

## Ejercicio 5: Versionamiento de software

**Regla de negocio:**  
Si **(el commit no está documentado ∧ no tiene pruebas asociadas)**, entonces **no puede integrarse a la rama principal**.

**Situación A:**  
- El commit no está documentado  
- No tiene pruebas asociadas  
- Fue integrado a la rama principal  

**Situación B:**  
- El commit se integró a la rama principal  
- Tiene documentación y pruebas  

---

## Ejercicio 6: Gestión de errores en producción

**Regla de negocio:**  
Si **(ocurre una excepción crítica ∧ el sistema está en producción)**, entonces **se debe notificar al equipo de soporte**.

**Situación A:**  
- Ocurre una excepción crítica  
- El sistema está en producción  
- No se notificó al equipo  

**Situación B:**  
- No se notificó al equipo de soporte  
- El sistema no está en producción
---  

## Ejercicio 7: Control de acceso a funcionalidades

**Regla de negocio:**  
Si **(el usuario tiene rol premium ∧ su suscripción está activa)**, entonces **puede acceder a funciones avanzadas**.

**Situación A:**  
- El usuario tiene rol premium  
- La suscripción está activa  
- No puede acceder a funciones avanzadas  

**Situación B:**  
- El usuario no puede acceder a funciones avanzadas  
- La suscripción no está activa  

---

## Ejercicio 8: Descarga de archivos

**Regla de negocio:**  
Si **(el archivo existe ∧ el usuario tiene permisos de lectura)**, entonces **el archivo puede descargarse**.

**Situación A:**  
- El archivo existe  
- El usuario tiene permisos de lectura  
- El archivo no se puede descargar  

**Situación B:**  
- El archivo no se puede descargar  
- El archivo no existe  

---

## Ejercicio 9: Ejecución de tareas programadas

**Regla de negocio:**  
Si **(el sistema está en horario laboral ∨ la tarea es crítica)**, entonces **la tarea puede ejecutarse**.

**Situación A:**  
- El sistema no está en horario laboral  
- La tarea no es crítica  
- La tarea se ejecuta  

**Situación B:**  
- La tarea no se ejecuta  
- El sistema no está en horario laboral  

---

## Ejercicio 10: Registro de usuarios

**Regla de negocio:**  
Si **(el correo electrónico es válido ∧ la contraseña cumple las políticas de seguridad)**, entonces **el usuario puede registrarse**.

**Situación A:**  
- El correo electrónico es válido  
- La contraseña cumple las políticas  
- El usuario no pudo registrarse  

**Situación B:**  
- El usuario pudo registrarse  
- El correo electrónico es válido  

---

## Ejercicio 11: Acceso a API

**Regla de negocio:**  
Si **(la API key es válida ∧ no ha expirado)**, entonces **la solicitud es aceptada**.

**Situación A:**  
- La API key es válida  
- No ha expirado  
- La solicitud fue rechazada  

**Situación B:**  
- La solicitud fue aceptada  
- La API key no ha expirado  

---

## Ejercicio 12: Backup del sistema

**Regla de negocio:**  
Si **(el almacenamiento tiene espacio disponible ∧ el proceso de backup está habilitado)**, entonces **el respaldo se ejecuta**.

**Situación A:**  
- Hay espacio disponible  
- El proceso de backup está habilitado  
- El respaldo no se ejecutó  

**Situación B:**  
- El respaldo se ejecutó  
- Hay espacio disponible  

---

## Ejercicio 13: Manejo de sesiones

**Regla de negocio:**  
Si **(el usuario cierra sesión ∨ la sesión expira)**, entonces **el acceso es revocado**.

**Situación A:**  
- El usuario cerró sesión  
- El acceso no fue revocado  

**Situación B:**  
- El acceso fue revocado  
- El usuario no cerró sesión  

---

## Ejercicio 14: Control de recursos

**Regla de negocio:**  
Si **(el proceso consume demasiada memoria ∧ el sistema está bajo alta carga)**, entonces **el proceso se detiene**.

**Situación A:**  
- El proceso consume demasiada memoria  
- El sistema está bajo alta carga  
- El proceso no se detuvo  

**Situación B:**  
- El proceso se detuvo  
- El sistema no está bajo alta carga  

---

## Ejercicio 15: Publicación de contenido

**Regla de negocio:**  
Si **(el contenido no viola las políticas ∧ ha sido aprobado por un moderador)**, entonces **puede publicarse**.

**Situación A:**  
- El contenido no viola las políticas  
- Fue aprobado por un moderador  
- No se publicó  

**Situación B:**  
- El contenido se publicó  
- No fue aprobado por un moderador  

---

## Ejercicio 16: Actualización del sistema

**Regla de negocio:**  
Si **(hay una nueva versión disponible ∧ el usuario acepta la actualización)**, entonces **el sistema se actualiza**.

**Situación A:**  
- Hay una nueva versión disponible  
- El usuario acepta la actualización  
- El sistema no se actualizó  

**Situación B:**  
- El sistema se actualizó  
- El usuario no aceptó la actualización  