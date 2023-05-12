// Clase 23 - Extras - Matrices - Ejercicio 2
// Fer V - jalmendra99@gmail.com
//
// Crear una matriz 4X4 de números enteros que inicialmente esta vacía, 
// realizar diversos subprogramas que nos permitan:
// * RELLENAR MATRIZ: Forma aleatoria números de 7 a 68.
// * MOSTRAR UNA FILA: Que sea elegida por el usuario.
// * SUMA DE UNA COLUMNA: Que sea elegida por el usuario.
// * SUMAR DIAGONAL PRINCIPAL Y DIAGONAL INVERSA.
// * CALCULAR LA MEDIA: De todos los valores de la matriz (promedio
// marca_de_verificación_blanca
// ojos
// manos_levantadas


// Principal.
Algoritmo clase22_extras_matrices_ejercicio2
	
	// Definición de variables.
	definir matriz, fila, columna como entero
	definir matrizInicializada Como Logico
	definir eleccion como entero
	
	dimension matriz[4,4]
	
	// Inicialización de variables.
	matrizInicializada = Falso
	
	Hacer
		
		hacer
			escribir ""
			escribir "Menú de opciones."
			escribir "-----------------"
			escribir "1. Rellenar matriz."
			escribir "2. Mostrar una fila de la matriz."
			escribir "3. Sumar una columna de la matriz."
			escribir "4. Sumar diagonal principal y diagonal inversa de matriz."
			escribir "5. Calcular el promedio de todos los valores de la matriz."
			escribir "6. [Fer] Mostrar matriz completa."
			escribir "7. Salir."
			escribir "Elija una opción: " Sin Saltar
			leer eleccion
			
			si eleccion < 1 o eleccion > 7 Entonces
				escribir "Opción inválida. Por favor ingrese un número entre 1 y 7."
			FinSi
			
		mientras que eleccion < 1 o eleccion > 7
		
		// Si la matriz todavía no fué inicializada...
		si matrizInicializada == Falso Entonces
			
			si eleccion == 1 Entonces
				rellenaMatriz(matriz)
				matrizInicializada = Verdadero
			sino 
				// Si la matriz no fué inicializada, no se puede realizar
				// ninguna de las operaciones (mostrar, sumar, promedio, etc)
				// porque la matriz está vacía.
				escribir "La matriz todavía no fué inicializada. Use la opción 1."
			finsi
			
		SiNo // Si la matriz ya fué inicializada...
			
			segun eleccion					
				1: // La opción 1 ya fué tomada en cuenta en el "SI...FINSI" que está unas líneas arriba.
					escribir "La matriz ya había sido inicializada anteriormente."					
				2: muestraFila(matriz)					
				3: sumaColumna(matriz)					
				4: SumaDiagonalesPrincipales(matriz)
				5: promedio(matriz)
				6: imprimeMatriz(matriz, 4)
				De Otro Modo: // Opción elegida no contemplada.
			FinSegun
			
		FinSi		
		
	Mientras Que eleccion <> 7 // Sale del menú al elegir la opción 7.
	
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
	
	// Escribe un salto de línea para dejar prolija la pantalla
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
	
	// Escribe la información solicitada por pantalla.
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
	
	// Escribe la información solicitada por pantalla.
	escribir "La sumatoria de las diagonales es ", sumatoria, "."
	
FinSubProceso



// Subprograma promedio(matriz)
// Imprime el promedio de todos los valores de una "matriz" de 4x4.
SubProceso promedio (matriz por referencia)
	
	definir sumatoria, fila, columna Como Entero
	definir media como real
	
	// Inicialización de variables.
	sumatoria = 0
	
	para fila = 0 hasta 4 - 1 con paso 1 Hacer
		para columna = 0 hasta 4 - 1 con paso 1 Hacer
			sumatoria = sumatoria + matriz[fila, columna]
		FinPara
	FinPara
	
	media = sumatoria / 16
	
	escribir "El promedio de todos los valores de la matriz es de ", media, "."
	
FinSubProceso



// Subprograma imprimeMatriz 
// Imprime los valores de una "matriz" de nxn.
SubProceso imprimeMatriz (matriz por referencia, n)
	
	definir fila, columna como entero
	
	escribir ""
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta n - 1 con paso 1 Hacer	
			// Imprime cada valor de la matriz.
			escribir Sin Saltar matriz[fila, columna]
			// Agrega un separador entre cada valor, a menos que sea la última columna.
			si columna <> n -1 entonces
				escribir sin saltar " "
			finsi			
		FinPara	
		// Imprime un salto de línea para pasar a la siguiente línea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso
