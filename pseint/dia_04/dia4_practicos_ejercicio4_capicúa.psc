// Clase 4 - Prácticos - Ejercicio 4 - página 2
// Fer V - jalmendra99@gmail.com
//
// Diseñe un algoritmo que lea un número de tres cifras y determine si es o no capicúa.

Algoritmo extra_ejercicio4
	
	// Definición de variables.
	definir numeroIng, nroInicial, nroFinal Como entero
	definir esCapicua Como Logico
	
	// Inicialización de variables.
	numeroIng = 0
	nroInicial = 0
	nroFinal = 0
	esCapicua = Falso
	
	// Se informa premisa al usuario
	escribir "Se informará si el número de tres cifras ingresado es capicúa."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el número (de tres cífras): " sin saltar
	leer numeroIng
	
	nroInicial = trunc(numeroIng / 100)
	nroFinal = numeroIng % 10 
	esCapicua = nroInicial == nroFinal
	
	// Si el número ingresado no tiene tres cifras, se muestra un error.
	si numeroIng > 1000 o numeroIng < 99 Entonces
		escribir "Error. Solo se pueden ingresar números de tres cifras."		
	SiNo
		/// Se verifica que el número sea capicúa
		si esCapicua entonces
			escribir "El número es capicúa."
		SiNo
			escribir "El número NO es capicúa."
		FinSi
	FinSi
	
	// Pruebas:
	// 303
	// 201
	// 202
	// 545
	
FinAlgoritmo