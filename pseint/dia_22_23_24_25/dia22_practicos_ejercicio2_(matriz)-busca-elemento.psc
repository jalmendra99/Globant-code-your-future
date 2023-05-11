// Clase 22 - Prácticos - Ejercicio 2 - página 2
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que realice la búsqueda lineal 
// de un número entero ingresado por el usuario en una matriz de 5x5, 
// llena de números aleatorios y devuelva por pantalla las coordenadas 
// donde se encuentra el valor, es decir en que fila y columna se encuentra. 
// En caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.


// Principal.
Algoritmo clase22_practicos_ejercicio2
	
	// Definición de variables.
	definir matriz, fila, columna, num como entero
	definir encontrado Como Logico
	
	Dimension  matriz[5,5]
	
	// Inicialización de variables.
	num = 0
	encontrado = Falso
	
	// Se lena la matriz con números aleatorios entre el 1 y el 100.
	para fila = 0 hasta 4 con paso 1 Hacer
		para columna = 0 hasta 4 con paso 1 Hacer
			matriz[fila, columna] = aleatorio(1,100)
		FinPara	
	FinPara
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número entero y se buscará en una matriz de 5x5. " Sin Saltar 
	escribir "Si existe, se mostrará en la posición en la que se encuentra. " Sin Saltar 
	escribir "Si no existe, se mostrará un error."
	
	// Se solicita el número al usuario.
	// Se fuerza a que esté entre 1 y 100
	Hacer
		escribir "Ingrese un número entero entre 1 y 100:"
		leer num
	Mientras Que num < 1 o num > 100
	
	// Se busca el número ingresado
	para fila = 0 hasta 4 con paso 1 Hacer
		para columna = 0 hasta 4 con paso 1 Hacer
			si matriz[fila, columna] == num Entonces
				escribir "El número ", num, " se encuentra en matriz[", fila, ",", columna, "]"
				encontrado = Verdadero
			FinSi
		FinPara	
	FinPara
	
	si encontrado == falso Entonces
		escribir "El número ", num, " no se encontró en la matriz."		
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
			// Agrega un separador entre cada valor, a menos que sea la última columna.
			si columna <> 4 entonces
				escribir sin saltar " "
			finsi			
		FinPara	
		// Imprime un salto de línea para pasar a la siguiente línea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso
