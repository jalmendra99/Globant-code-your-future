// Clase 6 - Extra - Ejercicio 7 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Condicionales anidados
// El promedio de los trabajos pr�cticos de un curso se calcula 
// en base a cuatro notas de las cuales se elimina la nota menor 
// y se promedian las tres notas m�s altas. 
// Escriba un programa que determine cu�l es la nota eliminada 
// y el promedio de los trabajos pr�cticos de un estudiante.

Algoritmo extra_ejercicio7
	
	// Definici�n de variables.
	definir nota1, nota2, nota3, nota4, notaEliminada, promedio Como Real
	
	// Inicializaci�n de variables.
	nota1 = 0
	nota2 = 0
	nota3 = 0
	nota4 = 0
	notaEliminada = 0
	promedio = 0
	
	// Se informa premisa al usuario.
	escribir "Se pedir� ingresar las cuatro notas de los trabajos pr�cticos de un curso " sin saltar
	escribir "y se calcular� el promedio de las tres m�s altas."
	
	// Cargando las cuatro notas de los trabajos pr�cticos.
	escribir "Ingrese la primera nota: " sin saltar
	leer nota1
	escribir "Ingrese la segunda nota: " sin saltar
	leer nota2
	escribir "Ingrese la tercera nota: " sin saltar
	leer nota3
	escribir "Ingrese la cuarta nota: " sin saltar
	leer nota4
		
	// Se determinan la nota menor y el promedio de las tres restantes
	si nota1 < nota2 y nota1 < nota3 y nota1 < nota4
		notaEliminada = nota1
		promedio = (nota2 + nota3 + nota4) / 3
	SiNo
		si nota2 < nota1 y nota2 < nota3 y nota2 < nota4
			notaEliminada = nota2
			promedio = (nota1 + nota3 + nota4) / 3
		SiNo
			si nota3 < nota1 y nota3 < nota2 y nota3 < nota4
				notaEliminada = nota3
				promedio = (nota1 + nota2 + nota4) / 3
			SiNo
				notaEliminada = nota4
				promedio = (nota1 + nota2 + nota3) / 3
			FinSi
		FinSi
	FinSi
	
	imprimir "La nota eliminada es ", notaEliminada, " y el promedio de las tres restantes es ", promedio, "."
	
FinAlgoritmo
