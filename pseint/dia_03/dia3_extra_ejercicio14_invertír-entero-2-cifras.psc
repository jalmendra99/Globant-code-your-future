// Clase 3 - Extra - Ejercicio 14 - página 3
// Fer V - jalmendra99@gmail.com
//
// Dado un número de dos cifras, diseñe un algoritmo que permita obtener 
// el número invertido. 
// Ejemplo, si se introduce 23 que muestre 32.

Algoritmo extra_ejercicio14
	
	//Definición de variables.
	definir numero1 Como entero
	
	// Inicialización de variables.
	numero1 = 0
	
	// Se informa premisa al usuario
	escribir "Se invertirá el número de dos cifras ingresado."
	escribir "Ejemplo, si se introduce 23 que muestre 32."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el número: "
	leer numero1
	
	// Invertir y mostrar en pantalla
	escribir "El número invertido es: ", numero1 % 10, trunc(numero1/10)
	
FinAlgoritmo
