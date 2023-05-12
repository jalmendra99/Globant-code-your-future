// Clase 22 - Prácticos - Ejercicio 4 - página 2
// Fer V - jalmendra99@gmail.com
//
// Rellenar en un subproceso una matriz cuadrada con números aleatorios 
// salvo en la diagonal principal, la cual debe rellenarse con ceros. 
// Una vez llena la matriz debe generar otro subproceso para imprimir la matriz.


// Principal.
Algoritmo clase22_practicos_ejercicio4
	
	// Definición de variables.
	definir matriz, fila, columna, n como entero
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número entero n para crear una matriz de n x n " Sin Saltar 
	escribir "y llenarla de números aleatorios, excepto en la diagonal principal " Sin Saltar 
	escribir "Luego la misma se imprimirá por pantalla."
	
	// Se solicita el número n al usuario.
	// Se fuerza a que esté entre 1 y 10 para que no quede una matriz muy grande de imprimír por pantalla.
	Hacer
		escribir "Ingrese un número entero entre 1 y 10 para n:"
		leer n		
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona la matriz al tamaño seleccionado por el usuario.
	Dimension  matriz[n,n]
	
	// Inicialización de variables.	
	// Se lena la matriz con números aleatorios
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta n - 1 con paso 1 Hacer
			// si coincide el número de fila y columna, entonces se está en la diagonal
			// principal y hay que asignar valor cero. Sinó un número aleatorio.
			si fila = columna Entonces
				matriz[fila, columna] = 0
			SiNo
				matriz[fila, columna] = aleatorio(1,100)
			FinSi			
		FinPara	
	FinPara
	
	// Se imprime la información solicitada por pantalla: se imprime la matriz usando la función solicitada.
	imprimeMatrizEnteros(matriz, n)
	
FinAlgoritmo



// Subprograma imprimeMatrizEnteros 
// Imprime los valores de una "matriz" de números enteros, de tamaño "n" x "n".
// Ordena los espaciados de las columnas pero por ahora solo para números de hasta 3 dígitos.
SubProceso imprimeMatrizEnteros (matriz por referencia, n)
	
	definir fila, columna, num, mayor, espacios, i como entero
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta n - 1 con paso 1 Hacer
			
			// Se asigna el número de la posición actual de la matriz en "num".
			num = matriz[fila, columna]
			
			// se calcula el numero mayor que haya en la matriz...
			mayor = calculaMayor(matriz, n)
			
			//... para calcular el espaciado necesario que hay que escribir 
			// entre columnas para que la matriz quede prolija.
			espacios = cantidadDigitos(mayor)
			
			// Se calcula la cantidad de dígitos del número actual "num", y dependiendo
			// de la misma, se agregan o quitan espacios antes de escribirlo.
			// ej: 
			//     num =   1 -> se imprime -> "  1" (o sea, dos espacios y el número de un dígito).
			//     num =  10 -> se imprime -> " 10" (o sea, un espacio y el número de dos dígitos).
			//     num = 100 -> se imprime -> "100" (o sea, ningún espacio y el número de tres dígitos).
			
			// Se escribe la cantidad de espacios antes del número actual.
			para i = 0 hasta espacios - 1 - cantidadDigitos(num) con paso 1 Hacer
				escribir " " sin saltar
			FinPara
			
			// Se escribe el número actual.
			escribir num Sin Saltar
			
			// Mientras la columna que se está imprimiendo no sea la última, se escribe un espacio 
			// para separar el valor de la columna actual, del de la siguiente.
			si columna <> n - 1 Entonces
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



// Función calculaMayor(matriz, n)   <--- Usada por la función imprimeMatrizEnteros()
// retorna el número mayor de una "matriz" de tamaño "n" x "n".
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
