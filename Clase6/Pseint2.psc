Algoritmo Ejemplo2
	Definir acumulado Como Entero
	Definir cantidad Como Entero
	Definir continuar Como Logico
	acumulado <- 0 //inicialización
	continuar <- Verdadero
	// === Inicia ciclo indeterminado (mientras)
	Mientras continuar = Verdadero Y acumulado < 1000 Hacer
		Escribir "Ingrese cantidad:"
		Leer cantidad 
		acumulado <- acumulado + cantidad
		Escribir "El acumulado es " , acumulado
		
		SI acumulado < 1000 Entonces
			Escribir "Desea continuar el ahorro?(Verdadero/Falso):"
			Leer continuar
		FinSi
		
	FinMientras
	
	
	
	Escribir "Felicidades!!"
FinAlgoritmo
