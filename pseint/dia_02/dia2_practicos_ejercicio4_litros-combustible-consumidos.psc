// Clase 2 - Pr�cticos - Ejercicio 4 - p�gina 4
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que calcule cu�ntos litros de combustible 
// consumi� un autom�vil. El usuario ingresar� una cantidad 
// de litros de combustible cargados en la estaci�n y una cantidad 
// de kil�metros recorridos, despu�s, el programa calcular� el consumo (km/lt) 
// y se lo mostrar� al usuario.

Algoritmo practicos_ejercicio4
	
	/// Definiendo variables.
	definir litros, kilometros como real
	
	/// Inicializando variables.
	litros = 0
	kilometros = 0
	
	/// Usuario ingresa valores a variables.
	escribir "Ingrese la cantidad de litros cargados en la estaci�n."
	leer litros
	escribir "Ingrese la cantidad de kil�metros recorridos."
	leer kilometros
	
	/// Se calcula e imprime el consumo (kil�metros por litro) y se lo muestra al usuario
	escribir "El consumo ha sido de ", kilometros / litros , " kil�metros recorridos por cada litro de combustible."
	
FinAlgoritmo
