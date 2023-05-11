// Clase 2 - Prácticos - Ejercicio 3 - página 3
// Fer V - jalmendra99@gmail.com
//
// A partir de una conocida cantidad de metros que el usuario 
// ingresa a través del teclado se debe obtener su equivalente 
// en centímetros, en milímetros y en pulgadas.
// Ayuda: 1 pulgada equivale a 2.54 centímetros.

Algoritmo practicos_ejercicio3
	
	/// Definiendo variables.
	definir metros como real
	
	/// Inicializando variables.
	metros=0
	
	/// Usuario ingresa valores a variables.
	escribir "Ingrese el número de metros"
	leer metros
	
	/// Se calcula e imprime el equivalente en centímetros, milímetros y pulgadas
	escribir "Equivale a ", metros * 100 " centímetros, ", metros * 1000, " milímetros y ", metros * 100 * 2.54, " pulgadas."
	
FinAlgoritmo
