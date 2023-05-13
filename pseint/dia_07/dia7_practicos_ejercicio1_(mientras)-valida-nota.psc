// Clase 7 - Prácticos - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Escriba un programa que valide si una nota está entre 0 y 10, 
// sino está entre 0 y 10 la nota se pedirá de nuevo hasta que la nota sea correcta.

Algoritmo practicos_ejercicio1
	
	// Definición de variables.
	definir nota como entero
	
	// Inicialización de variables.
	nota = 0
	
	// Se solicita al usuario ingresar la nota.
	escribir "Por favor ingrese una nota del 0 al 10: " sin saltar
	leer nota
	
	// Se valida que la nota esté en el rango permitido.
	mientras nota < 0 o nota > 10 Hacer
		Escribir "Nota no válida. Por favor ingrese una nota del 0 al 10: " sin saltar
		leer nota
	FinMientras
	
	escribir "La nota ingresada es ", nota
	
FinAlgoritmo
