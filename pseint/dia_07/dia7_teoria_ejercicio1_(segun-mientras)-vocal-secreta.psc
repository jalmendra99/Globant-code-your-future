// Clase 7 - Teoría - Ejercicio 1 - página 4
// Fer V - jalmendra99@gmail.com
//
// EJERCICIO VOCAL SECRETA
// Diseña un programa que guarde una vocal secreta 
// en una variable, debemos pedirle al usuario que intente adivinar 
// la vocal secreta, e intentará tantas veces como sea necesario hasta que la adivine.

Algoritmo teoria_ejercicio1
	
	// Definición de variables.
	definir secreta, ingresada como caracter	
	
	// Inicialización de variables.
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
	
	// Se continúa pidiendo al usuario que intente hasta que adivine la vocal correcta.
	mientras minusculas(ingresada) <> secreta		
		escribir "No es la correcta. Intente denuevo: "
		leer ingresada		
	fin mientras
		
	escribir "Adivinó la vocal!"
	
FinAlgoritmo