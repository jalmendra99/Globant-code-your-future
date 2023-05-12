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
	escribir "La sumatoria de los elementos de la matriz es: ", sumatoria, "."
	
	// Se imprime la matriz para poder verificar por pantalla.
	escribir "La matriz es:"
	imprimeMatrizEnteros(matriz, n, m)
	
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



// Subprograma imprimeMatrizEnteros(matriz, n, m)
// Imprime los valores de una "matriz" de números enteros, 
// de tamaño "n" x "m" ("n" filas por "m" columnas).
// Ordena los espaciados de las columnas para que en pantalla se muestre "prolija".
SubProceso imprimeMatrizEnteros (matriz por referencia, n, m)
	
	definir fila, columna, num, mayor, espacios, i como entero
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta m - 1 con paso 1 Hacer
			
			// Se asigna el número de la posición actual de la matriz en "num".
			num = matriz[fila, columna]
			
			// se calcula el numero mayor que haya en la matriz...
			mayor = calculaMayor(matriz, n, m)
			
			//... para calcular el espaciado necesario que hay que escribir 
			// entre columnas para que la matriz quede prolija.
			espacios = cantidadDigitos(mayor)
			
			// Se calcula la cantidad de dígitos del número actual "num", y dependiendo
			// de la misma, se agregan o quitan espacios antes de escribirlo.
			// ej: 
			//     num =   1 -> se imprime -> "  1" (o sea, dos espacios y el número de un dígito).
			//     num =  10 -> se imprime -> " 10" (o sea, un espacio y el número de dos dígitos).
			//     num = 100 -> se imprime -> "100" (o sea, ningún espacio y el número de tres dígitos).
			//  etc.
			
			// Se escribe la cantidad de espacios antes del número actual.
			para i = 0 hasta espacios - 1 - cantidadDigitos(num) con paso 1 Hacer
				escribir " " sin saltar
			FinPara
			
			// Se escribe el número actual.
			escribir num Sin Saltar
			
			// Mientras la columna que se está imprimiendo no sea la última, se escribe un espacio 
			// para separar el valor de la columna actual, del de la siguiente.
			si columna <> m - 1 Entonces
				escribir " " sin saltar
			FinSi
			
		FinPara			
		
		// Imprime un salto de línea para pasar a imprimir la siguiente línea de la matriz en pantalla.
		escribir ""
	FinPara
	
FinSubProceso



// Función cantidadDigitos(num)   <--- Usada por la función imprimeMatrizEnteros()
// retorna la cantidad de dígitos que ocupa un número entero "num".
// ej: 100 retorna 3; 10 retorna 2, 1000 retorna 4, etc
funcion digitos = cantidadDigitos(num)
	definir digitos Como Entero
	definir temporal Como Real
	
	// Se usa una variable temporal Real en vez de entera
	// porque las divisiones pueden dar resultados con coma.
	temporal = num
	digitos = 1
	
	// Se calcula la cantidad de dígitos usando trunc()
	mientras trunc(temporal / 10) > 0 hacer
		digitos = digitos + 1
		temporal = temporal / 10
	FinMientras	
	
FinFuncion



// Función calculaMayor(matriz, n, m)   <--- Usada por la función imprimeMatrizEnteros()
// retorna el número mayor de una "matriz" de tamaño "n" x "m".
funcion mayor = calculaMayor(matriz por referencia, n, m)
	definir mayor, fila, columna Como Entero
	
	// Para todas las filas y columnas de una "matriz" de tamaño "n" x "m"...
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta m - 1 con paso 1 Hacer
			
			// Inicializa la variable "mayor" si recién se está recorriendo
			// la primera posición de la matriz (fila == 0 y columna == 0).
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
