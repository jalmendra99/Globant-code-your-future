// Clase 9 - Pr�cticos - Ejercicio 1 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que calcule el cuadrado de los 9 primeros n�meros 
// naturales e imprima por pantalla el n�mero seguido de su cuadrado. 
// Ejemplo: "2 elevado al cuadrado es igual a 4", y as� sucesivamente.

Algoritmo practicos_ejercicio1
	
	// Definici�n de variables.
	definir i como entero
	
	// Inicializaci�n de variables.	
	i = 0
	
	// Se informa premisa al usuario.
	escribir "Se calcular�n los cuadrados de los primeros n�meros naturales y se mostrar�n por pantalla."
	
	// Se presenta la informaci�n solicitada por pantalla.
	para i = 1 hasta 9 con paso 1 Hacer
		// Para calcular el cuadrado de i
		// se puede usar: i * i
		// o tambi�n: i ^ 2
		escribir i, " elevado al cuadrado es igual a ", i * i, "."
	FinPara
	
FinAlgoritmo