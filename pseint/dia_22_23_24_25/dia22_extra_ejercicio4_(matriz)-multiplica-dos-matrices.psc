// Clase 22 - Extras - Ejercicio 4 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que calcule la multiplicaci�n de dos matrices 
// de enteros de 3x3. Inicialice las matrices para evitar el ingreso de datos por teclado.


// Principal.
Algoritmo clase22_extras_ejercicio4
	
	// Definici�n de variables.
	definir fila, columna Como Entero
	definir matriz1, matriz2, matrizResultado como entero
	
	dimension matriz1[3,3]
	dimension matriz2[3,3]
	dimension matrizResultado[3,3]
	
	// Se informa la premisa al usuario.
	escribir "Se crear�n dos matrices de 3x3 y se calcular� la multiplicaci�n de las mismas."
	escribir "El resultado se mostrar� por pantalla."	
	
	// Se lenan las 2 primeras matrices con n�meros aleatorios
	// y la tercera con unos.
	para fila = 0 hasta 2 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer
			matriz1[fila, columna] = aleatorio(1, 100)
			matriz2[fila, columna] = aleatorio(1, 100)
		FinPara	
	FinPara
	
	// Se calcula la multiplicaci�n de las dos primeras matrices
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
