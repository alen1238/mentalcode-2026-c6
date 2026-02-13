Algoritmo TestFunciones
	
	Definir area Como Real
	
	area <- AreaRectangulo(5,4)
	Escribir "Area del rectángulo (valor esperado 20): " , area
	
	area <- AreaCirculo(3)
	Escribir "Area del circulo (valor esperado 28.27): ", area
	
	area <- AreaTriangulo(10, 2)
	Escribir "Area del triangulo (valor esperado 10): ", area
	
	

FinAlgoritmo


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
	