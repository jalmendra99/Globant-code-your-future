// Clase 7 - Pr�cticos - Ejercicio 4 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Escriba un programa en el cual se ingrese un n�mero y mientras 
// ese n�mero sea mayor de 10, se pedir� el n�mero de nuevo.

Algoritmo practicos_ejercicio4
	
	// Definici�n de variables.
	definir num como entero
	
	// Inicializaci�n de variables.
	num = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero y mientras ese n�mero sea mayor de 10"
	escribir "se pedir� el n�mero denuevo."
	
	// Se solicita al usuario ingresar el n�mero.
	escribir "Por favor ingrese n�mero entero: (si es mayor a 10, se le pedir� otro)"
	leer num
	
	// Se contin�a solicitando ingresar n�meros mientras el n�mero ingresado sea mayor de 10.
	mientras num > 10 Hacer
		
		Escribir "Ingrese otro n�mero entero: "
		leer num
		
	FinMientras	
	
FinAlgoritmo
