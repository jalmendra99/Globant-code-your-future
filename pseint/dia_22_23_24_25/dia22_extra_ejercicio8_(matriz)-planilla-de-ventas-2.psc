// Clase 22 - Extras - Ejercicio 8 - página 3
// Fer V - jalmendra99@gmail.com
//
// Una distribuidora de Nescafé tiene 4 representantes que viajan 
// por toda la Argentina ofreciendo sus productos. 
// Para tareas administrativas el país está dividido en cinco zonas: 
// Norte, Sur, Este, Oeste y Centro. 
// Mensualmente almacena sus datos y obtiene distintas estadísticas sobre 
// el comportamiento de sus representantes en cada zona. 
// Se desea hacer un programa que lea el monto de las ventas 
// de los representantes en cada zona y calcule luego:
// a) el total de ventas de una zona introducida por teclado 
// b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas 
// c) el total de ventas de todos los representantes.
//
//                        Este      Oeste     Norte      Sur     Centro   Tot. vtas x vendedor
// Representante #1     _________|_________|_________|_________|_________|___b)____
// Representante #2     _________|_________|_________|_________|_________|___b)____
// Representante #3     _________|_________|_________|_________|_________|___b)____
// Representante #4     _________|_________|_________|_________|_________|___b)____
// Total vtas x zona    ___a)____|___a)____|___a)____|___a)____|___a)____|___c)____

//////// RESUELTO, PERO SE PUEDE MEJORAR BASTANTE.


// Principal.
Algoritmo clase22_extras_ejercicio8
	
	// Definición de variables.
	definir representante, zona como entero
	definir maximo, prodMasVendido como entero
	
	// matriz:
	// Filas: de 1 a 4 serán Representantes
	//        6 = total de ventas por zona
	// Columnas: de 1 a 5 serán las Zonas
	//           6 = Total de ventas por cada vendedor
	definir matriz como real
	dimension matriz[5,6]
	
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se calculará la estadística de ventas de los representantes de una "
	escribir            "distribuidora de Nescafé."
	
	
	// El usuario carga las ventas en la matriz principal.
	// Para los 5 productos... (0=Producto1, 1=Producto2, ..., 4=Producto5)
	para representante = 0 hasta 3 con paso 1 hacer
		
		// Y para los 5 días de la semana... (0=Lunes, 1=Martes, ..., 4=Viernes)
		para zona = 0 hasta 4 con paso 1 Hacer
			
			// El usuario ingresa la venta correspondiente al "producto" y al "día".
			// Se fuerza a que el valor ingresado sea un número real no negativo.
