// Clase 15 - Prácticos - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un procedimiento que permita intercambiar el valor de dos 
// variables de tipo entero. 
// La variable A, debe terminar con el valor de la variable B.


// Principal.
Algoritmo ejercicio1
	
	// Definición de variables.
	definir num1, num2 Como entero
	
	// Inicialización de variables.
	num1 = 0	
	num2 = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar dos números enteros positivos y " sin saltar
	escribir "se invertirán sus valores dentro de un procedimiento."
	
	// Se solicita la información al usuario.	
	// Se fuerza a que los números ingresados sean mayores o iguales a cero.
	Hacer
		escribir "Ingrese un número entero positivo: " sin saltar
		leer num1		
		escribir "Ingrese otro número entero positivo: " sin saltar
		leer num2		
	Mientras Que num1 < 0 o num2 < 0
	
	// Se invierten los valores de las variables usando el procedimiento solicitado.
	// Y se presenta el resultado por pantalla.	
	escribir "Antes de llamar al procedimiento."
	escribir "num1: ", num1, ", num2: ", num2, "."
	intercambiar(num1, num2)
	escribir "Después de llamar al procedimiento."
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
