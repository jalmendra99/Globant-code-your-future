// Clase 22 - Extras - Ejercicio 1 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que rellene de n�meros aleatorios una matriz 
// a trav�s de un subprograma y generar otro subprograma que muestre por pantalla la matriz final.


// Principal.
Algoritmo clase22_extras_ejercicio1
	
	// Definici�n de variables.
	definir matriz, fila, columna, n como entero	
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero entero n para crear una matriz de n x n " Sin Saltar 
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
