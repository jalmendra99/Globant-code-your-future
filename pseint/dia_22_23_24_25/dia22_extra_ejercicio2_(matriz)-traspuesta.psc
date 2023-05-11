// Clase 22 - Extras - Ejercicio 2 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario), llenarla con n�meros aleatorios entre 1 y 100 y mostrar su traspuesta.
// �Que es una Matriz Traspuesta?
// La matriz traspuesta de una matriz A se denota por B 
// y se obtiene cambiando sus filas por columnas (o viceversa).
// matriz A       matriz B
// 1 0 4          1 0 6
// 0 5 0          0 5 0 
// 6 0 -9         4 0 -9
// Ejemplo: Obs�rvese, por ejemplo, que la primera fila de la matriz A 
// es (1,0,4). Esta fila es la primera columna de su matriz traspuesta.


// Principal.
Algoritmo clase22_extras_ejercicio2	
	
	// Definici�n de variables.
	definir matriz, traspuesta, fila, columna, n, m como entero
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar dos n�meros enteros n y m para crear una matriz de " Sin Saltar
	escribir "n x m y llenarla de n�meros aleatorios. Luego se calcular� y mostrar� " Sin Saltar 
	escribir "su correspondiente matriz traspuesta de m x n."
	
	// Se solicitan los n�meros n y m al usuario.
	// Se fuerza a que ambos esten entre 1 y 100
	Hacer
		escribir "Ingrese un n�mero entero entre 1 y 100 para n:"
		leer n		
		escribir "Ingrese un n�mero entero entre 1 y 100 para m:"
		leer m		
	Mientras Que n < 1 o n > 100 o m < 1 o m > 100	
	
	// Se dimensiona la matriz al tama�o seleccionado por el usuario (n x m).
	dimension matriz[n,m]
	
	// Se dimensiona la matriz traspuesta (m x n)
	dimension traspuesta[m,n]
	
	// Inicializaci�n de variables.
	
	// Se lena la matriz con n�meros aleatorios
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta m - 1 con paso 1 Hacer
			matriz[fila, columna] = aleatorio(1,100)
		FinPara	
	FinPara
	
	// Se calcula la traspuesta la matriz ingresada usando la funci�n solicitada.
	trasponeMatriz(matriz, traspuesta, n, m)	
	
	// Se imprime la informaci�n solicitada.
	
	////// DEBUG INFO.
	// Se imprime la matriz original para verificar
	escribir "La matriz original es: "
	imprimeMatriz(matriz, n, m)
	
	// Se imprime la informaci�n solicitada.
	imprimir ""
	imprimir "La matriz traspuesta es: "
	imprimeMatriz(traspuesta, m, n)
	
finAlgoritmo


// Subprograma trasponeMatriz
// Retorna: la matriz transpuesta (de "m" x "n" de una "matriz" de "n" x "m")
SubProceso trasponeMatriz (matriz por referencia, traspuesta por referencia, n, m)
	
	definir fila, columna como entero
	
	// Se calcula la matriz traspuesta.
	// Para cada fila y columna de la matriz transpuesta se intercambian filas por columnas de la matriz original.
	para fila = 0 hasta n - 1 con paso 1 Hacer		
		
		para columna = 0 hasta m - 1 con paso 1 Hacer	
			
			traspuesta[columna, fila] = matriz[fila, columna]
			
			////// DEBUG INFO.
			escribir "traspuesta[", columna, ",", fila, "] = ", traspuesta[columna, fila]
			
		FinPara	
		
	FinPara
	
FinSubProceso


// Subprograma imprimeMatriz 
// Imprime una "matriz" de "n" x "m".
SubProceso imprimeMatriz (matriz por referencia, n, m)
	
	definir fila, columna como entero
	
	// Para cada fila y columna se imprime el valor de la matriz.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta m - 1 con paso 1 Hacer	
			escribir Sin Saltar matriz[fila, columna]
			// Agrega un separador entre cada valor, a menos que sea la �ltima columna.
			si columna <> m -1 entonces
				escribir sin saltar " | "
			finsi			
		FinPara	
		// Imprime un salto de l�nea para pasar a la siguiente l�nea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso
