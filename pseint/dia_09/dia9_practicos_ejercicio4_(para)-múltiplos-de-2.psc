// Clase 9 - Pr�cticos - Ejercicio 4 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que muestre la cantidad de n�meros 
// que son m�ltiplos de 2 o de 3 comprendidos entre 1 y 100.

Algoritmo practicos_ejercicio4
	
	// Definici�n de variables.
	definir i, multiplos2, multiplos3 como entero
	
	// Inicializaci�n de variables.		
	multiplos2 = 0
	multiplos3 = 0
	
	// Se informa premisa al usuario.
	escribir "Se mostrar� la cantidad de n�meros que son m�ltiplos de 2 o de 3 " sin saltar
	escribir "comprendidos entre 1 y 100."
	
	// Se calculan los m�ltiplos.
	para i = 1 hasta 100 con paso 1 hacer
		
		si (i mod 2 == 0) o (i mod 3 == 0) Entonces
			multiplos2 = multiplos2 + 1
		FinSi
		
	FinPara
	
	// Se presenta la informaci�n solicitada por pantalla.
	escribir "Entre 1 y 100 los m�ltiplos de 2 son " sin saltar
	escribir multiplos2, " y los m�ltiplos de 3 son ", multiplos3, "."

FinAlgoritmo
