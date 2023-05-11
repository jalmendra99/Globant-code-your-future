// Clase 22 - Pr�cticos - Ejercicio 4 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Rellenar en un subproceso una matriz cuadrada con n�meros aleatorios 
// salvo en la diagonal principal, la cual debe rellenarse con ceros. 
// Una vez llena la matriz debe generar otro subproceso para imprimir la matriz.


// Principal.
Algoritmo clase22_practicos_ejercicio4
	
	// Definici�n de variables.
	definir matriz, fila, columna, n como entero
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero entero n para crear una matriz de n x n " Sin Saltar 
	escribir "y llenarla de n�meros aleatorios, excepto en la diagonal principal " Sin Saltar 
	escribir "Luego la misma se imprimir� por pantalla."
	
	// Se solicita el n�mero n al usuario.
	// Se fuerza a que est� entre 1 y 10 para que no quede una matriz muy grande de imprim�r por pantalla.
	Hacer
		escribir "Ingrese un n�mero entero entre 1 y 10 para n:"
		leer n		
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona la matriz al tama�o seleccionado por el usuario.
	Dimension  matriz[n,n]
	
	// Inicializaci�n de variables.	
	// Se lena la matriz con n�meros aleatorios
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta n - 1 con paso 1 Hacer
			// si coincide el n�mero de fila y columna, entonces se est� en la diagonal
			// principal y hay que asignar valor cero. Sin� un n�mero aleatorio.
			si fila = columna Entonces
				matriz[fila, columna] = 0
			SiNo
				matriz[fila, columna] = aleatorio(1,100)
			FinSi			
		FinPara	
	FinPara
	
	// Se imprime la informaci�n solicitada por pantalla: se imprime la matriz usando la funci�n solicitada.
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
			// Agrega un separador entre cada valor, a menos que sea la �ltima columna.
			si columna <> n -1 entonces
				escribir sin saltar " "
			finsi			
		FinPara	
		// Imprime un salto de l�nea para pasar a la siguiente l�nea en pantalla.
		escribir ""
	FinPara

FinSubProceso
