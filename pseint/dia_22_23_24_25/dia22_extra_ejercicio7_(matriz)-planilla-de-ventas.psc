// Clase 22 - Extras - Ejercicio 7 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Una empresa de venta de productos por correo desea realizar una estad�stica 
// de las ventas realizadas de cada uno de sus productos a lo largo de una semana. 
// Distribuya luego 5 productos en los 5 d�as h�biles de la semana. Se desea conocer:
// a) Total de ventas por cada d�a de la semana. 
// b) Total de ventas de cada producto a lo largo de la semana. 
// c) El producto m�s vendido en cada semana. 
// d) El nombre, el d�a de la semana y la cantidad del producto m�s vendido.
// El informe final tendr� un formato como el que se muestra a continuaci�n:
//                        Lunes    Martes    Miercoles   Jueves    Viernes   Total producto
// Producto # 1         _________|_________|___________|________|__________|______b________
// Producto # 2         _________|_________|___________|________|__________|______b________
// Producto # 3         _________|_________|___________|________|__________|______b________
// Producto # 4         _________|_________|___________|________|__________|______b________
// Producto # 5         _________|_________|___________|________|__________|______b________
// Total semana         ____a____|____a____|_____a_____|____a___|_____a____|_______________
// Producto m�s vendido ____d____|____d____|_____d_____|____d___|_____d____|______c________


// Fer:
// Nota: Al calcular m�ximos ("producto m�s vendido" y "Total producto"), 
// si hay empate entre m�s de un producto, queda elegido el primero de menor a mayor.
// ej. si producto 2 y 4 son los m�ximos con el mismo valor, quedar� elegido el 2.

//////// RESUELTO, PERO SE PUEDE MEJORAR BASTANTE.


// Principal.
Algoritmo clase22_extras_ejercicio7
	
	// Definici�n de variables.
	definir producto, dia como entero
	definir maximo, prodMasVendido como entero
	
	// matriz:
	// Filas: de 1ra a 5ta (que se anotan como 0 a 4) corresponder�n a: producto #1 hasta producto #5
	//        6 = total semana
	//        7 = producto m�s vendido
	// Columnas: de 1 a 5 ser�n de Lunes a Viernes
	//           6 = Total producto
	definir matriz como real
	dimension matriz[7,6]
	
	// diaSemana:
	// Es un vector que guarda las cadenas de caracteres que corresponden a los d�as de la semana.
	definir diaSemana como cadena
	dimension diaSemana[5]
	diaSemana[0] = "Lunes" 
	diaSemana[1] = "Martes"
	diaSemana[2] = "Miercoles"
	diaSemana[3] = "Jueves"
	diaSemana[4] = "Viernes"
	
	// Se informa la premisa al usuario.
	escribir "Se calcular� la estad�stica de venta de productos de una empresa a " sin saltar
	escribir "lo largo de una semana bas�ndose en los datos ingresados en una matriz " sin saltar
	escribir "que corresponder�n a las ventas de cada producto a lo largo de la semana."
	
	
	// El usuario carga las ventas en la matriz principal.
	// Para los 5 productos... (0=Producto1, 1=Producto2, ..., 4=Producto5)
	para producto = 0 hasta 4 con paso 1 hacer
		
		// Y para los 5 d�as de la semana... (0=Lunes, 1=Martes, ..., 4=Viernes)
		para dia = 0 hasta 4 con paso 1 Hacer
			
////////			// El usuario ingresa la venta correspondiente al "producto" y al "d�a".
////////			// Se fuerza a que el valor ingresado sea un n�mero real no negativo.
////////			Hacer
////////				escribir "Ingrese un el importe de la venta correspondiente al producto ", producto + 1, " y al d�a ", diaSemana[dia], "."
////////				leer matriz[producto, dia]		
////////			Mientras Que matriz[producto, dia] < 0			
			
			//////// INFO.
			// Se llena autom�ticamente la informaci�n de las ventas en la matriz con un n�mero aleatorio entre 1 y 9.
			matriz[producto, dia] = Aleatorio(1, 9)
			
		FinPara		
		
	finpara
	
	// Se calculan las filas y columnas restantes como se pide en el planteo.
	
	// a) Total de ventas por cada d�a de la semana. 
	// b) Total de ventas de cada producto a lo largo de la semana. 
	// c) El producto m�s vendido en cada semana. 
	// d) El nombre, el d�a de la semana y la cantidad del producto m�s vendido.
	// El informe final tendr� un formato como el que se muestra a continuaci�n:
	//
	// Ejemplo: 
	//                    (columna0) (columna1) (columna2) (columna3) (columna4) (columna5)
	//                       Lunes    Martes    Miercoles   Jueves    Viernes   Total producto
	// Producto 1 (fila0)  ____1____|____6____|_____3_____|___4____|____5_____|______b)19_____
	// Producto 2 (fila1)  ____2____|____5____|_____4_____|___5____|____6_____|______b)22_____
	// Producto 3 (fila2)  ____3____|____4____|_____7_____|___6____|____7_____|______b)27 <-- (c)
	// Producto 4 (fila3)  ____4____|____3____|_____6_____|___1____|____8_____|______b)22_____
	// Producto 5 (fila4)  ____5____|____2____|_____2_____|___3____|____9_____|______b)21_____
	// Tot. semana         __a)15___|__a)20___|___a)22____|__a)19__|___a)35___|_______________
	// M�s vendido         ___d)4___|___d)0___|___d)2_____|__d)2___|___d)4____|_______________
	
	
	//////////// arreglar esto.
	// Estos campos nunca van a tener valores, as� que se les asigna cualquier n�mero
	matriz[5, 5] = 0
	matriz[6, 5] = 0
	
	// ----------------------------------------------
	// a) Total de ventas por cada d�a de la semana. 
	
	// Para cada columna de d�a...
	para dia = 0 hasta 4 con paso 1 Hacer
		
		// Se pone el valor del "total semana" correspondiente a ese d�a en cero...
		matriz[5, dia] = 0
		
		// Y se calcula la sumatoria de todos los productos pertenecientes a ese d�a...
		// que se guardar� en la fila 5 de la matriz para cada d�a.
		para producto = 0 hasta 4 con paso 1 Hacer		
			matriz[5, dia] = matriz[5, dia] + matriz[producto, dia]		
		FinPara
		
	FinPara
	
	
	// ----------------------------------------------
	// b) Total de ventas de cada producto a lo largo de la semana. 
	
	// Para cada producto...
	para producto = 0 hasta 4 con paso 1 Hacer
		
		// Se pone el valor de la columna "total producto" correspondiente a ese producto en cero...
		matriz[producto, 5] = 0
		
		// Y se calcula la sumatoria de todos los d�as para el producto actual...
		// que se guardar� en la columna 5 de la matriz, para cada producto.
		para dia = 0 hasta 4 con paso 1 Hacer
			matriz[producto, 5] = matriz[producto,5] + matriz[producto, dia]
		FinPara		
		
	FinPara
	
	
	// ----------------------------------------------
	// c) El producto m�s vendido en cada semana.
	// Por lo tanto se buscar� el Producto con mayor total de ventas de la semana.
	// (El mayor valor de la columna 5)
	
	// Se inicializa el m�ximo de ese producto en cero..
	maximo = 0
	
	// Para cada producto...
	para producto = 0 hasta 4 con paso 1 Hacer
		
		// Si el valor de la columna 5 para el producto actual es mayor al m�ximo existente...		
		si matriz[producto, 5] > maximo Entonces
			// Se actualiza el m�ximo y se guarda el ID del producto m�s vendido.
			maximo = matriz[producto, 5]
			prodMasVendido = producto
		FinSi
	FinPara
	
	// Se muestra en pantalla.
	escribir "El producto m�s vendido fu� el producto #", prodMasVendido + 1, " con un total de ventas de ", maximo, "."
	
	
	// ----------------------------------------------
	// d) El nombre, el d�a de la semana y la cantidad del producto m�s vendido.
	
	// Para cada columna de d�a...
	para dia = 0 hasta 4 con paso 1 Hacer
		
		// Se inicializa el m�ximo de ese d�a en cero..
		maximo = 0
		
		// Y se busca el m�ximo de todos los productos pertenecientes a ese d�a...
		// que se guardar� en la fila 6 de la matriz para cada d�a.
		para producto = 0 hasta 4 con paso 1 Hacer		
			
			si matriz[producto, dia] > maximo Entonces
				maximo = matriz[producto, dia]
				matriz[6, dia] = producto + 1
			FinSi
		FinPara
		
	FinPara	
	
	// Se muestra la informaci�n solicitada. La matriz completa.
	escribir "La matriz es:"
	imprimePlanilla(matriz)
	escribir ""
	
finAlgoritmo



// Subprograma imprimePlanilla
// Imprime los valores de la "matriz" (de 7x6).
SubProceso imprimePlanilla (matriz por referencia)
	
	definir fila, columna como entero
	
	// Imprime los t�tulos de la matriz.
	escribir "                | Lun | Mar | Mie | Jue | Vie | Total producto"
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta 7 - 1  con paso 1 Hacer
		
		// Se imprimen los encabezados de columna. Del 0 al 4 son productos
		// 5 es tot. semana y 6 es prod m�s vendido.
		segun fila hacer
			5: escribir sin saltar "Tot. Semana     "
			6: escribir sin saltar "Prod + vendido  "
			de otro modo:
				escribir sin saltar "Producto # ", fila + 1, "    "
		FinSegun
		
		// Se imprimen todos los valores de las columnas.
		para columna = 0 hasta 6 - 1 con paso 1 Hacer			
			
			// Agrega un separador entre cada columna, a menos que sea la �ltima columna.
			si columna <> 7 - 1 entonces
				
				////// HORRIBLE. EXPLICAR.
				////// Para referencia, ver c�digo de funci�n imprimeMatrizEnteros() 
				//////   en dia22_extra_ejercicio1 y otros..
				segun cantidadDigitos(matriz[fila, columna]) hacer
					1: escribir sin saltar "|   "
					2: escribir sin saltar "|  "
					3: escribir sin saltar "| "
					4: escribir sin saltar "|"					
				FinSegun
				
			finsi			
			
			// Imprime cada valor de la matriz.
			escribir Sin Saltar matriz[fila, columna]
			
			// Imprime el �ltimo espacio detras de cada valor, para que la columna quede prolija.
			escribir sin saltar " "
			
		FinPara	
		
		// Imprime un salto de l�nea para pasar a la siguiente l�nea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso



// Funci�n cantidadDigitos()   <--- Usada por la funci�n imprimePlanilla()
// retorna la cantidad de d�gitos que ocupa un n�mero entero.
// ej: 100 retorna 3; 10 retorna 2, 1000 retorna 4, etc
funcion digitos = cantidadDigitos(num)
	definir digitos Como Entero
	definir temporal Como Real
	
	temporal = num
	digitos = 1
	
	// Se calcula la cantidad de d�gitos usando trunc()
	mientras trunc(temporal / 10) > 0 hacer
		digitos = digitos + 1
		temporal = temporal / 10
	FinMientras	
	
FinFuncion
