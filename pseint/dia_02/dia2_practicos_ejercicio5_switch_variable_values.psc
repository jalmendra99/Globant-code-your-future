// Clase 2 - Pr�cticos - Ejercicio 5 - p�gina 4
// Fer V - jalmendra99@gmail.com
//
// Escriba un programa que permita al usuario ingresar 
// el valor de dos variables num�ricas de tipo entero. 
// Posteriormente, el programa debe intercambiar los valores 
// de ambas variables y mostrar el resultado final por pantalla.
// Por ejemplo, si el usuario ingresa los valores num1 = 9 y num2 = 3, 
// la salida a del programa deber� mostrar: num1 = 3 y num2 = 9
// Ayuda: Para intercambiar los valores de dos variables se debe utilizar una variable auxiliar.

Algoritmo practicos_ejercicio5
	
	// Definici�n de variables.
	definir num1, num2, numAuxiliar como entero
	
	// Inicializaci�n de variables.
	num1 = 0
	num2 = 0
	numAuxiliar = 0
	
	// Usuario ingresa valores a variables.
	escribir "Ingresar� dos n�meros y el programa intercambiar� los valores de los mismos."
	escribir "Ingrese el primer n�mero: " sin saltar
	leer num1
	escribir "Ingrese el segundo n�mero: " sin saltar
	leer num2
	
	// Se intercambian los valores de num1 y num2.
	numAuxiliar = num1
	num1 = num2
	num2 = numAuxiliar
	
	// Se muestra la informaci�n solicitada por pantalla.
	escribir "Se han intercambiado los valores de los n�meros."
	escribir "Valor del primer n�mero: ", num1
	escribir "Valor del segundo n�mero: ", num2
	
	/// Nota: Se podr�a haber resuelto sin usar la variable numAuxiliar, imprimiendo cruzado.
	
FinAlgoritmo
