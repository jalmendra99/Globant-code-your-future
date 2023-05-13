// Clase 9 - Pr�cticos - Ejercicio 5 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que calcule la suma de los N primeros n�meros naturales. 
// El valor de N se leer� por teclado.

Algoritmo practicos_ejercicio5
	
	// Definici�n de variables.
	definir n, suma como entero
	
	// Inicializaci�n de variables.		
	suma = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitar� ingres�r un n�mero natural positivo (N) y se mostrar� " sin saltar
	escribir " la suma de los primeros N n�meros naturales"
	
	// Se solicita ingresar el n�mero "N"
	// y se verifica que sea positivo
	repetir 
		escribir "Ingrese un n�mero natural positivo: " sin saltar
		leer n
	Mientras Que (n <= 0)
	
	// Se calcula la sumatoria.
	para n = 1 hasta n con paso 1 hacer
		suma = suma + n
	FinPara
	
	// Se presenta la informaci�n solicitada por pantalla.
	escribir "La suma de los n�meros enteros entre 1 y ", n - 1, " es ", suma, "."
	
FinAlgoritmo
