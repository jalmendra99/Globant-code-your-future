// Clase 22 - Extras - Ejercicio 6 - página 3
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que permita visualizar el resultado del producto 
// de una matriz de enteros de 3x3 por un vector de 3 elementos. 
// Los valores de la matriz y el vector pueden inicializarse 
// evitando así el ingreso de datos por teclado. 
// Para conocer más acerca de cómo se realiza la multiplicación entre matrices 
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
	
	// Definición de variables.
	definir matriz, vector, matrizProducto, fila, columna, n, num como entero
	
	dimension matriz[3,3]
	dimension matrizProducto[3,3]
	dimension vector[3]
	
	// Se informa la premisa al usuario.
	escribir "Se crearán una matríz de 3 x 3 y un vector de 3 elementos " sin saltar
	escribir "y se llenarán de valores al azar. Luego se calculará el producto " sin saltar
	escribir "de la matríz por el vector y se mostrará el resultado."
	
	// Se lena la matriz con números aleatorios entre 1 y 10
	// para que las verificaciones sean fáciles.
	para fila = 0 hasta 2 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer
			matriz[fila, columna] = aleatorio(1,10)
		FinPara	
	FinPara

	// Se lena el vector con números aleatorios entre 1 y 10
	// para que las verificaciones sean fáciles.
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
	
	// Se muestra la información solicitada. La matrizProducto resultante del producto entre la matriz y el vector.
	escribir "La matríz resultante del producto es:"
	imprimeMatrizEnteros(matrizProducto, 3, 3)	
	
finAlgoritmo



// Subprograma matrizXVector(matriz, vector, matrizProducto)
// Multiplica los valores de una "matriz" de tamaño 3x3 por un "vector" de tamaño 3
// y guarda los resultados en una "matrizProducto" de tamaño 3x3.
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
		// Agrega un separador entre cada valor, a menos que sea la última columna.
		si fila <> 2 entonces
			escribir sin saltar " "
		finsi	
		
	FinPara
	// Imprime un salto de línea para pasar a la siguiente línea en pantalla.
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
////////////			// Agrega un separador entre cada valor, a menos que sea la última columna.
////////////			si columna <> 2 entonces
////////////				escribir sin saltar " "
////////////			finsi			
////////////		FinPara	
////////////		// Imprime un salto de línea para pasar a la siguiente línea en pantalla.
////////////		escribir ""
////////////	FinPara
////////////	
////////////FinSubProceso



// Subprograma imprimeMatrizEnteros(matriz, n, m)
// Imprime los valores de una "matriz" de números enteros, 
// de tamaño "n" x "m" ("n" filas por "m" columnas).
// Ordena los espaciados de las columnas para que en pantalla se muestre "prolija".
SubProceso imprimeMatrizEnteros (matriz por referencia, n, m)
	
	definir fila, columna, num, mayor, espacios, i como entero
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta m - 1 con paso 1 Hacer
			
			// Se asigna el número de la posición actual de la matriz en "num".
			num = matriz[fila, columna]
			
			// se calcula el numero mayor que haya en la matriz...
			mayor = calculaMayor(matriz, n, m)
			
			//... para calcular el espaciado necesario que hay que escribir 
			// entre columnas para que la matriz quede prolija.
			espacios = cantidadDigitos(mayor)
			
			// Se calcula la cantidad de dígitos del número actual "num", y dependiendo
			// de la misma, se agregan o quitan espacios antes de escribirlo.
			// ej: 
			//     num =   1 -> se imprime -> "  1" (o sea, dos espacios y el número de un dígito).
			//     num =  10 -> se imprime -> " 10" (o sea, un espacio y el número de dos dígitos).
			//     num = 100 -> se imprime -> "100" (o sea, ningún espacio y el número de tres dígitos).
			//  etc.
			
			// Se escribe la cantidad de espacios antes del número actual.
			para i = 0 hasta espacios - 1 - cantidadDigitos(num) con paso 1 Hacer
				escribir " " sin saltar
			FinPara
			
			// Se escribe el número actual.
			escribir num Sin Saltar
			
			// Mientras la columna que se está imprimiendo no sea la última, se escribe un espacio 
			// para separar el valor de la columna actual, del de la siguiente.
			si columna <> m - 1 Entonces
				escribir " " sin saltar
			FinSi
			
		FinPara			
		
		// Imprime un salto de línea para pasar a imprimir la siguiente línea de la matriz en pantalla.
		escribir ""
	FinPara
	
FinSubProceso



// Función cantidadDigitos(num)   <--- Usada por la función imprimeMatrizEnteros()
// retorna la cantidad de dígitos que ocupa un número entero "num".
// ej: 100 retorna 3; 10 retorna 2, 1000 retorna 4, etc
funcion digitos = cantidadDigitos(num)
	definir digitos Como Entero
	definir temporal Como Real
	
	// Se usa una variable temporal Real en vez de entera
	// porque las divisiones pueden dar resultados con coma.
	temporal = num
	digitos = 1
	
	// Se calcula la cantidad de dígitos usando trunc()
	mientras trunc(temporal / 10) > 0 hacer
		digitos = digitos + 1
		temporal = temporal / 10
	FinMientras	
	
FinFuncion



// Función calculaMayor(matriz, n, m)   <--- Usada por la función imprimeMatrizEnteros()
// retorna el número mayor de una "matriz" de tamaño "n" x "m".
funcion mayor = calculaMayor(matriz por referencia, n, m)
	definir mayor, fila, columna Como Entero
	
	// Para todas las filas y columnas de una "matriz" de tamaño "n" x "m"...
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta m - 1 con paso 1 Hacer
			
			// Inicializa la variable "mayor" si recién se está recorriendo
			// la primera posición de la matriz (fila == 0 y columna == 0).
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