////////			Hacer
////////				escribir "Ingrese un el importe de las ventas correspondientes al Representante ", representante + 1, " y a la zona # ", zona + 1, "."
////////				leer matriz[representante, zona]		
////////			Mientras Que matriz[representante, zona] < 0			
			
			//////// DEBUG INFO.
			// Se llena automáticamente la información de las ventas en la matriz con un número aleatorio entre 1 y 9.
			matriz[representante, zona] = Aleatorio(1, 9)
			
		FinPara		
		
	finpara
	
	// Se calculan las filas y columnas restantes como se pide en el planteo.
	
	// a) el total de ventas de una zona introducida por teclado 
	// b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas 
	// c) el total de ventas de todos los representantes.
	//
	// Ejemplo:
	//                     (columna0)(columna1)(columna2)(columna3)(columna4)(columna5)
	//                        Este      Oeste     Norte      Sur     Centro   Tot. vtas x vendedor
	// Representante #1     ____1____|____7____|____7____|___9_____|____9____|___b)____  (fila0)
	// Representante #2     ____2____|____3____|____2____|___1_____|____7____|___b)____  (fila1)
	// Representante #3     ____3____|____2____|____3____|___9_____|____1____|___b)____  (fila2)
	// Representante #4     ____4____|____6____|____7____|___5_____|____2____|___b)____  (fila3)
	// Total vtas x zona    ___a)____|___a)____|___a)____|___a)____|___a)____|___c)____  (fila4)

	
	// ----------------------------------
	// a) el total de ventas de una zona introducida por teclado 
	
	// Para cada columna de zona...
	para zona = 0 hasta 4 con paso 1 Hacer
		
		// Se pone el valor del "total de ventas por zona" correspondiente a esa zona en cero...
		matriz[4, zona] = 0
		
		// Y se calcula la sumatoria de todos los representantes para la zona actual.
		// que se guardará en la fila 4 de la matriz para cada zona.
		para representante = 0 hasta 3 con paso 1 Hacer		
			matriz[4, zona] = matriz[4, zona] + matriz[representante, zona]		
		FinPara
		
	FinPara
	
	
	// ----------------------------------
	// b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas 
	
	// Para cada representante...
	para representante = 0 hasta 3 con paso 1 Hacer
		
		// Se pone el valor de la columna "total producto" correspondiente a ese producto en cero...
		matriz[representante, 5] = 0
		
		// Y se calcula la sumatoria de todas las zonas para el representante actual...
		// que se guardará en la columna 5 de la matriz, para cada representante.
		para zona = 0 hasta 4 con paso 1 Hacer
			matriz[representante, 5] = matriz[representante,5] + matriz[representante, zona]
		FinPara		
		
	FinPara
	
	
	// ----------------------------------
	// c) el total de ventas de todos los representantes.
	// (La sumatoria de la columna 5, que se guardará en matriz[4,5]
	// (también se podría hacer la sumatoria de la fila 4. El resultado tiene que ser el mismo.)
	
	// Se inicializa el valor de la sumatoria en cero..
	matriz[4, 5] = 0
	
	// Para cada representante...
	para representante = 0 hasta 3 con paso 1 Hacer
		matriz[4, 5] = matriz[4, 5] + matriz[representante, 5]
	FinPara
	
	// Se muestra en pantalla.
	escribir "El total de las ventas de todos los representantes es de ", matriz[4, 5], "."	
	
	// Se muestra la información solicitada. La matriz completa.
	escribir "La matriz es:"
	imprimePlanilla(matriz)
	escribir ""
	
finAlgoritmo


// Subprograma imprimePlanilla
// Imprime los valores de la "matriz" (de 5x6).
SubProceso imprimePlanilla (matriz por referencia)
	
	definir fila, columna como entero
	
	// Imprime los títulos de la matriz.
	escribir "                     Este | Oeste | Norte |  Sur  | Centro| Tot. vtas x vended"
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta 5 - 1  con paso 1 Hacer
		
		// Se imprimen los encabezados de columna. Del 0 al 4 son productos
		// 5 es tot. semana y 6 es prod más vendido.
		segun fila hacer
			4: escribir sin saltar "Total vtas x zona "
			de otro modo:
				escribir sin saltar "Representante # ", fila + 1, " "
		FinSegun
		
		// Se imprimen todos los valores de las columnas.
		para columna = 0 hasta 6 - 1 con paso 1 Hacer			
			
			// Agrega un separador entre cada columna, a menos que sea la última columna.
			si columna < 6 entonces
				
				////// HORRIBLE. EXPLICAR. O REUSAR IMPRIMEMATRIZENTEROS() DE LOS EJERCICIOS PRÁCTICOS 4 O 6
				segun cantidadDigitos(matriz[fila, columna]) hacer
					1: escribir sin saltar "|    "
					2: escribir sin saltar "|   "
					3: escribir sin saltar "|  "
					4: escribir sin saltar "| "					
				FinSegun
				
			finsi			
			
			// Imprime cada valor de la matriz.
			escribir Sin Saltar matriz[fila, columna]
			
			// Imprime el último espacio detras de cada valor, para que la columna quede prolija.
			escribir sin saltar "  "
			
		FinPara	
		
		// Imprime un salto de línea para pasar a la siguiente línea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso



// Función cantidadDigitos()   <--- Usada por la función imprimePlanilla()
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
