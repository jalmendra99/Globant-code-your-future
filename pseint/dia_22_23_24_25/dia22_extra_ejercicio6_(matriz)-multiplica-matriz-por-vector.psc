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
	
	// Calcula el producto entre la matriz y el vector, guardando los valores resultantes en matrizProducto.
	matrizXVector(matriz, vector, matrizProducto)
	
	// Se imprime la matriz.
	escribir "La matriz es:"
	imprimeMatrizEnteros(matriz, 3, 3)
	escribir ""
	
	// Se imprime el vector.
	escribir "El vector es:"
	imprimeVector3(vector)
	escribir ""
	
	// Se muestra la informaci�n solicitada. La matrizProducto resultante del producto entre la matriz y el vector.
	escribir "La matr�z resultante del producto es:"
	imprimeMatrizEnteros(matrizProducto, 3, 3)	
	
finAlgoritmo



// Subprograma matrizXVector(matriz, vector, matrizProducto)
// Multiplica los valores de una "matriz" de tama�o 3x3 por un "vector" de tama�o 3
// y guarda los resultados en una "matrizProducto" de tama�o 3x3.
SubProceso matrizXVector (matriz por referencia, vector por referencia, matrizProducto por referencia)
	
	definir fila, columna como entero
	
	// Se recorren todas las filas y columnas de la matriz...
	para fila = 0 hasta 2 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer	
			
			// Se calcula el producto de la siguiente forma...
			// Matriz      Vector       Resultado
			// a b c   x   1 2 3   =    a1 b2 c3
			// d e f                    d1 e2 f3
			// g h i                    g1 h2 i3
			matrizProducto[fila, columna] = matriz[fila, columna] * vector[columna]			
		FinPara	
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



////////////// Subprograma imprimeMatriz3x3
////////////// Imprime los valores de una "matriz" de 3x3.
////////////SubProceso imprimeMatriz3x3 (matriz por referencia)
////////////	
////////////	definir fila, columna como entero
////////////	
////////////	// Para cada fila y columna, se imprime el valor de la matriz.
////////////	para fila = 0 hasta 2 con paso 1 Hacer
////////////		para columna = 0 hasta 2 con paso 1 Hacer	
////////////			// Imprime cada valor de la matriz.
////////////			escribir Sin Saltar matriz[fila, columna]
////////////			// Agrega un separador entre cada valor, a menos que sea la �ltima columna.
////////////			si columna <> 2 entonces
////////////				escribir sin saltar " "
////////////			finsi			
////////////		FinPara	
////////////		// Imprime un salto de l�nea para pasar a la siguiente l�nea en pantalla.
////////////		escribir ""
////////////	FinPara
////////////	
////////////FinSubProceso



// Subprograma imprimeMatrizEnteros(matriz, n, m)
// Imprime los valores de una "matriz" de n�meros enteros, 
// de tama�o "n" x "m" ("n" filas por "m" columnas).
// Ordena los espaciados de las columnas para que en pantalla se muestre "prolija".
SubProceso imprimeMatrizEnteros (matriz por referencia, n, m)
	
	definir fila, columna, num, mayor, espacios, i como entero
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta m - 1 con paso 1 Hacer
			
			// Se asigna el n�mero de la posici�n actual de la matriz en "num".
			num = matriz[fila, columna]
			
			// se calcula el numero mayor que haya en la matriz...
			mayor = calculaMayor(matriz, n, m)
			
			//... para calcular el espaciado necesario que hay que escribir 
			// entre columnas para que la matriz quede prolija.
			espacios = cantidadDigitos(mayor)
			
			// Se calcula la cantidad de d�gitos del n�mero actual "num", y dependiendo
			// de la misma, se agregan o quitan espacios antes de escribirlo.
			// ej: 
			//     num =   1 -> se imprime -> "  1" (o sea, dos espacios y el n�mero de un d�gito).
			//     num =  10 -> se imprime -> " 10" (o sea, un espacio y el n�mero de dos d�gitos).
			//     num = 100 -> se imprime -> "100" (o sea, ning�n espacio y el n�mero de tres d�gitos).
			//  etc.
			
			// Se escribe la cantidad de espacios antes del n�mero actual.
			para i = 0 hasta espacios - 1 - cantidadDigitos(num) con paso 1 Hacer
				escribir " " sin saltar
			FinPara
			
			// Se escribe el n�mero actual.
			escribir num Sin Saltar
			
			// Mientras la columna que se est� imprimiendo no sea la �ltima, se escribe un espacio 
			// para separar el valor de la columna actual, del de la siguiente.
			si columna <> m - 1 Entonces
				escribir " " sin saltar
			FinSi
			
		FinPara			
		
		// Imprime un salto de l�nea para pasar a imprimir la siguiente l�nea de la matriz en pantalla.
		escribir ""
	FinPara
	
FinSubProceso



// Funci�n cantidadDigitos(num)   <--- Usada por la funci�n imprimeMatrizEnteros()
// retorna la cantidad de d�gitos que ocupa un n�mero entero "num".
// ej: 100 retorna 3; 10 retorna 2, 1000 retorna 4, etc
funcion digitos = cantidadDigitos(num)
	definir digitos Como Entero
	definir temporal Como Real
	
	// Se usa una variable temporal Real en vez de entera
	// porque las divisiones pueden dar resultados con coma.
	temporal = num
	digitos = 1
	
	// Se calcula la cantidad de d�gitos usando trunc()
	mientras trunc(temporal / 10) > 0 hacer
		digitos = digitos + 1
		temporal = temporal / 10
	FinMientras	
	
FinFuncion



// Funci�n calculaMayor(matriz, n, m)   <--- Usada por la funci�n imprimeMatrizEnteros()
// retorna el n�mero mayor de una "matriz" de tama�o "n" x "m".
funcion mayor = calculaMayor(matriz por referencia, n, m)
	definir mayor, fila, columna Como Entero
	
	// Para todas las filas y columnas de una "matriz" de tama�o "n" x "m"...
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta m - 1 con paso 1 Hacer
			
			// Inicializa la variable "mayor" si reci�n se est� recorriendo
			// la primera posici�n de la matriz (fila == 0 y columna == 0).
			si fila == 0 y columna == 0 Entonces
				mayor = matriz[fila, columna]
			FinSi
			
			// Guarda el mayor valor en la variable "mayor".
			si matriz[fila, columna] > mayor Entonces
				mayor = matriz[fila, columna]
			FinSi
			
		FinPara
	FinPara
	
FinFuncion
