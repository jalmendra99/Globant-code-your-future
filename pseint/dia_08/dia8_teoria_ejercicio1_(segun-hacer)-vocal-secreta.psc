// Clase 8 - Teor�a - Ejercicio 1 - p�gina 4
// Fer V - jalmendra99@gmail.com
//
// EJERCICIO VOCAL SECRETA - PARTE 2
// Vamos a hacer nuevamente el ejercicio de la vocal misteriosa, 
// pero esta vez con una estructura Hacer-Mientras. 
// �Puedes notar cu�l es la diferencia entre ambas estructuras?

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
	
	escribir "Adivine la vocal que ha sido seleccionada."
	leer ingresada	
	
	// Se contin�a pidiendo al usuario que intente hasta que adivine la vocal correcta.
	hacer 
		// Se solicita al usuario ingresar una vocal.		
		escribir "No es la correcta. Intente denuevo: "
		leer ingresada		
	mientras que minusculas(ingresada) <> secreta		
	
	escribir "Adivin� la vocal!"
	
FinAlgoritmo
