// Clase 22 - Extras - Ejercicio 2 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario),
// llenarla con n�meros aleatorios entre 1 y 100 y mostrar su traspuesta.
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
		
	// Se imprime la matriz original para poder verificar por pantalla.
	escribir "La matriz original es: "
	imprimeMatrizEnteros(matriz, n, m)
	
	// Se imprime la informaci�n solicitada.
	imprimir ""
	imprimir "La matriz traspuesta es: "
	imprimeMatrizEnteros(traspuesta, m, n)
	
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
			
		FinPara	
		
	FinPara
	
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
