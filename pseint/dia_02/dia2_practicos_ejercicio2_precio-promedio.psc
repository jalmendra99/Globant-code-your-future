// Clase 2 - Pr�cticos - Ejercicio 1 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que calcule el precio promedio de un producto. 
// El precio promedio se debe calcular a partir del precio del mismo 
// producto en tres establecimientos distintos.

Algoritmo practicos_ejercicio2
	
	/// Definiendo variables.
	definir precio1, precio2, precio3 como real
	
	/// Inicializando variables.
	precio1=0
	precio2=0
	precio3=0
	
	/// Usuario ingresa valores a variables.
	escribir "Ingresar� el precio de un mismo producto en tres establecimientos distintos.."
	Escribir "Ingrese el precio #1: "
	leer precio1
	Escribir "Ingrese el precio #2: "
	leer precio2
	Escribir "Ingrese el precio #3: "
	leer precio3
	
	/// Se calcula e imprime el promedio solicitado.
	escribir "El precio promedio del producto es: ", (precio1 + precio2 + precio3) / 3
	
FinAlgoritmo