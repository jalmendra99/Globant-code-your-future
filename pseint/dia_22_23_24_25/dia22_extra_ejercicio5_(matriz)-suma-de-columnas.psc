// Clase 22 - Extras - Ejercicio 5 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Crear una matriz que contenga 3 columnas y la cantidad de filas que decida el usuario. 
// Las dos primeras columnas contendr�n valores enteros ingresados por el usuario 
// y en la 3 columna se deber� almacenar el resultado de sumar el n�mero de 
// la primera y segunda columna. 
// Mostrar la matriz de la siguiente forma:
// 3 + 5 = 8 
// 4 + 3 = 7 
// 1 + 4 = 5


// Principal.
Algoritmo clase22_extras_ejercicio5
	
	// Definici�n de variables.
	definir matriz, fila, columna, n, num como entero
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero entero N para crear una matriz de Nx3. Luego " Sin Saltar 
	escribir "se solicitar� ingresar los valores para las dos primeras columnas de cada fila " Sin Saltar 
	escribir "y en la tercera columna se calcular� la suma de las dos anteriores. "
	escribir "Luego se mostrar� la matriz de la siguente forma:"
	escribir "3 + 5 = 8"
	escribir "4 + 3 = 7"
	escribir "1 + 4 = 5"
	
	// Se solicita el n�mero n al usuario.
	// Se fuerza a que est� entre 1 y 10
	Hacer
		escribir "Ingrese un n�mero entero entre 1 y 10 para n:" sin saltar
		leer n
	Mientras Que n < 1 o n > 10
	
	dimension matriz[n,3]
	
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer
			si columna == 2 Entonces
				matriz[fila, columna] = matriz[fila, 0] + matriz[fila, 1]
			SiNo
				// Se solicita al usuario ingresar los valores para las dos primeras columnas de la fila.
				// Se fuerza a que est�n entre 1 y 100
				Hacer
					escribir "Ingrese un n�mero entero entre 1 y 100 para matriz[", fila, ",", columna, "]" sin saltar
					leer num
					
					// Se valida que el n�mero ingresado est� en el rango solicitado
					si num < 1 o num > 100 Entonces
						// Si no est� en el rango se muestra un mensaje.
						escribir "Solo se aceptan n�meros entre 1 y 100."
					SiNo
						// Si est� en el rango se guarda en la matriz.
						matriz[fila, columna] = num	
					FinSi
					
				Mientras Que num < 1 o num > 100
				
			FinSi
		FinPara
	FinPara
	
	// Se imprime la matriz por pantalla de la forma solicitada en el planteo.
	imprimeMatriznx3(matriz, n)
	
finAlgoritmo



// Subprograma imprimeMatriznx3 (recibe el nombre de la matriz y el n�mero n).
// Imprime los valores de una "matriz" de nx3.
SubProceso imprimeMatriznx3 (matriz por referencia, n)
	
	definir fila, columna como entero
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta 2 con paso 1 Hacer	
			// Imprime cada valor de la matriz.
			escribir Sin Saltar matriz[fila, columna]
			// Agrega el separador correspondiente seg�n la columna
			segun columna hacer
				0 : escribir sin saltar " + "
				1 : escribir sin saltar " = "
			FinSegun			
		FinPara	
		// Imprime un salto de l�nea para pasar a la siguiente l�nea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso
