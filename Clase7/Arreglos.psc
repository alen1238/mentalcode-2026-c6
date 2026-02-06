Algoritmo Arreglos
	
	Definir tamanio Como Entero
	
	Escribir "defina el tamaño del arreglo (1...):"
	Leer tamanio
	//tamanio <- 10
	
	Dimension numeros[tamanio]
	
	//Definir indice Como Entero
	
	
	// Escribiendo los datos
	//numeros[1] <- 10 // es igual a  tener numeros[1] <- 10
	//numeros[2] <- 8
	//numeros[3] <- 12
	
	//Guardar los datos
	Para indice <- 1 Hasta tamanio Hacer
		Escribir "Escriba el valor:"
		Leer numeros[indice] 
	FinPara
	
	Escribir "Mostrando datos..."
	//accediendo a los datos
	Para indice <- 1 Hasta tamanio Hacer
		Escribir numeros[indice]
	FinPara
	

	
	
FinAlgoritmo
