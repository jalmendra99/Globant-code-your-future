// Clase 3 - Pr�cticos - Ejercicio 3 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// A partir de una conocida cantidad de d�as que el usuario ingresa 
// a trav�s del teclado, escriba un programa para convertir los d�as en horas, 
// en minutos y en segundos. Por ejemplo
// 1 d�a = 24 horas = 1440 minutos = 86400 segundos

Algoritmo practicos_ejercicio3
	
	// Definici�n de variables.
	definir dias Como Real
	
	// Inicializaci�n de variables.
	dias = 0
	
	// Se informa premisa al usuario
	escribir "Se calcular� la cantidad de horas, minutos y segundos respecto a la cantidad de d�as ingresada."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el n�mero de d�as: " sin saltar
	leer dias
	
	// Calcular y mostrar en pantalla
	escribir dias, " d�as equivalen a ", dias * 24, " horas, o ", dias * 1440, " minutos, o ", dias * 86400, " segundos."
	
FinAlgoritmo
