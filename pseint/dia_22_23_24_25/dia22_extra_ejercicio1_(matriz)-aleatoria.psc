// Clase 22 - Extras - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que rellene de números aleatorios una matriz 
// a través de un subprograma y generar otro subprograma que muestre por pantalla la matriz final.


// Principal.
Algoritmo clase22_extras_ejercicio1
	
	// Definición de variables.
	definir matriz, fila, columna, n como entero	
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número entero n para crear una matriz de n x n " Sin Saltar 
	escribir "y la misma se llenará de números aleatorios. Luego se imprimirá por pantalla."
	
	// Se solicita el número n al usuario.
	// Se fuerza a que esté entre 1 y 10 para que no quede una matriz muy grande de imprimír por pantalla.
	Hacer
		escribir "Ingrese un número entero entre 1 y 10 para n:"
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona la matriz al tamaño seleccionado por el usuario (n x n).
	Dimension  matriz[n,n]
	
	// Inicialización de variables.
	// Se lena la matriz con números aleatorios.
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
			// Agrega un separador entre cada valor, a menos que sea la última columna.
			si columna <> n -1 entonces
				escribir sin saltar " | "
			finsi			
		FinPara	
		// Imprime un salto de línea para pasar a la siguiente línea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso
