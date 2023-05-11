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
	
	
	
	
	
	
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero entero n para crear una matriz de n x n " sin saltar
	escribir "y la misma se llenar� de n�meros aleatorios. Luego se imprimir� por pantalla."
	
	// Se solicita el n�mero n al usuario.
	// Se fuerza a que est� entre 1 y 10 para que no quede una matriz muy grande de imprim�r por pantalla.
	Hacer
		escribir "Ingrese un n�mero entero entre 1 y 10 para n:"
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona la matriz al tama�o seleccionado por el usuario (n x n).
	Dimension  matriz[n,n]
	
	// Inicializaci�n de variables.
	// Se lena la matriz con n�meros aleatorios.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta n - 1 con paso 1 Hacer
			matriz[fila, columna] = aleatorio(1,100)
		FinPara	
	FinPara

	// Se imprime la matriz usando el subprograma solicitado.
	imprimeMatriz(matriz, n)	
	
FinAlgoritmo


// Subprograma imprimeMatriz 
// Imprime una "matriz" de "n" x "n".
SubProceso imprimeMatriz (matriz por referencia, n)
	
	definir fila, columna como entero
	
	// Para cada fila y columna se imprime el valor de la matriz.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta n - 1 con paso 1 Hacer	
			escribir Sin Saltar matriz[fila, columna]
			// Agrega un separador entre cada valor, a menos que sea la �ltima columna.
			si columna <> n -1 entonces
				escribir sin saltar " | "
			finsi			
		FinPara	
		// Imprime un salto de l�nea para pasar a la siguiente l�nea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso
