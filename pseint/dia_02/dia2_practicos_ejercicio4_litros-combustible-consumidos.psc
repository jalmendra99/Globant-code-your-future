// Clase 2 - Prácticos - Ejercicio 4 - página 4
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que calcule cuántos litros de combustible 
// consumió un automóvil. El usuario ingresará una cantidad 
// de litros de combustible cargados en la estación y una cantidad 
// de kilómetros recorridos, después, el programa calculará el consumo (km/lt) 
// y se lo mostrará al usuario.

Algoritmo practicos_ejercicio4
	
	/// Definiendo variables.
	definir litros, kilometros como real
	
	/// Inicializando variables.
	litros = 0
	kilometros = 0
	
	/// Usuario ingresa valores a variables.
	escribir "Ingrese la cantidad de litros cargados en la estación."
	leer litros
	escribir "Ingrese la cantidad de kilómetros recorridos."
	leer kilometros
	
	/// Se calcula e imprime el consumo (kilómetros por litro) y se lo muestra al usuario
	escribir "El consumo ha sido de ", kilometros / litros , " kilómetros recorridos por cada litro de combustible."
	
FinAlgoritmo
