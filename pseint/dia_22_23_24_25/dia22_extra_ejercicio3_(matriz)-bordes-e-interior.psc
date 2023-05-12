// Clase 22 - Extras - Ejercicio 3 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz 
// de unos y ceros. Llenando el marco o la delimitación externa de la matriz de unos 
// y la parte interna de ceros.
// Por ejemplo, nuestro matriz final debería verse así:
// 111111111111111
// 100000000000001
// 100000000000001
// 100000000000001
// 111111111111111


// Principal.
Algoritmo clase22_extras_ejercicio3	
	
	// Definición de variables.
	definir matriz, fila, columna como entero
	
	dimension matriz[5,15]
	
	// Se informa la premisa al usuario.
	escribir "Se creará una matriz de 5x15 y se llenará de unos y ceros."
	escribir "En los bordes habrá unos y en las partes internas habrá ceros."
	escribir "Luego se imprimirá por pantalla."
	
	// Se llena la matriz de unos y ceros de la forma solicitada.
	// unos en los bordes y ceros en el interior.
	para fila = 0 hasta 4 con paso 1 Hacer
		para columna = 0 hasta 14 con paso 1 Hacer	
			// Si la fila es la primera, o la fila es la última o la columna es la primera o la columna es la última
			// Se pone un uno. Sinó un cero (ni la fila ni la columna están en el borde).
			si fila = 0 o fila = 4 o columna = 0 o columna = 14 Entonces
				matriz[fila, columna] = 1
			SiNo
				matriz[fila, columna] = 0
			FinSi									
		FinPara	
	FinPara	
	
	// Se imprime la información solicitada.
	para fila = 0 hasta 4 con paso 1 Hacer
		para columna = 0 hasta 14 con paso 1 Hacer	
			// Imprime cada valor de la matriz.
			escribir Sin Saltar matriz[fila, columna]
			si columna <> 14 entonces
				// Agrega un separador después de imprimir cada valor de columna, a menos que sea la última columna.
				escribir sin saltar " "
			finsi			
		FinPara	
		// Imprime un salto de línea para pasar a la mostrar siguiente línea en pantalla.
		escribir ""
	FinPara
	
finAlgoritmo
