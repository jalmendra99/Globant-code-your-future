// Clase 22 - Extras - Ejercicio 4 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que calcule la multiplicaci�n de dos matrices 
// de enteros de 3x3. Inicialice las matrices para evitar el ingreso de datos por teclado.


// Principal.
Algoritmo clase22_extras_ejercicio4
	
	// Definici�n de variables.
	definir fila, columna, matrices, nroMatriz como entero
	
	// matriz[0, 3, 3] <-- matriz 1
	// matriz[1, 3, 3] <-- matriz 2
	// matriz[2, 3, 3] <-- resultado de multiplicar matriz 1 y matriz 2.
	Dimension matrices[3,3,3]
	
	// Se informa la premisa al usuario.
	escribir "Se crear�n dos matrices de 3x3 y se calcular� la multiplicaci�n de las mismas."
	escribir "El resultado se mostrar� por pantalla."	
	
	// Se lenan las 2 primeras matrices con n�meros aleatorios
	// y la tercera con unos.
	para nroMatriz = 0 hasta 2 con paso 1 hacer
		para fila = 0 hasta 2 con paso 1 Hacer
			para columna = 0 hasta 2 con paso 1 Hacer
				// para las dos primeras matrices se llenan de n�meros aleatorios.
				si nroMatriz <> 2 entonces
					matrices[nroMatriz, fila, columna] = aleatorio(1,100)
				SiNo // la matriz 3 se llena de unos.
					matrices[nroMatriz, fila, columna] = 1
				FinSi				
			FinPara	
		FinPara
	finpara
		
	// Se calcula la multiplicaci�n de las dos primeras matrices
	// y se guarda el resultado en la tercera.	
	para fila = 0 hasta 2 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer
			matrices[2, fila, columna] = matrices[0, fila, columna] * matrices[1, fila, columna] 
		FinPara	
	FinPara
	
	
	// Imprime las 3 matrices
	para nroMatriz = 0 hasta 2 con paso 1 hacer
		escribir "La matriz #", nroMatriz + 1, " es:"
		imprimeMatriz3x3(matrices,nroMatriz)
	finpara
	
finAlgoritmo


// Subprograma imprimeMatriz3x3 (recibe el nombre de la matriz y el n�mero de matriz).
// Imprime los valores de una "matriz" de 3x3.
SubProceso imprimeMatriz3x3 (matriz por referencia, nroMatriz)
	
	definir fila, columna como entero
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta 2 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer	
			// Imprime cada valor de la matriz.
			escribir Sin Saltar matriz[nroMatriz, fila, columna]
			// Agrega un separador entre cada valor, a menos que sea la �ltima columna.
			si columna <> 2 entonces
				escribir sin saltar " "
			finsi			
		FinPara	
		// Imprime un salto de l�nea para pasar a la siguiente l�nea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso
