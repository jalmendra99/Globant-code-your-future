// Clase 15 - Pr�cticos - Ejercicio 2 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Crear un procedimiento que calcule la temperatura media de un d�a 
// a partir de la temperatura m�xima y m�nima. 
// Crear un programa principal, que, utilizando un procedimiento, 
// vaya pidiendo la temperatura m�xima y m�nima de n d�as 
// y vaya mostrando la media de cada d�a. 
// El programa pedir� el n�mero de d�as que se van a introducir.


// Principal.
Algoritmo ejercicio2
	
	// Definici�n de variables.
	definir maxima, minima como real
	definir dias, i como entero
	
	// Inicializaci�n de variables.
	maxima = 0	
	minima = 0
	dias = 0
	
	// Se informa la premisa al usuario.
	escribir sin saltar "Se solicitar� ingresar la cantidad de dias para cada uno de los cuales "
	escribir            "se ingresar�n las temperaturas m�xima y m�nima para luego calcular la media de cada d�a."
	
	// Se solicita la informaci�n al usuario...
	
	// Se fuerza a que la cantidad de d�as sea positiva o cero.
	Hacer
		escribir "Ingrese la cantidad de d�as a procesar: "
		leer dias
	Mientras Que dias < 0
	
	para i = 1 hasta dias con paso 1 Hacer
		ingresarTemperaturas(maxima, minima, i) // por referencia.
		MostrarTemperaturaMedia(maxima, minima) // por valor.
	FinPara	
	
FinAlgoritmo


// Procedimiento ingresarTemperaturas
// Calcula la el promedio entre las dos temperaturas ingresadas (m�xima y m�nima)
// Y muestra ese promedio por pantalla.
SubProceso ingresarTemperaturas (minima por referencia, maxima por referencia, dia)
	
	escribir "Para el d�a ", dia, ":"
	escribir "Ingrese la temperatura m�nima: "
	leer minima
	
	escribir "Ingrese la temperatura m�xima: "
	leer maxima	
	
FinSubProceso


// Procedimiento MostrarTemperaturaMedia
// Calcula la el promedio entre las dos temperaturas ingresadas (m�xima y m�nima)
// Y muestra ese promedio por pantalla.
SubProceso MostrarTemperaturaMedia (minima, maxima)
	
	definir media Como Real
	media = ((maxima - minima) / 2) + minima
	escribir "La temperatura media entre ", minima, " y ", maxima, " es ", media, "."
	
FinSubProceso
