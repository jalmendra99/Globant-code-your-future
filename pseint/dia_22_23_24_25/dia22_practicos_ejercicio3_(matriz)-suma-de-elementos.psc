// Clase 22 - Prácticos - Ejercicio 3 - página 2
// Fer V - jalmendra99@gmail.com
//
// Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) 
// realizar un subprograma que llene la matriz de numeros aleatorios. 
// Despues, crearemos otro subprograma que calcule y muestre la suma de los elementos
// de la matriz. Mostrar la matriz y los resultados por pantalla.


// Principal.
Algoritmo clase22_practicos_ejercicio3
	
	// Definición de variables.
	definir matriz, fila, columna, n, m como entero
	definir sumatoria como real
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar dos números enteros n y m para crear una matriz de " Sin Saltar 
	escribir "n x m y llenarla de números aleatorios. Luego se sumarán todos y se mostrará " Sin Saltar 
	escribir "el resultado por pantalla."
	
	// Se solicitan los números n y m al usuario.
	// Se fuerza a que ambos esten entre 1 y 100
	Hacer
		escribir "Ingrese un número entero entre 1 y 100 para n:"
		leer n		
		escribir "Ingrese un número entero entre 1 y 100 para m:"
		leer m		
	Mientras Que n < 1 o n > 100 o m < 1 o m > 100	
	
	// Se dimensiona la matriz al tamaño seleccionado por el usuario.
	Dimension  matriz[n,m]
	
	// Inicialización de variables.
	sumatoria = 0
	
	// Se lena la matriz con números aleatorios
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta m - 1 con paso 1 Hacer
			matriz[fila, columna] = aleatorio(1,100)
		FinPara	
	FinPara
	
	// Se calcula la sumatoria de los valores de la matriz usando la función solicitada.
	sumatoria = sumarValoresMatriz(matriz, n, m)	
	
	// Se imprime la información solicitada.
	escribir "La sumatoria de los elementos de la matriz es de: ", sumatoria, "."
	
	////// DEBUG INFO.
	// Se imprime toda la matriz para verificar
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta m - 1 con paso 1 Hacer
			escribir "matriz [", fila, ",", columna, "] = ", matriz[fila, columna]
		FinPara	
	FinPara
	
FinAlgoritmo


// Función suma 
// Retorna: la sumatoria de los valores de una "matriz" de "n" x "m".
Funcion suma = sumarValoresMatriz (matriz por referencia, n, m)
	definir suma como real
	definir fila, columna como entero
	
	// Inicialización de variables.
	suma = 0
	
	// Se calcula la sumatoria.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta m - 1 con paso 1 Hacer
			suma = suma + matriz[fila, columna]
		FinPara	
	FinPara

FinFuncion
