// Clase 22 - Prácticos - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que rellene una matriz de 3x3 
// con 9 valores ingresados por el usuario y los muestre por pantalla.


// Principal.
Algoritmo clase22_practicos_ejercicio1
	
	// Definición de variables.
	definir matriz, fila, columna como entero
	Dimension  matriz[3,3]
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar 9 números enteros que luego se mostrarán en pantalla."
	
	// Se solicita la información al usuario...	
	para fila = 0 hasta 2 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer
			escribir "Ingrese un número entero para matriz[", fila, ",", columna, "]: " sin saltar
			leer matriz[fila, columna]			
		FinPara	
	FinPara
	
	// Y se presenta el resultado por pantalla.	
	para fila = 0 hasta 2 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer
			escribir "matriz [", fila, ",", columna, "] = ", matriz[fila, columna]			
		FinPara	
	FinPara

FinAlgoritmo
