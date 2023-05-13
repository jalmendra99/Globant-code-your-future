// Clase 2 - Prácticos - Ejercicio 5 - página 4
// Fer V - jalmendra99@gmail.com
//
// Escriba un programa que permita al usuario ingresar 
// el valor de dos variables numéricas de tipo entero. 
// Posteriormente, el programa debe intercambiar los valores 
// de ambas variables y mostrar el resultado final por pantalla.
// Por ejemplo, si el usuario ingresa los valores num1 = 9 y num2 = 3, 
// la salida a del programa deberá mostrar: num1 = 3 y num2 = 9
// Ayuda: Para intercambiar los valores de dos variables se debe utilizar una variable auxiliar.

Algoritmo practicos_ejercicio5
	
	// Definición de variables.
	definir num1, num2, numAuxiliar como entero
	
	// Inicialización de variables.
	num1 = 0
	num2 = 0
	numAuxiliar = 0
	
	// Usuario ingresa valores a variables.
	escribir "Ingresará dos números y el programa intercambiará los valores de los mismos."
	escribir "Ingrese el primer número: " sin saltar
	leer num1
	escribir "Ingrese el segundo número: " sin saltar
	leer num2
	
	// Se intercambian los valores de num1 y num2.
	numAuxiliar = num1
	num1 = num2
	num2 = numAuxiliar
	
	// Se muestra la información solicitada por pantalla.
	escribir "Se han intercambiado los valores de los números."
	escribir "Valor del primer número: ", num1
	escribir "Valor del segundo número: ", num2
	
	/// Nota: Se podría haber resuelto sin usar la variable numAuxiliar, imprimiendo cruzado.
	
FinAlgoritmo
