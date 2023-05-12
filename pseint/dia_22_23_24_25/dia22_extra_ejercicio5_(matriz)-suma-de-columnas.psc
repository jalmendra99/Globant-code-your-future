// Clase 22 - Extras - Ejercicio 5 - página 2
// Fer V - jalmendra99@gmail.com
//
// Crear una matriz que contenga 3 columnas y la cantidad de filas que decida el usuario. 
// Las dos primeras columnas contendrán valores enteros ingresados por el usuario 
// y en la 3 columna se deberá almacenar el resultado de sumar el número de 
// la primera y segunda columna. 
// Mostrar la matriz de la siguiente forma:
// 3 + 5 = 8 
// 4 + 3 = 7 
// 1 + 4 = 5


// Principal.
Algoritmo clase22_extras_ejercicio5
	
	// Definición de variables.
	definir matriz, fila, columna, n, num como entero
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número entero N para crear una matriz de Nx3. Luego " Sin Saltar 
	escribir "se solicitará ingresar los valores para las dos primeras columnas de cada fila " Sin Saltar 
	escribir "y en la tercera columna se calculará la suma de las dos anteriores. "
	escribir "Luego se mostrará la matriz de la siguente forma:"
	escribir "3 + 5 = 8"
	escribir "4 + 3 = 7"
	escribir "1 + 4 = 5"
	
	// Se solicita el número n al usuario.
	// Se fuerza a que esté entre 1 y 10
	Hacer
		escribir "Ingrese un número entero entre 1 y 10 para n:" sin saltar
		leer n
	Mientras Que n < 1 o n > 10
	
	dimension matriz[n,3]
	
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer
			si columna == 2 Entonces
				matriz[fila, columna] = matriz[fila, 0] + matriz[fila, 1]
			SiNo
				// Se solicita al usuario ingresar los valores para las dos primeras columnas de la fila.
				// Se fuerza a que estén entre 1 y 100
				Hacer
					escribir "Ingrese un número entero entre 1 y 100 para matriz[", fila, ",", columna, "]" sin saltar
					leer num
					
					// Se valida que el número ingresado esté en el rango solicitado
					si num < 1 o num > 100 Entonces
						// Si no está en el rango se muestra un mensaje.
						escribir "Solo se aceptan números entre 1 y 100."
					SiNo
						// Si está en el rango se guarda en la matriz.
						matriz[fila, columna] = num	
					FinSi
					
				Mientras Que num < 1 o num > 100
				
			FinSi
		FinPara
	FinPara
	
	// Se imprime la matriz por pantalla de la forma solicitada en el planteo.
	imprimeMatriznx3(matriz, n)
	
finAlgoritmo



// Subprograma imprimeMatriznx3 (recibe el nombre de la matriz y el número n).
// Imprime los valores de una "matriz" de nx3.
SubProceso imprimeMatriznx3 (matriz por referencia, n)
	
	definir fila, columna como entero
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer	
			// Imprime cada valor de la matriz.
			escribir Sin Saltar matriz[fila, columna]
			// Agrega el separador correspondiente según la columna
			segun columna hacer
				0 : escribir sin saltar " + "
				1 : escribir sin saltar " = "
			FinSegun			
		FinPara	
		// Imprime un salto de línea para pasar a la siguiente línea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso
