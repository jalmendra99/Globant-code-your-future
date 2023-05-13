// Clase 7 - Pr�cticos - Ejercicio 6 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Escriba un programa que solicite al usuario n�meros decimales mientras 
// que el usuario escriba n�meros mayores al primero que se ingres�. 
// Por ejemplo: si el usuario ingresa como primer n�mero un 3.1, 
// y luego ingresa un 4, el programa debe solicitar un tercer n�mero. 
// El programa continuar� solicitando valores sucesivamente 
// mientras los valores ingresados sean mayores que 3.1, caso contrario, el programa finaliza.

Algoritmo practicos_ejercicio6
	
	// Definici�n de variables.
	definir num, primero como real
	
	// Inicializaci�n de variables.	
	num = 0
	primero = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitar� ingresar n�meros reales, siempre que el �ltimo ingresado sea mayor al primero."
	escribir "El programa finalizar� en cuanto se ingrese un n�mero igual o menor al primer n�mero ingresado."
	
	// Se solicita al usuario ingresar el primer n�mero	
	escribir "Por favor ingrese un n�mero real: " sin saltar
	leer num
	
	primero = num	
	
	Escribir "Ingrese otro n�mero real: " sin saltar
	leer num
	
	// Se contin�a solicitando ingresar n�meros mientras el n�mero ingresado sea mayor al primero.
	mientras num > primero Hacer		
		Escribir "Ingrese otro n�mero real: " sin saltar
		leer num		
	FinMientras	
	
FinAlgoritmo
