// Clase 3 - Extra - Ejercicio 14 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Dado un n�mero de dos cifras, dise�e un algoritmo que permita obtener 
// el n�mero invertido. 
// Ejemplo, si se introduce 23 que muestre 32.

Algoritmo extra_ejercicio14
	
	//Definici�n de variables.
	definir numero1 Como entero
	
	// Inicializaci�n de variables.
	numero1 = 0
	
	// Se informa premisa al usuario
	escribir "Se invertir� el n�mero de dos cifras ingresado."
	escribir "Ejemplo, si se introduce 23 que muestre 32."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el n�mero: "
	leer numero1
	
	// Invertir y mostrar en pantalla
	escribir "El n�mero invertido es: ", numero1 % 10, trunc(numero1/10)
	
FinAlgoritmo
