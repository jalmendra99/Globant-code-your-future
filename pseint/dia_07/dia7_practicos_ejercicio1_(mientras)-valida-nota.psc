// Clase 7 - Pr�cticos - Ejercicio 1 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Escriba un programa que valide si una nota est� entre 0 y 10, 
// sino est� entre 0 y 10 la nota se pedir� de nuevo hasta que la nota sea correcta.

Algoritmo practicos_ejercicio1
	
	// Definici�n de variables.
	definir nota como entero
	
	// Inicializaci�n de variables.
	nota = 0
	
	// Se solicita al usuario ingresar la nota.
	escribir "Por favor ingrese una nota del 0 al 10: " sin saltar
	leer nota
	
	// Se valida que la nota est� en el rango permitido.
	mientras nota < 0 o nota > 10 Hacer
		Escribir "Nota no v�lida. Por favor ingrese una nota del 0 al 10: " sin saltar
		leer nota
	FinMientras
	
	escribir "La nota ingresada es ", nota
	
FinAlgoritmo
