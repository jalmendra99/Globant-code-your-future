// Clase 22 - Extras - Ejercicio 6 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que permita visualizar el resultado del producto 
// de una matriz de enteros de 3x3 por un vector de 3 elementos. 
// Los valores de la matriz y el vector pueden inicializarse 
// evitando as� el ingreso de datos por teclado. 
// Para conocer m�s acerca de c�mo se realiza la multiplicaci�n entre matrices 
// consultar el siguiente link:
// https://es.wikibooks.org/wiki/%C3%81lgebra_Lineal/Matriz_por_vector
//
// -------------------------
// Matriz      Vector        Resultado
// a b c   x  B = 1 2 3   =  a1 b2 c3
// d e f                     d1 e2 f3
// g h i                     g1 h2 i3
// 


// Principal.
Algoritmo clase22_extras_ejercicio6
	
	// Definici�n de variables.
	definir matriz, vector, matrizProducto, fila, columna, n, num como entero
	
	dimension matriz[3,3]
	dimension matrizProducto[3,3]
	dimension vector[3]
	
	// Se informa la premisa al usuario.
	escribir "Se crear�n una matr�z de 3 x 3 y un vector de 3 elementos " sin saltar
	escribir "y se llenar�n de valores al azar. Luego se calcular� el producto " sin saltar
	escribir "de la matr�z por el vector y se mostrar� el resultado."
	
	// Se lena la matriz con n�meros aleatorios entre 1 y 10
	// para que las verificaciones sean f�ciles.
	para fila = 0 hasta 2 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer
			matriz[fila, columna] = aleatorio(1,10)
		FinPara	
	FinPara

	// Se lena el vector con n�meros aleatorios entre 1 y 10
	// para que las verificaciones sean f�ciles.
	para fila = 0 hasta 2 con paso 1 Hacer
		vector[fila] = aleatorio(1,10)
	FinPara
	
	////////// INICIALIZAR MATRIZPRODUCTO ES NECESARIO???????
	
	// Calcula el producto entre la matriz y el vector, guardando los valores resultantes en matrizProducto.
	matrizXVector(matriz, vector, matrizProducto)
	
	//////// DEBUG INFO.
	// Se imprime la matriz.
	escribir "La matriz es:"
	imprimeMatriz3x3(matriz)
	escribir ""
	// Se imprime el vector.
	escribir "El vector es:"
	imprimeVector3(vector)
	escribir ""
	
	// Se muestra la informaci�n solicitada. La matrizProducto resultante del producto entre la matriz y el vector.
	escribir "La matr�z resultante del producto es:"
	imprimeMatriz3x3(matrizProducto)	
	
finAlgoritmo


// Subprograma imprimeMatriz3x3
// Imprime los valores de una "matriz" de 3x3.
SubProceso matrizXVector (matriz por referencia, vector por referencia, matrizProducto por referencia)
	
	definir fila, columna como entero
	
	// Se recorren todas las filas y columnas de matriz...
	para fila = 0 hasta 2 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer	
			// Se calcula el producto.
			///////// EXPLICAR MEJOR.
			matrizProducto[fila, columna] = matriz[fila, columna] * vector[columna]			
		FinPara	
	FinPara
	
FinSubProceso


// Subprograma imprimeMatriz3x3
// Imprime los valores de una "matriz" de 3x3.
SubProceso imprimeMatriz3x3 (matriz por referencia)
	
	definir fila, columna como entero
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta 2 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer	
			// Imprime cada valor de la matriz.
			escribir Sin Saltar matriz[fila, columna]
			// Agrega un separador entre cada valor, a menos que sea la �ltima columna.
			si columna <> 2 entonces
				escribir sin saltar " "
			finsi			
		FinPara	
		// Imprime un salto de l�nea para pasar a la siguiente l�nea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso


// Subprograma imprimeVector3
// Imprime los valores de un "vector" de 3.
SubProceso imprimeVector3 (vector por referencia)
	
	definir fila como entero
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta 2 con paso 1 Hacer
		// Imprime cada valor de la matriz.
		escribir Sin Saltar vector[fila]
		// Agrega un separador entre cada valor, a menos que sea la �ltima columna.
		si fila <> 2 entonces
			escribir sin saltar " "
		finsi	
		
	FinPara
	// Imprime un salto de l�nea para pasar a la siguiente l�nea en pantalla.
	escribir ""

FinSubProceso


