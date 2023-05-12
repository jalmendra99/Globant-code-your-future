// Clase 22 - Prácticos - Ejercicio 6 - página 2
// Fer V - jalmendra99@gmail.com
//
// Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas)
// que tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual. 
// Por ejemplo:
// 2 7 6
// 9 5 1
// 4 3 8
// En la matriz de ejemplo las sumas son siempre 15. 
// Considere el problema de construir un algoritmo que compruebe si una matriz 
// de datos enteros es mágica o no, y en caso de que sea mágica escribir la suma. 
// Además, el programa deberá comprobar que los números introducidos son correctos, 
// es decir, están entre el 1 y el 9. 
// El usuario ingresa el tamaño de la matriz que no debe superar orden igual a 10.


// Principal.
Algoritmo clase22_practicos_ejercicio6
	
	// Definición de variables.
	definir matriz, fila, columna, n, num como entero
	definir magica Como Logico
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número entero n para crear una matriz de n x n " Sin Saltar 
	escribir "y se solicitarán los números para llenarla. Luego se comprobará si la misma es " Sin Saltar 
	escribir "mágica (la suma de todas sus filas, todas sus columnas y sus dos diagonales " Sin Saltar
	escribir "principales es igual). Si es mágica, se mostrará el valor de la suma."
	escribir "Como ejemplo, para probar, una matriz magica de 3 x 3 es:"
	escribir "2 7 6"
	escribir "9 5 1"
	escribir "4 3 8"
	escribir "También se puede probar con matrices llenas de números iguales, para cualquier valor de n, " Sin Saltar
	escribir "por ejemplo, una matriz de 2 x 2 (n=2) llena de unos: "
	escribir "1 1"
	escribir "1 1"
	
	// Se solicita el número n al usuario.
	// Se fuerza a que esté entre 1 y 10 para que no quede una matriz muy grande de imprimír por pantalla.
	Hacer
		escribir "Ingrese un número entero entre 1 y 10 para n: " sin saltar
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona la matriz al tamaño seleccionado por el usuario.
	Dimension matriz[n,n]
	
	// Se solicitan al usuario los nxn valores para llenar la matriz.
	// Se fuerza a que todos estén entre 1 y 1000.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta n - 1 con paso 1 Hacer
			
			// Se valida que el número ingresado esté en el rango 1...1000
			// para que la matriz no quede muy "ancha".
			Hacer
				escribir "Ingrese un número entero entre 1 y 9 para matriz[", fila, ",", columna, "]:" sin saltar
				leer num
				
				// Si el número ingresado está fuera del rango válido que se pidió, se muestra un mensaje.
				si num < 1 o num > 1000 Entonces
					escribir "Por favor ingrese solo números entre 1 y 1000 inclusive."
				SiNo // Si el número ingresado está en un rango válido, se asigna a la posición actual de la matriz.
					matriz[fila, columna] = num
				FinSi
				
			Mientras Que num < 1 o num > 1000
			
		FinPara	
	FinPara
	
	// Se calculan todas las sumatorias para ver si la matriz es mágica.
	magica = sumasMatriz(matriz, n)
	
	si magica Entonces
		escribir "La matriz ingresada es mágica."
	SiNo
		escribir "La matriz ingresada NO es mágica."
	FinSi	
	
	// Se imprime toda la matriz para verificar visualmente por pantalla.
	imprimeMatrizEnteros(matriz, n)
	
FinAlgoritmo


// Subprograma sumasMatriz 
// Retorna: Verdadero si la suma de todas las filas, todas las columnas y todas las diagonales es igual. 
funcion magica = sumasMatriz (matriz por referencia, n)
	definir magica Como Logico
	definir fila, columna como entero
	definir sumaFilas, sumaColumnas, sumaDiag Como Entero
	
	dimension sumaFilas[n]
	dimension sumaColumnas[n]
	dimension sumaDiag[2]	
	
	// Inicialización de variables.
	// "magica" quedará Verdadero mientras que todas las comparaciones den bien más adelante.
	// Sinó será falso.
	magica = Verdadero
	
	// Se inicializan las sumatorias correspondientes a las n filas y las n columnas.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		sumaFilas[fila] = 0
		sumaColumnas[fila] = 0
	FinPara
	
	// Se inicializan las 2 sumatorias correspondientes a las dos diagonales.
	para fila = 0 hasta 1 con paso 1 Hacer
		sumaDiag[fila] = 0
	FinPara	
	
	// Se calculan las ocho sumatorias. (3 filas, 3 columnas y 2 diagonales).
	para fila = 0 hasta n - 1 con paso 1 Hacer		
		
		para columna = 0 hasta n - 1 con paso 1 Hacer	
			
			// sumatoria de las n filas.
			sumaFilas[fila] = sumaFilas[fila] + matriz[fila, columna]
			
			// Sumatoria de las n columnas.
			sumaColumnas[columna] = sumaColumnas[columna] + matriz[fila, columna]
			
			// Sumatoria de la Diagonal 1
			si fila = columna Entonces
				sumaDiag[0] = sumaDiag[0] + matriz[fila, columna]
			FinSi
			
			// Sumatoria de la Diagonal 2.
			//////// Esta condición lógica costó muchísimo!!
			si (fila + columna) == (n - 1) Entonces
				sumaDiag[1] = sumaDiag[1] + matriz[fila, columna]
			FinSi
			
		FinPara	
		
	FinPara
	
	// Si cualquiera de las 3 comparaciones entre una fila y las columnas falla, mágica quedará Falso.	
	// Si cualquiera de las 3 comparaciones entre una fila y las otras filas falla, mágica quedará Falso.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		si sumafilas[0] <> sumaColumnas[fila] o sumafilas[0] <> sumafilas[fila] Entonces
			magica = Falso
		FinSi
		
////		//////// DEBUG INFO.
////		// Se muestra en pantalla la sumatoria de las filas y de las columnas.
////		escribir "sumaFilas[", fila, "] = ", sumaFilas[fila]
////		escribir "sumaColumnas[", fila, "] = ", sumaColumnas[fila]
		
	fin para
	
	// Si cualquiera de las 2 comparaciones entre una fila y las diagonales falla, mágica quedará Falso.
	para fila = 0 hasta 1 con paso 1 Hacer
		si sumaFilas[0] <> sumaDiag[fila] Entonces
			magica = Falso
		FinSi
		
////		/////// DEBUG INFO.
////		// Se muestra en pantalla la sumatoria de las diagonales.
////		escribir "sumaDiag[", fila, "] = ", sumaDiag[fila]
		
	finpara	
	
FinFuncion



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
