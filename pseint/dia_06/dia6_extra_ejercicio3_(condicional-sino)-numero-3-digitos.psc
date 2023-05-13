// Clase 6 - Extra - Ejercicio 3 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Condicional m�ltiple
// Hacer un algoritmo que lea un n�mero por el teclado y determine si tiene tres d�gitos.

Algoritmo extra_ejercicio3
	
	// Definici�n de variables.
	definir num Como entero
	definir tresDigitos Como Logico
	
	// Inicializaci�n de variables.
	num = 0
	tresDigitos = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedir� al usuario ingresar un n�mero " sin saltar
	escribir "y se determinar� si el mismo tiene tres d�gitos."
	
	// Cargando el n�mero ingresado por el usuario.
	escribir "Ingrese un n�mero entero (de tres d�gitos o no): " sin saltar
	leer num
	
	// Se determina si el n�mero ingresado tiene tres d�gitos o no.
	tresDigitos = (trunc(num / 1000) == 0) y (num > 99)
	
	// Se muestra en pantalla el resultado.
	si tresDigitos
		escribir "El n�mero ingresado tiene tres d�gitos."
	SiNo
		escribir "El n�mero ingresado NO tiene tres d�gitos."
	FinSi
	
FinAlgoritmo