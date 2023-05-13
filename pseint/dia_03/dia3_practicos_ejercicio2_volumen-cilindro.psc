// Clase 3 - Prácticos - Ejercicio 2 - página 2
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que calcule el volumen de un cilindro. 
// Para ello se deberá solicitar al usuario que ingrese 
// el radio y la altura. Mostrar el resultado por pantalla.
// volumen = ? * radio2 * altura

Algoritmo practicos_ejercicio2
	
	// Definición de variables.
	definir radio, altura, numeroPi Como Real
	
	// Inicialización de variables.
	radio = 0
	altura = 0
	numeroPi = 3.14159  /// se podría haber usado también la constante de PSeInt 'pi'
	
	// Se informa premisa al usuario
	escribir "Se calculará el volumen de un cilindro, basado en el radio y la altura ingresada."

	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el radio de un cilindro: " sin saltar
	leer radio
	escribir "Ingrese la altura de un cilindro: " sin saltar
	leer altura
	
	// Calcular el volumen y mostrar en pantalla
	escribir "El volumen del cilindro es: ", numeroPi * radio * radio * altura
	
FinAlgoritmo
