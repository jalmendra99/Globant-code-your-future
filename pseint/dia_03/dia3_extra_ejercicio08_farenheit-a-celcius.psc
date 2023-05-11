// Clase 3 - Extra - Ejercicio 8 - página 2
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que convierta un valor dado en grados Fahrenheit a grados Celsius.

Algoritmo extra_ejercicio8
	
	// Definición de variables.
	definir farenheit Como real
	
	// Inicialización de variables.
	farenheit = 0
	
	// Se informa premisa al usuario
	escribir "Se calculará el equivalente en Celcius a la cantidad ingresada en grados farenheit."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese la cantidad en grados farenheit: "
	leer farenheit
	
	// Convertir a celcius y mostrar al usuario
	escribir "El equivalente a ", farenheit, " grados farenheit es ", (farenheit - 32) * 5 / 9 , " grados celcius."
	
	// Pruebas:
	// -50 °F 	-45.56 °C 	 
	// -40 °F 	-40.00 °C 	 
	// -30 °F 	-34.44 °C 	
	// 0 °F 	-17.78 °C
	// 50 °F 	10.00 °C 	
	// Fuente: 
	// https://www.rapidtables.com/convert/temperature/fahrenheit-to-celsius.html
	
FinAlgoritmo
