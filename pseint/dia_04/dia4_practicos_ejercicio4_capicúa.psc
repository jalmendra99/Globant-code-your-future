// Clase 4 - Pr�cticos - Ejercicio 4 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Dise�e un algoritmo que lea un n�mero de tres cifras y determine si es o no capic�a.

Algoritmo extra_ejercicio4
	
	// Definici�n de variables.
	definir numeroIng, nroInicial, nroFinal Como entero
	definir esCapicua Como Logico
	
	// Inicializaci�n de variables.
	numeroIng = 0
	nroInicial = 0
	nroFinal = 0
	esCapicua = Falso
	
	// Se informa premisa al usuario
	escribir "Se informar� si el n�mero de tres cifras ingresado es capic�a."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el n�mero (de tres c�fras): " sin saltar
	leer numeroIng
	
	nroInicial = trunc(numeroIng / 100)
	nroFinal = numeroIng % 10 
	esCapicua = nroInicial == nroFinal
	
	// Si el n�mero ingresado no tiene tres cifras, se muestra un error.
	si numeroIng > 1000 o numeroIng < 99 Entonces
		escribir "Error. Solo se pueden ingresar n�meros de tres cifras."		
	SiNo
		/// Se verifica que el n�mero sea capic�a
		si esCapicua entonces
			escribir "El n�mero es capic�a."
		SiNo
			escribir "El n�mero NO es capic�a."
		FinSi
	FinSi
	
	// Pruebas:
	// 303
	// 201
	// 202
	// 545
	
FinAlgoritmo