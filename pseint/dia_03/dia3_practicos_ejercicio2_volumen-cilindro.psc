// Clase 3 - Pr�cticos - Ejercicio 2 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que calcule el volumen de un cilindro. 
// Para ello se deber� solicitar al usuario que ingrese 
// el radio y la altura. Mostrar el resultado por pantalla.
// volumen = ? * radio2 * altura

Algoritmo practicos_ejercicio2
	
	// Definici�n de variables.
	definir radio, altura, numeroPi Como Real
	
	// Inicializaci�n de variables.
	radio = 0
	altura = 0
	numeroPi = 3.14159  /// se podr�a haber usado tambi�n la constante de PSeInt 'pi'
	
	// Se informa premisa al usuario
	escribir "Se calcular� el volumen de un cilindro, basado en el radio y la altura ingresada."

	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el radio de un cilindro: " sin saltar
	leer radio
	escribir "Ingrese la altura de un cilindro: " sin saltar
	leer altura
	
	// Calcular el volumen y mostrar en pantalla
	escribir "El volumen del cilindro es: ", numeroPi * radio * radio * altura
	
FinAlgoritmo
