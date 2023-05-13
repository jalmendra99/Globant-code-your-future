// Clase 15 - Pr�cticos - Ejercicio 1 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un procedimiento que permita intercambiar el valor de dos 
// variables de tipo entero. 
// La variable A, debe terminar con el valor de la variable B.


// Principal.
Algoritmo ejercicio1
	
	// Definici�n de variables.
	definir num1, num2 Como entero
	
	// Inicializaci�n de variables.
	num1 = 0	
	num2 = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar dos n�meros enteros positivos y " sin saltar
	escribir "se invertir�n sus valores dentro de un procedimiento."
	
	// Se solicita la informaci�n al usuario.	
	// Se fuerza a que los n�meros ingresados sean mayores o iguales a cero.
	Hacer
		escribir "Ingrese un n�mero entero positivo: " sin saltar
		leer num1		
		escribir "Ingrese otro n�mero entero positivo: " sin saltar
		leer num2		
	Mientras Que num1 < 0 o num2 < 0
	
	// Se invierten los valores de las variables usando el procedimiento solicitado.
	// Y se presenta el resultado por pantalla.	
	escribir "Antes de llamar al procedimiento."
	escribir "num1: ", num1, ", num2: ", num2, "."
	intercambiar(num1, num2)
	escribir "Despu�s de llamar al procedimiento."
	escribir "num1: ", num1, ", num2: ", num2, "."	
	
FinAlgoritmo


// Procedimiento intercambiar
// Invierte los valores de las variables enteras que recibe.
SubProceso intercambiar (numero1 por referencia, numero2 por referencia)
	
	definir auxiliar Como Entero
	
	// Se invierten los valores de num1 y num2 usando un tercer entero 'auxiliar'.
	auxiliar = numero2
	numero2 = numero1
	numero1 = auxiliar
	
FinSubProceso
