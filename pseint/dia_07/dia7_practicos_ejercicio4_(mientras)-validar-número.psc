// Clase 7 - Prácticos - Ejercicio 4 - página 2
// Fer V - jalmendra99@gmail.com
//
// Escriba un programa en el cual se ingrese un número y mientras 
// ese número sea mayor de 10, se pedirá el número de nuevo.

Algoritmo practicos_ejercicio4
	
	// Definición de variables.
	definir num como entero
	
	// Inicialización de variables.
	num = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitará ingresar un número y mientras ese número sea mayor de 10"
	escribir "se pedirá el número denuevo."
	
	// Se solicita al usuario ingresar el número.
	escribir "Por favor ingrese número entero: (si es mayor a 10, se le pedirá otro)"
	leer num
	
	// Se continúa solicitando ingresar números mientras el número ingresado sea mayor de 10.
	mientras num > 10 Hacer
		
		Escribir "Ingrese otro número entero: "
		leer num
		
	FinMientras	
	
FinAlgoritmo
