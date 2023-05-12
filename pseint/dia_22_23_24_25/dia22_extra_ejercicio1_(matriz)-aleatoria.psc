// Clase 22 - Extras - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que rellene de números aleatorios una matriz 
// a través de un subprograma y generar otro subprograma que muestre por pantalla la matriz final.


// Principal.
Algoritmo clase22_extras_ejercicio1
	
	// Definición de variables.
	definir matriz, fila, columna, n como entero	
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número entero n para crear una matriz de n x n " Sin Saltar 
	escribir "y la misma se llenará de números aleatorios. Luego se imprimirá por pantalla."
	
	// Se solicita el número n al usuario.
	// Se fuerza a que esté entre 1 y 10 para que no quede una matriz muy grande de imprimír por pantalla.
	Hacer
		escribir "Ingrese un número entero entre 1 y 10 para n:"
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona la matriz al tamaño seleccionado por el usuario (n x n).
	Dimension  matriz[n,n]
	
	// Inicialización de variables.
	// Se lena la matriz con números aleatorios.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta n - 1 con paso 1 Hacer
			matriz[fila, columna] = aleatorio(1,100)
		FinPara	
	FinPara

	// Se imprime la matriz usando el subprograma solicitado.
	imprimeMatrizEnteros(matriz, n, n)	
////////////	imprimeMatriz(matrix, n)	
FinAlgoritmo



////////////// Subprograma imprimeMatriz 
////////////// Imprime una "matriz" de "n" x "n".
////////////SubProceso imprimeMatriz (matriz por referencia, n)
////////////	
////////////	definir fila, columna como entero
////////////	
////////////	// Para cada fila y columna se imprime el valor de la matriz.
////////////	para fila = 0 hasta n - 1 con paso 1 Hacer
////////////		para columna = 0 hasta n - 1 con paso 1 Hacer	
////////////			escribir Sin Saltar matriz[fila, columna]
////////////			// Agrega un separador entre cada valor, a menos que sea la última columna.
////////////			si columna <> n -1 entonces
////////////				escribir sin saltar " "
////////////			finsi			
////////////		FinPara	
////////////		// Imprime un salto de línea para pasar a la siguiente línea en pantalla.
////////////		escribir ""
////////////	FinPara
////////////	
////////////FinSubProceso



// Subprograma imprimeMatrizEnteros 
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



// Función cantidadDigitos()   <--- Usada por la función imprimeMatrizEnteros()
// retorna la cantidad de dígitos que ocupa un número entero.
// ej: 100 retorna 3; 10 retorna 2, 1000 retorna 4, etc
funcion digitos = cantidadDigitos(num)
	definir digitos Como Entero
	definir temporal Como Real
	
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
