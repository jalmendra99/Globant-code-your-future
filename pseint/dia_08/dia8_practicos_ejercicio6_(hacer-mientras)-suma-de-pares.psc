// Clase 8 - Pr�cticos - Ejercicio 6 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Se pide escribir un programa que calcule la suma de los N primeros n�meros pares. 
// Es decir, si ingresamos el n�mero 5 como valor de N, 
// el algoritmo nos debe realizar la suma de los siguientes valores: 2+4+6+8+10.

Algoritmo practicos_ejercicio6
	
	// Definici�n de variables.
	definir num, suma, parActual, contador como entero

	// Inicializaci�n de variables.	
	num = 0
	suma = 0
	parActual = 0
	contador = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero entero (N)"
	escribir "y se calcular� la suma de los N primeros n�meros pares."
	
	// Se valida que se ingrese un n�mero positivo.
	hacer
		escribir "Ingrese un n�mero entero positivo: "
		leer num
	mientras que (num <= 0)
	
	// Se continuar� solicitando ingresar n�meros enteros N (num) veces
	hacer
		contador = contador + 1	
		parActual = ParActual + 2
		suma = suma + parActual
		////////imprimir "parActual: ", parActual, ", suma: ", suma, "."
	mientras que (contador < num)
	
	// Se presenta la informaci�n solicitada por pantalla.
	escribir "La sumatoria para los primeros ", num, " n�meros pares es: ", suma, "."
	
FinAlgoritmo
