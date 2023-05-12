// Clase 22 - Extras - Ejercicio 4 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que calcule la multiplicación de dos matrices 
// de enteros de 3x3. Inicialice las matrices para evitar el ingreso de datos por teclado.


// Principal.
Algoritmo clase22_extras_ejercicio4
	
	// Definición de variables.
	definir fila, columna Como Entero
	definir matriz1, matriz2, matrizResultado como entero
	
	dimension matriz1[3,3]
	dimension matriz2[3,3]
	dimension matrizResultado[3,3]
	
	// Se informa la premisa al usuario.
	escribir "Se crearán dos matrices de 3x3 y se calculará la multiplicación de las mismas."
	escribir "El resultado se mostrará por pantalla."	
	
	// Se lenan las 2 primeras matrices con números aleatorios
	// y la tercera con unos.
	para fila = 0 hasta 2 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer
			matriz1[fila, columna] = aleatorio(1, 100)
			matriz2[fila, columna] = aleatorio(1, 100)
		FinPara	
	FinPara
	
	// Se calcula la multiplicación de las dos primeras matrices
	// y se guarda el resultado en la tercera.	
	para fila = 0 hasta 2 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer
			matrizResultado[fila, columna] = matriz1[fila, columna] * matriz2[fila, columna]
		FinPara	
	FinPara	
	
	// Imprime las 3 matrices
	escribir "La matriz 1 es:"
	imprimeMatrizEnteros(matriz1, 3, 3)
	
	escribir ""	
	escribir "La matriz 2 es:"
	imprimeMatrizEnteros(matriz2, 3, 3)
	
	escribir ""
	escribir "La matriz Resultante (matriz1 * matriz2) es:"
	imprimeMatrizEnteros(matrizResultado, 3, 3)
	
finAlgoritmo



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
