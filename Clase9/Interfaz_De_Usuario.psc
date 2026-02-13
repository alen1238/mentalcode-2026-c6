Algoritmo Interfaz_De_Usuario
	Definir opcionLeida Como Entero
	Definir base, altura, radio, resultado, apotema, perimetro Como Real
	opcionLeida <- 0
	
	Mientras opcionLeida <> 5 Hacer
		opcionLeida <- MostrarMenu(1)
		
		Segun opcionLeida Hacer
			1: //ejecutar la funcion rectangulo
				Escribir "digite base: "
				Leer base
				Escribir "digite altura: "
				Leer altura 
				resultado <- AreaRectangulo(base, altura)
				Escribir "El área del rectangulo es ", resultado
			2: //ejecutar la funcion circulo
				Escribir "digite radio: "
				Leer radio
				resultado <- AreaCirculo(radio)
				Escribir "El área del circulo es ", resultado
			3: //ejecutar la funcion triangulo
				Escribir "digite base: "
				Leer base
				Escribir "digite altura: "
				Leer altura 
				resultado <- AreaTriangulo(base, altura)
				Escribir "El área del triangulo es ", resultado
			4:  //ejecutar la funcion pentagono
				Escribir "Ingrese apotema: "
				Leer apotema
				Escribir "Ingrese perimetro: "
				Leer perimetro
				resultado <-  AreaPentagono(perimetro, apotema)
				Escribir "El área del pentágono es ", resultado
			5: //finaliza el programa
				Escribir "gracias por usar nuestro programa"
			De Otro Modo:
				Escribir "Opción inválida. Intente nuevamente"
		FinSegun
	FinMientras
	
FinAlgoritmo



Funcion lectura <- MostrarMenu(a)
	Definir lectura Como Entero
	Escribir "============================"
	Escribir "  MENÚ DE FIGURAS GEOMÉTRICAS  "
	Escribir "1. Calcular área de rectángulo"
	Escribir "2. Calcular área de circulo"
	Escribir "3. Calcular área de triángulo"
	Escribir "4. Calcular área de pentagono"
	Escribir "5. Salir"
	Escribir "seleccione una opción: "
	Leer lectura
FinFuncion


Funcion area <- AreaRectangulo(base, altura)
	Definir area Como Real
	area <- base * altura
FinFuncion

Funcion area <-  AreaCirculo(radio)
	Definir area Como Real
	area <- PI * radio * radio
FinFuncion

Funcion area <- AreaTriangulo(base, altura)
	Definir area Como Real
	area <- (base * altura) / 2
FinFuncion

Funcion area <- AreaPentagono(perimetro, apotema)
	Definir area Como Real
	area <- (perimetro * apotema) / 2
FinFuncion
