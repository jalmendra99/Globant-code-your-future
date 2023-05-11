// Clase 3 - Extra - Ejercicio 6 - página 2
// Fer V - jalmendra99@gmail.com
//
// Mostrar el área y perímetro de un hexágono.

// Se asume que el hexágono es regular
// (calcular para un irregular sería algo más complejo).

Algoritmo extra_ejercicio6
	
	// Definición de variables.
	definir lado, apotema Como real
	
	// Inicialización de variables.
	lado = 0	
	apotema = 0
	
	// Se informa premisa al usuario
	escribir "Se calculará el área y perímetro de un hexágono usando el largo de su lado y apotema ingresados."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el largo de un lado: "
	leer lado
	escribir "Ingrese el largo del apotema: "
	leer apotema
	
	// Calcular área y perímetro y mostrar al usuario
	escribir "El área del hexágono es ", lado * 6 * apotema / 2, " y el perímetro es ", lado * 6
	
	// La solución para hexágonos irregulares consiste en
	// dividir en cinco triángulos y calcular el área de cada uno, 
	// y posteriormente realizar la suma del área de cada triángulo 
	
FinAlgoritmo
