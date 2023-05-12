// Clase 22 - Pr�cticos - Ejercicio 4 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Rellenar en un subproceso una matriz cuadrada con n�meros aleatorios 
// salvo en la diagonal principal, la cual debe rellenarse con ceros. 
// Una vez llena la matriz debe generar otro subproceso para imprimir la matriz.


// Principal.
Algoritmo clase22_practicos_ejercicio4
	
	// Definici�n de variables.
	definir matriz, fila, columna, n como entero
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero entero n para crear una matriz de n x n " Sin Saltar 
	escribir "y llenarla de n�meros aleatorios, excepto en la diagonal principal " Sin Saltar 
	escribir "Luego la misma se imprimir� por pantalla."
	
	// Se solicita el n�mero n al usuario.
	// Se fuerza a que est� entre 1 y 10 para que no quede una matriz muy grande de imprim�r por pantalla.
	Hacer
		escribir "Ingrese un n�mero entero entre 1 y 10 para n:"
		leer n		
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona la matriz al tama�o seleccionado por el usuario.
	Dimension  matriz[n,n]
	
	// Inicializaci�n de variables.	
	// Se lena la matriz con n�meros aleatorios
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta n - 1 con paso 1 Hacer
			// si coincide el n�mero de fila y columna, entonces se est� en la diagonal
			// principal y hay que asignar valor cero. Sin� un n�mero aleatorio.
			si fila = columna Entonces
				matriz[fila, columna] = 0
			SiNo
				matriz[fila, columna] = aleatorio(1,100)
			FinSi			
		FinPara	
	FinPara
	
	// Se imprime la informaci�n solicitada por pantalla: se imprime la matriz usando la funci�n solicitada.
	imprimeMatrizEnteros(matriz, n)
	
FinAlgoritmo



// Subprograma imprimeMatrizEnteros 
// Imprime los valores de una "matriz" de n�meros enteros, de tama�o "n" x "n".
// Ordena los espaciados de las columnas pero por ahora solo para n�meros de hasta 3 d�gitos.
SubProceso imprimeMatrizEnteros (matriz por referencia, n)
	
	definir fila, columna, num, mayor, espacios, i como entero
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta n - 1 con paso 1 Hacer
			
			// Se asigna el n�mero de la posici�n actual de la matriz en "num".
			num = matriz[fila, columna]
			
			// se calcula el numero mayor que haya en la matriz...
			mayor = calculaMayor(matriz, n)
			
			//... para calcular el espaciado necesario que hay que escribir 
			// entre columnas para que la matriz quede prolija.
			espacios = cantidadDigitos(mayor)
			
			// Se calcula la cantidad de d�gitos del n�mero actual "num", y dependiendo
			// de la misma, se agregan o quitan espacios antes de escribirlo.
			// ej: 
			//     num =   1 -> se imprime -> "  1" (o sea, dos espacios y el n�mero de un d�gito).
			//     num =  10 -> se imprime -> " 10" (o sea, un espacio y el n�mero de dos d�gitos).
			//     num = 100 -> se imprime -> "100" (o sea, ning�n espacio y el n�mero de tres d�gitos).
			
			// Se escribe la cantidad de espacios antes del n�mero actual.
			para i = 0 hasta espacios - 1 - cantidadDigitos(num) con paso 1 Hacer
				escribir " " sin saltar
			FinPara
			
			// Se escribe el n�mero actual.
			escribir num Sin Saltar
			
			// Mientras la columna que se est� imprimiendo no sea la �ltima, se escribe un espacio 
			// para separar el valor de la columna actual, del de la siguiente.
			si columna <> n - 1 Entonces
				escribir " " sin saltar
			FinSi
			
		FinPara			
		
		// Imprime un salto de l�nea para pasar a imprimir la siguiente l�nea de la matriz en pantalla.
		escribir ""
	FinPara
	
FinSubProceso



// Funci�n cantidadDigitos()   <--- Usada por la funci�n imprimeMatrizEnteros()
// retorna la cantidad de d�gitos que ocupa un n�mero entero.
// ej: 100 retorna 3; 10 retorna 2, 1000 retorna 4, etc
funcion digitos = cantidadDigitos(num)
	definir digitos Como Entero
	definir temporal Como Real
	
	temporal = num
	digitos = 1
	
	// Se calcula la cantidad de d�gitos usando trunc()
	mientras trunc(temporal / 10) > 0 hacer
		digitos = digitos + 1
		temporal = temporal / 10
	FinMientras	
	
FinFuncion



// Funci�n calculaMayor(matriz, n)   <--- Usada por la funci�n imprimeMatrizEnteros()
// retorna el n�mero mayor de una "matriz" de tama�o "n" x "n".
funcion mayor = calculaMayor(matriz por referencia, n)
	definir mayor, fila, columna Como Entero
	
	mayor = 0
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta n - 1 con paso 1 Hacer
			si fila == 0 y columna == 0 Entonces
				mayor = matriz[fila, columna]
			FinSi
			si matriz[fila, columna] > mayor Entonces
				mayor = matriz[fila, columna]
			FinSi
		FinPara
	FinPara
	
FinFuncion
