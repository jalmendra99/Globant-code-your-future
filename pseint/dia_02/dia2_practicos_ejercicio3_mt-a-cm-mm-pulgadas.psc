// Clase 2 - Pr�cticos - Ejercicio 3 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// A partir de una conocida cantidad de metros que el usuario 
// ingresa a trav�s del teclado se debe obtener su equivalente 
// en cent�metros, en mil�metros y en pulgadas.
// Ayuda: 1 pulgada equivale a 2.54 cent�metros.

Algoritmo practicos_ejercicio3
	
	/// Definiendo variables.
	definir metros como real
	
	/// Inicializando variables.
	metros=0
	
	/// Usuario ingresa valores a variables.
	escribir "Ingrese el n�mero de metros"
	leer metros
	
	/// Se calcula e imprime el equivalente en cent�metros, mil�metros y pulgadas
	escribir "Equivale a ", metros * 100 " cent�metros, ", metros * 1000, " mil�metros y ", metros * 100 * 2.54, " pulgadas."
	
FinAlgoritmo
