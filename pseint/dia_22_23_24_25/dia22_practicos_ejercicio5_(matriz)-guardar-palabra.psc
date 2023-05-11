// Clase 22 - Pr�cticos - Ejercicio 5 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Rellenar euna matriz, de 3 x 3, con una palabra de 9 de longitud, 
// pedida por el usuario, encontrando la manera de que la frase se muestre 
// de manera continua en la matriz.
// Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se deber�a ver as�:
// H A B
// I L I
// D A D
// Nota: recordar el uso de la funci�n subcadena()


// Principal.
Algoritmo clase22_practicos_ejercicio5
	
	// Definici�n de variables.
	definir fila, columna, n como entero
	definir matriz como caracter
	definir frase como cadena
	
	Dimension  matriz[3,3]

	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar una palabra de 9 caracteres " Sin Saltar 
	escribir "y se usar�n los mismos para llenar las 9 posiciones de una matriz de 3x3." Sin Saltar 
	escribir "Luego la misma se imprimir� por pantalla."
	
	// Se solicita ingresar la frase al usuario.
	// Se fuerza a que la misma tenga 9 caracteres.
	Hacer
		escribir "Ingrese una frase de 9 caracteres:"
		leer frase
	Mientras Que longitud(frase) <> 9
	
	
	// Se lena la matriz con la frase de la manera solicitada por el planteo.
	// Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se deber�a ver as�:
	// H A B
	// I L I
	// D A D
	para fila = 0 hasta 2 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer
			matriz[fila, columna] = Subcadena(frase, (fila * 3) + columna, (fila * 3) + columna)
		FinPara	
	FinPara
	
	// Se imprime la informaci�n solicitada por pantalla: se imprime la matriz usando la funci�n solicitada.
	imprimeMatriz3x3(matriz)	
	
//////	// Se imprime toda la matriz para verificar
//////	para fila = 0 hasta 2 con paso 1 Hacer
//////		para columna = 0 hasta 2 con paso 1 Hacer
//////			escribir "matriz [", fila, ",", columna, "] = ", matriz[fila, columna]
//////		FinPara	
//////	FinPara
	
FinAlgoritmo


// Subprograma imprimeMatriz3x3
// Imprime los valores de una "matriz" de 3x3 de la manera solicitada por el planteo.
// Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se deber�a ver as�:
// H A B
// I L I
// D A D
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
