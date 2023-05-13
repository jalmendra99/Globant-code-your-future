// Clase 6 - Extra - Ejercicio 3 - página 2
// Fer V - jalmendra99@gmail.com
//
// Condicional múltiple
// Hacer un algoritmo que lea un número por el teclado y determine si tiene tres dígitos.

Algoritmo extra_ejercicio3
	
	// Definición de variables.
	definir num Como entero
	definir tresDigitos Como Logico
	
	// Inicialización de variables.
	num = 0
	tresDigitos = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedirá al usuario ingresar un número " sin saltar
	escribir "y se determinará si el mismo tiene tres dígitos."
	
	// Cargando el número ingresado por el usuario.
	escribir "Ingrese un número entero (de tres dígitos o no): " sin saltar
	leer num
	
	// Se determina si el número ingresado tiene tres dígitos o no.
	tresDigitos = (trunc(num / 1000) == 0) y (num > 99)
	
	// Se muestra en pantalla el resultado.
	si tresDigitos
		escribir "El número ingresado tiene tres dígitos."
	SiNo
		escribir "El número ingresado NO tiene tres dígitos."
	FinSi
	
FinAlgoritmo