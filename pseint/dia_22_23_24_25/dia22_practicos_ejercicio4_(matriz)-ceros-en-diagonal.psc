// Clase 22 - Prácticos - Ejercicio 4 - página 2
// Fer V - jalmendra99@gmail.com
//
// Rellenar en un subproceso una matriz cuadrada con números aleatorios 
// salvo en la diagonal principal, la cual debe rellenarse con ceros. 
// Una vez llena la matriz debe generar otro subproceso para imprimir la matriz.


// Principal.
Algoritmo clase22_practicos_ejercicio4
	
	// Definición de variables.
	definir matriz, fila, columna, n como entero
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número entero n para crear una matriz de n x n " Sin Saltar 
	escribir "y llenarla de números aleatorios, excepto en la diagonal principal " Sin Saltar 
	escribir "Luego la misma se imprimirá por pantalla."
	
	// Se solicita el número n al usuario.
	// Se fuerza a que esté entre 1 y 10 para que no quede una matriz muy grande de imprimír por pantalla.
	Hacer
		escribir "Ingrese un número entero entre 1 y 10 para n:"
		leer n		
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona la matriz al tamaño seleccionado por el usuario.
	Dimension  matriz[n,n]
	
	// Inicialización de variables.	
	// Se lena la matriz con números aleatorios
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta n - 1 con paso 1 Hacer
			// si coincide el número de fila y columna, entonces se está en la diagonal
			// principal y hay que asignar valor cero. Sinó un número aleatorio.
			si fila = columna Entonces
				matriz[fila, columna] = 0
			SiNo
				matriz[fila, columna] = aleatorio(1,100)
			FinSi			
		FinPara	
	FinPara
	
	// Se imprime la información solicitada por pantalla: se imprime la matriz usando la función solicitada.
	imprimeMatriz(matriz, n)	

	
//////	// Se imprime toda la matriz para verificar
//////	para fila = 0 hasta n - 1 con paso 1 Hacer
//////		para columna = 0 hasta n - 1 con paso 1 Hacer
//////			escribir "matriz [", fila, ",", columna, "] = ", matriz[fila, columna]
//////		FinPara	
//////	FinPara
	
FinAlgoritmo


// Subprograma imprimeMatriz 
// Imprime los valores de una "matriz" de nxn.
SubProceso imprimeMatriz (matriz por referencia, n)
	
	definir fila, columna como entero
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta n - 1 con paso 1 Hacer	
			// Imprime cada valor de la matriz.
			escribir Sin Saltar matriz[fila, columna]
			// Agrega un separador entre cada valor, a menos que sea la última columna.
			si columna <> n -1 entonces
				escribir sin saltar " "
			finsi			
		FinPara	
		// Imprime un salto de línea para pasar a la siguiente línea en pantalla.
		escribir ""
	FinPara

FinSubProceso
