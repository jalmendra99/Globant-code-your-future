// Clase 8 - Prácticos - Ejercicio 6 - página 2
// Fer V - jalmendra99@gmail.com
//
// Se pide escribir un programa que calcule la suma de los N primeros números pares. 
// Es decir, si ingresamos el número 5 como valor de N, 
// el algoritmo nos debe realizar la suma de los siguientes valores: 2+4+6+8+10.

Algoritmo practicos_ejercicio6
	
	// Definición de variables.
	definir num, suma, parActual, contador como entero

	// Inicialización de variables.	
	num = 0
	suma = 0
	parActual = 0
	contador = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitará ingresar un número entero (N)"
	escribir "y se calculará la suma de los N primeros números pares."
	
	// Se valida que se ingrese un número positivo.
	hacer
		escribir "Ingrese un número entero positivo: "
		leer num
	mientras que (num <= 0)
	
	// Se continuará solicitando ingresar números enteros N (num) veces
	hacer
		contador = contador + 1	
		parActual = ParActual + 2
		suma = suma + parActual
		////////imprimir "parActual: ", parActual, ", suma: ", suma, "."
	mientras que (contador < num)
	
	// Se presenta la información solicitada por pantalla.
	escribir "La sumatoria para los primeros ", num, " números pares es: ", suma, "."
	
FinAlgoritmo
