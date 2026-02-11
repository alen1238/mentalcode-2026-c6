Algoritmo SistemaCursoNivel1
	Definir nota1, nota2, nota3 Como Real
	Definir promedio Como Real
	Definir estado Como Texto
	

    nota1 <- LeerNota(1)
	nota2 <- LeerNota(2)
	nota3 <- LeerNota(3)
	
	promedio <- CalcularPromedio(nota1, nota2, nota3)
	estado <- EvaluarEstado(promedio)
	
	Escribir "Promedio del estudiante: ", promedio
	Escribir "Estado: ", estado
	
FinAlgoritmo


FUNCION promedioInterno <- CalcularPromedio(n1, n2, n3)
	DEFINIR promedioInterno Como Real
	promedioInterno <- (n1 + n2 + n3) / 3
FinFuncion


FUNCION nota <- LeerNota(n)	
	Definir nota Como Real
	Escribir "Ingrese la nota ", n
	Leer nota
FinFuncion

FUNCION estado <- EvaluarEstado(promedio)	
	Definir estado como Texto
	
	Si promedio >= 3 Entonces
		estado <- "APRUEBA"
	SiNo
		estado <- "REPRUEBA"
	FinSi
FinFuncion


