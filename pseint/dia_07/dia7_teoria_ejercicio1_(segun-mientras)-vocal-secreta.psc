// Clase 7 - Teor�a - Ejercicio 1 - p�gina 4
// Fer V - jalmendra99@gmail.com
//
// EJERCICIO VOCAL SECRETA
// Dise�a un programa que guarde una vocal secreta 
// en una variable, debemos pedirle al usuario que intente adivinar 
// la vocal secreta, e intentar� tantas veces como sea necesario hasta que la adivine.

Algoritmo teoria_ejercicio1
	
	// Definici�n de variables.
	definir secreta, ingresada como caracter	
	
	// Inicializaci�n de variables.
	ingresada = ""
	
	// Agregado para que el programa elija una vocal al azar.
	definir num Como Entero
	num = azar(4)
	segun num Hacer
		0: secreta = "a"
		1: secreta = "e"
		2: secreta = "i"
		3: secreta = "o"
		4: secreta = "u"
		de otro modo: escribir "Error grave al asignar valor a vocal."			
	FinSegun
	
	// Se solicita al usuario ingresar la primera vocal.
	escribir "Adivine la vocal que ha sido seleccionada."
	leer ingresada	
	
	// Se contin�a pidiendo al usuario que intente hasta que adivine la vocal correcta.
	mientras minusculas(ingresada) <> secreta		
		escribir "No es la correcta. Intente denuevo: "
		leer ingresada		
	fin mientras
		
	escribir "Adivin� la vocal!"
	
FinAlgoritmo