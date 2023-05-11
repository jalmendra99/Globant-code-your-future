// Clase 22 - Pr�cticos - Ejercicio 2 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que realice la b�squeda lineal 
// de un n�mero entero ingresado por el usuario en una matriz de 5x5, 
// llena de n�meros aleatorios y devuelva por pantalla las coordenadas 
// donde se encuentra el valor, es decir en que fila y columna se encuentra. 
// En caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.


// Principal.
Algoritmo clase22_practicos_ejercicio2
	
	// Definici�n de variables.
	definir matriz, fila, columna, num como entero
	definir encontrado Como Logico
	
	Dimension  matriz[5,5]
	
	// Inicializaci�n de variables.
	num = 0
	encontrado = Falso
	
	// Se lena la matriz con n�meros aleatorios entre el 1 y el 100.
	para fila = 0 hasta 4 con paso 1 Hacer
		para columna = 0 hasta 4 con paso 1 Hacer
			matriz[fila, columna] = aleatorio(1,100)
		FinPara	
	FinPara
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero entero y se buscar� en una matriz de 5x5. " Sin Saltar 
	escribir "Si existe, se mostrar� en la posici�n en la que se encuentra. " Sin Saltar 
	escribir "Si no existe, se mostrar� un error."
	
	// Se solicita el n�mero al usuario.
	// Se fuerza a que est� entre 1 y 100
	Hacer
		escribir "Ingrese un n�mero entero entre 1 y 100:"
		leer num
	Mientras Que num < 1 o num > 100
	
	// Se busca el n�mero ingresado
	para fila = 0 hasta 4 con paso 1 Hacer
		para columna = 0 hasta 4 con paso 1 Hacer
			si matriz[fila, columna] == num Entonces
				escribir "El n�mero ", num, " se encuentra en matriz[", fila, ",", columna, "]"
				encontrado = Verdadero
			FinSi
		FinPara	
	FinPara
	
	si encontrado == falso Entonces
		escribir "El n�mero ", num, " no se encontr� en la matriz."		
	FinSi
	
	//////// DEBUG INFO.
	// Se imprime toda la matriz para verificar	
	imprimeMatriz5x5(matriz)
	
FinAlgoritmo


// Subprograma imprimeMatriz5x5 (recibe el nombre de la matriz).
// Imprime los valores de una "matriz" de 5x5.
SubProceso imprimeMatriz5x5 (matriz por referencia)
	
	definir fila, columna como entero
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta 4 con paso 1 Hacer
		para columna = 0 hasta 4 con paso 1 Hacer	
			// Imprime cada valor de la matriz.
			escribir Sin Saltar matriz[fila, columna]
			// Agrega un separador entre cada valor, a menos que sea la �ltima columna.
			si columna <> 4 entonces
				escribir sin saltar " "
			finsi			
		FinPara	
		// Imprime un salto de l�nea para pasar a la siguiente l�nea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso
