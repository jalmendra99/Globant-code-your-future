// Clase 22 - Extras - Matrices - Ejercicio 1
// Fer V - jalmendra99@gmail.com
//
// "Salida de un laberinto": 
// Se trata de encontrar un camino que nos permita salir de un laberinto definido
// en una matriz NxN. Para movernos por el laberinto, s�lo podemos pasar
// de una casilla a otra que sea adyacente a la primera y no est� marcada como
// una casiilla prohibida (esto es, las casillas prohibidas determinan las
// paredes que forman el laberinto).
//
// Algoritmo recursivo:
// - Se comienza en la casilla (0,0) y se termina en la casilla (N-1, N-1)
// - Nos movemos a una celda adyacente si esto es posible.
// - Cuando llegamos a una situaci�n en la que no podemos realizar ning�n
//   movimiento que nos lleve a una celda que no hayamos visitado ya, 
//   retrocedemos sobre nuestros pasos y buscamos un camino alternativo


// --------------
// Fer: Laberintos de ejemplo:
// # = Pared (casilla prohibida)
// E = Entrada al laberinto
// S = Salida del laberinto
// "" = Celda del laberinto todav�a no recorrida
// * = Celda del laberinto ya recorrida
// P = posici�n actual
//
// 1) 
// ################
// E #   ##########
// # # # #        #
// # # # ### #### #
// #   #     #    #
// ###########S####


// Principal.
Algoritmo clase22_extras_matrices_ejercicio1
	
	// Definici�n de variables.
	definir laberinto, fila, columna como entero
	
	// Dimensionar laberinto
	
	// Llenar laberinto
	
	// Recorrer e imprimir laberinto (recursivo)
	// Frenar esto "paso a paso" para que el usuario
	// "vea" como se est� recorriendo el laberinto.
	
	
	
	
	
	
	
	
	
	
	
FinAlgoritmo



// Subprograma imprimeLaberinto(laberinto, n, m)
// Similar a subprograma imprimeMatriz(), pero no imprime separadores de columnas.
// Imprime por pantalla una matriz "laberinto" de tama�o "n" x "n".
SubProceso imprimeLaberinto (laberinto por referencia, n, m)
	
	definir fila, columna como entero
	
	// Para cada fila y columna se imprime el valor de la matriz.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta m - 1 con paso 1 Hacer	
			escribir Sin Saltar laberinto[fila, columna]
		FinPara	
		// Imprime un salto de l�nea para pasar a la siguiente l�nea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso
