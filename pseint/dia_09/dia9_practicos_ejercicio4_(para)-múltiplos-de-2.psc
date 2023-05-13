// Clase 9 - Prácticos - Ejercicio 4 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que muestre la cantidad de números 
// que son múltiplos de 2 o de 3 comprendidos entre 1 y 100.

Algoritmo practicos_ejercicio4
	
	// Definición de variables.
	definir i, multiplos2, multiplos3 como entero
	
	// Inicialización de variables.		
	multiplos2 = 0
	multiplos3 = 0
	
	// Se informa premisa al usuario.
	escribir "Se mostrará la cantidad de números que son múltiplos de 2 o de 3 " sin saltar
	escribir "comprendidos entre 1 y 100."
	
	// Se calculan los múltiplos.
	para i = 1 hasta 100 con paso 1 hacer
		
		si (i mod 2 == 0) o (i mod 3 == 0) Entonces
			multiplos2 = multiplos2 + 1
		FinSi
		
	FinPara
	
	// Se presenta la información solicitada por pantalla.
	escribir "Entre 1 y 100 los múltiplos de 2 son " sin saltar
	escribir multiplos2, " y los múltiplos de 3 son ", multiplos3, "."

FinAlgoritmo
