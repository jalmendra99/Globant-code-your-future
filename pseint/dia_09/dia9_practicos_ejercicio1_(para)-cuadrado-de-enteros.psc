// Clase 9 - Prácticos - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que calcule el cuadrado de los 9 primeros números 
// naturales e imprima por pantalla el número seguido de su cuadrado. 
// Ejemplo: "2 elevado al cuadrado es igual a 4", y así sucesivamente.

Algoritmo practicos_ejercicio1
	
	// Definición de variables.
	definir i como entero
	
	// Inicialización de variables.	
	i = 0
	
	// Se informa premisa al usuario.
	escribir "Se calcularán los cuadrados de los primeros números naturales y se mostrarán por pantalla."
	
	// Se presenta la información solicitada por pantalla.
	para i = 1 hasta 9 con paso 1 Hacer
		// Para calcular el cuadrado de i
		// se puede usar: i * i
		// o también: i ^ 2
		escribir i, " elevado al cuadrado es igual a ", i * i, "."
	FinPara
	
FinAlgoritmo