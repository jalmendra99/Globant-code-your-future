// Clase 23 - Extras - Matrices - Ejercicio 2
// Fer V - jalmendra99@gmail.com
//
// Crear una matriz 4X4 de n�meros enteros que inicialmente esta vac�a, 
// realizar diversos subprogramas que nos permitan:
// * RELLENAR MATRIZ: Forma aleatoria n�meros de 7 a 68.
// * MOSTRAR UNA FILA: Que sea elegida por el usuario.
// * SUMA DE UNA COLUMNA: Que sea elegida por el usuario.
// * SUMAR DIAGONAL PRINCIPAL Y DIAGONAL INVERSA.
// * CALCULAR LA MEDIA: De todos los valores de la matriz (promedio
// marca_de_verificaci�n_blanca
// ojos
// manos_levantadas


// Principal.
Algoritmo clase22_extras_matrices_ejercicio2
	
	// Definici�n de variables.
	definir matriz, fila, columna como entero
	definir matrizInicializada Como Logico
	definir eleccion como entero
	
	dimension matriz[4,4]
	
	// Inicializaci�n de variables.
	matrizInicializada = Falso
	
	Hacer
		
		hacer
			escribir ""
			escribir "Men� de opciones."
			escribir "-----------------"
			escribir "1. Rellenar matriz."
			escribir "2. Mostrar una fila de la matriz."
			escribir "3. Sumar una columna de la matriz."
			escribir "4. Sumar diagonal principal y diagonal inversa de matriz."
			escribir "5. Calcular el promedio de todos los valores de la matriz."
			escribir "6. [Fer] Mostrar matriz completa."
			escribir "7. Salir."
			escribir "Elija una opci�n: " Sin Saltar
			leer eleccion
			
			si eleccion < 1 o eleccion > 7 Entonces
				escribir "Opci�n inv�lida. Por favor ingrese un n�mero entre 1 y 7."
			FinSi
			
		mientras que eleccion < 1 o eleccion > 7
		
		// Si la matriz todav�a no fu� inicializada...
		si matrizInicializada == Falso Entonces
			
			si eleccion == 1 Entonces
				rellenaMatriz(matriz)
				matrizInicializada = Verdadero
			sino 
				// Si la matriz no fu� inicializada, no se puede realizar
				// ninguna de las operaciones (mostrar, sumar, promedio, etc)
				// porque la matriz est� vac�a.
				escribir "La matriz todav�a no fu� inicializada. Use la opci�n 1."
			finsi
			
		SiNo // Si la matriz ya fu� inicializada...
			
			segun eleccion					
				1: // La opci�n 1 ya fu� tomada en cuenta en el "SI...FINSI" que est� unas l�neas arriba.
					escribir "La matriz ya hab�a sido inicializada anteriormente."					
				2: muestraFila(matriz)					
				3: sumaColumna(matriz)					
				4: SumaDiagonalesPrincipales(matriz)
				5: promedio(matriz)
				6: imprimeMatrizEnteros(matriz, 4, 4)
				De Otro Modo: // Opci�n elegida no contemplada.
			FinSegun
			
		FinSi		
		
	Mientras Que eleccion <> 7 // Sale del men� al elegir la opci�n 7.
	
FinAlgoritmo



// Subprograma rellenaMatriz(matriz) 
// Llena una matriz de 4 x 4 con valores aleatorios.
SubProceso rellenaMatriz (matriz por referencia)
	definir fila, columna Como Entero
	
	para fila = 0 hasta 4 - 1 con paso 1 Hacer
		para columna = 0 hasta 4 - 1 con paso 1 Hacer
			matriz[fila, columna] = aleatorio(7, 68)
		FinPara
	FinPara
	
	escribir "La matriz se ha llenado con valores al azar"
	
FinSubProceso



// Subprograma muestraFila(matriz) 
// Muestra la fila elejida en una matriz de 4x4.
SubProceso muestraFila (matriz por referencia)
	
	definir fila, columna Como Entero
	
	escribir ""
	
	Hacer
		
		escribir "Ingrese el numero de fila a mostrar (entre 0 y 3): " Sin Saltar
		leer fila
	Mientras Que fila < 0 o fila > (4 - 1)
	
	para columna = 0 hasta 4 - 1 con paso 1 Hacer
		escribir matriz[fila, columna], " " sin saltar
	FinPara
	
	// Escribe un salto de l�nea para dejar prolija la pantalla
	escribir ""
	
	escribir ""
	
FinSubProceso



// Subprograma sumaColumna(matriz) 
// Suma los valores de la columna elegida de una matriz de 4x5 y muestra el resultado por pantalla.
SubProceso sumaColumna (matriz por referencia)
	
	
	definir fila, columna Como Entero
	definir sumatoria Como Entero
	
	Hacer
		
		escribir "Ingrese el numero de columna a sumar (entre 0 y 3): " Sin Saltar
		leer columna
	Mientras Que columna < 0 o columna > (4 - 1)
	
	sumatoria = 0
	para fila = 0 hasta 4 - 1 con paso 1 Hacer
		sumatoria = sumatoria + matriz[fila, columna]
	FinPara
	
	// Escribe la informaci�n solicitada por pantalla.
	escribir "La sumatoria de la columna ", columna , " es ", sumatoria, "."
	
FinSubProceso



// Subprograma SumaDiagonalesPrincipales(matriz) 
// Calcula la sumatoria de los valores en las diagonales de una matriz de 4x4.
SubProceso SumaDiagonalesPrincipales (matriz por referencia)
	
	definir sumatoria, fila, columna Como Entero
	
	sumatoria = 0
	
	// diagonal 1
	para fila = 0 hasta 4 - 1 con paso 1 Hacer
		para columna = 0 hasta 4 - 1 con paso 1 Hacer
			
			// diagonal 1     /   diagonal 2
			si (fila == columna) o (fila + columna) == ( 4 - 1) Entonces
				sumatoria = sumatoria + matriz[fila, columna]
			FinSi			
			
		FinPara
	FinPara
	
	// Escribe la informaci�n solicitada por pantalla.
	escribir "La sumatoria de las diagonales es ", sumatoria, "."
	
FinSubProceso



// Subprograma promedio(matriz)
// Imprime el promedio de todos los valores de una "matriz" de 4x4.
SubProceso promedio (matriz por referencia)
	
	definir sumatoria, fila, columna Como Entero
	definir media como real
	
	// Inicializaci�n de variables.
	sumatoria = 0
	
	para fila = 0 hasta 4 - 1 con paso 1 Hacer
		para columna = 0 hasta 4 - 1 con paso 1 Hacer
			sumatoria = sumatoria + matriz[fila, columna]
		FinPara
	FinPara
	
	media = sumatoria / 16
	
	escribir "El promedio de todos los valores de la matriz es de ", media, "."
	
FinSubProceso



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
