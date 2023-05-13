// Clase 7 - Prácticos - Ejercicio 6 - página 2
// Fer V - jalmendra99@gmail.com
//
// Escriba un programa que solicite al usuario números decimales mientras 
// que el usuario escriba números mayores al primero que se ingresó. 
// Por ejemplo: si el usuario ingresa como primer número un 3.1, 
// y luego ingresa un 4, el programa debe solicitar un tercer número. 
// El programa continuará solicitando valores sucesivamente 
// mientras los valores ingresados sean mayores que 3.1, caso contrario, el programa finaliza.

Algoritmo practicos_ejercicio6
	
	// Definición de variables.
	definir num, primero como real
	
	// Inicialización de variables.	
	num = 0
	primero = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitará ingresar números reales, siempre que el último ingresado sea mayor al primero."
	escribir "El programa finalizará en cuanto se ingrese un número igual o menor al primer número ingresado."
	
	// Se solicita al usuario ingresar el primer número	
	escribir "Por favor ingrese un número real: " sin saltar
	leer num
	
	primero = num	
	
	Escribir "Ingrese otro número real: " sin saltar
	leer num
	
	// Se continúa solicitando ingresar números mientras el número ingresado sea mayor al primero.
	mientras num > primero Hacer		
		Escribir "Ingrese otro número real: " sin saltar
		leer num		
	FinMientras	
	
FinAlgoritmo
