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
	
	// Se imprime toda la matriz para poder verificar por pantalla.
	escribir "La matriz es:"
	imprimeMatrizEnteros(matriz, 5, 5)
	
FinAlgoritmo



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
