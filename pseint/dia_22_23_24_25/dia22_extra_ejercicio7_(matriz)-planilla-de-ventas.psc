// Clase 22 - Extras - Ejercicio 7 - página 3
// Fer V - jalmendra99@gmail.com
//
// Una empresa de venta de productos por correo desea realizar una estadística 
// de las ventas realizadas de cada uno de sus productos a lo largo de una semana. 
// Distribuya luego 5 productos en los 5 días hábiles de la semana. Se desea conocer:
// a) Total de ventas por cada día de la semana. 
// b) Total de ventas de cada producto a lo largo de la semana. 
// c) El producto más vendido en cada semana. 
// d) El nombre, el día de la semana y la cantidad del producto más vendido.
// El informe final tendrá un formato como el que se muestra a continuación:
//                        Lunes    Martes    Miercoles   Jueves    Viernes   Total producto
// Producto # 1         _________|_________|___________|________|__________|______b________
// Producto # 2         _________|_________|___________|________|__________|______b________
// Producto # 3         _________|_________|___________|________|__________|______b________
// Producto # 4         _________|_________|___________|________|__________|______b________
// Producto # 5         _________|_________|___________|________|__________|______b________
// Total semana         ____a____|____a____|_____a_____|____a___|_____a____|_______________
// Producto más vendido ____d____|____d____|_____d_____|____d___|_____d____|______c________


// Fer:
// Nota: Al calcular máximos ("producto más vendido" y "Total producto"), 
// si hay empate entre más de un producto, queda elegido el primero de menor a mayor.
// ej. si producto 2 y 4 son los máximos con el mismo valor, quedará elegido el 2.

//////// RESUELTO, PERO SE PUEDE MEJORAR BASTANTE.


// Principal.
Algoritmo clase22_extras_ejercicio7
	
	// Definición de variables.
	definir producto, dia como entero
	definir maximo, prodMasVendido como entero
	
	// matriz:
	// Filas: de 1ra a 5ta (que se anotan como 0 a 4) corresponderán a: producto #1 hasta producto #5
	//        6 = total semana
	//        7 = producto más vendido
	// Columnas: de 1 a 5 serán de Lunes a Viernes
	//           6 = Total producto
	definir matriz como real
	dimension matriz[7,6]
	
	// diaSemana:
	// Es un vector que guarda las cadenas de caracteres que corresponden a los días de la semana.
	definir diaSemana como cadena
	dimension diaSemana[5]
	diaSemana[0] = "Lunes" 
	diaSemana[1] = "Martes"
	diaSemana[2] = "Miercoles"
	diaSemana[3] = "Jueves"
	diaSemana[4] = "Viernes"
	
	// Se informa la premisa al usuario.
	escribir "Se calculará la estadística de venta de productos de una empresa a " sin saltar
	escribir "lo largo de una semana basándose en los datos ingresados en una matriz " sin saltar
	escribir "que corresponderán a las ventas de cada producto a lo largo de la semana."
	
	
	// El usuario carga las ventas en la matriz principal.
	// Para los 5 productos... (0=Producto1, 1=Producto2, ..., 4=Producto5)
	para producto = 0 hasta 4 con paso 1 hacer
		
		// Y para los 5 días de la semana... (0=Lunes, 1=Martes, ..., 4=Viernes)
		para dia = 0 hasta 4 con paso 1 Hacer
			
////////			// El usuario ingresa la venta correspondiente al "producto" y al "día".
////////			// Se fuerza a que el valor ingresado sea un número real no negativo.
////////			Hacer
////////				escribir "Ingrese un el importe de la venta correspondiente al producto ", producto + 1, " y al día ", diaSemana[dia], "."
////////				leer matriz[producto, dia]		
////////			Mientras Que matriz[producto, dia] < 0			
			
			//////// INFO.
			// Se llena automáticamente la información de las ventas en la matriz con un número aleatorio entre 1 y 9.
			matriz[producto, dia] = Aleatorio(1, 9)
			
		FinPara		
		
	finpara
	
	// Se calculan las filas y columnas restantes como se pide en el planteo.
	
	// a) Total de ventas por cada día de la semana. 
	// b) Total de ventas de cada producto a lo largo de la semana. 
	// c) El producto más vendido en cada semana. 
	// d) El nombre, el día de la semana y la cantidad del producto más vendido.
	// El informe final tendrá un formato como el que se muestra a continuación:
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
	// Más vendido         ___d)4___|___d)0___|___d)2_____|__d)2___|___d)4____|_______________
	
	
	//////////// arreglar esto.
	// Estos campos nunca van a tener valores, así que se les asigna cualquier número
	matriz[5, 5] = 0
	matriz[6, 5] = 0
	
	// ----------------------------------------------
	// a) Total de ventas por cada día de la semana. 
	
	// Para cada columna de día...
	para dia = 0 hasta 4 con paso 1 Hacer
		
		// Se pone el valor del "total semana" correspondiente a ese día en cero...
		matriz[5, dia] = 0
		
		// Y se calcula la sumatoria de todos los productos pertenecientes a ese día...
		// que se guardará en la fila 5 de la matriz para cada día.
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
		
		// Y se calcula la sumatoria de todos los días para el producto actual...
		// que se guardará en la columna 5 de la matriz, para cada producto.
		para dia = 0 hasta 4 con paso 1 Hacer
			matriz[producto, 5] = matriz[producto,5] + matriz[producto, dia]
		FinPara		
		
	FinPara
	
	
	// ----------------------------------------------
	// c) El producto más vendido en cada semana.
	// Por lo tanto se buscará el Producto con mayor total de ventas de la semana.
	// (El mayor valor de la columna 5)
	
	// Se inicializa el máximo de ese producto en cero..
	maximo = 0
	
	// Para cada producto...
	para producto = 0 hasta 4 con paso 1 Hacer
		
		// Si el valor de la columna 5 para el producto actual es mayor al máximo existente...		
		si matriz[producto, 5] > maximo Entonces
			// Se actualiza el máximo y se guarda el ID del producto más vendido.
			maximo = matriz[producto, 5]
			prodMasVendido = producto
		FinSi
	FinPara
	
	// Se muestra en pantalla.
	escribir "El producto más vendido fué el producto #", prodMasVendido + 1, " con un total de ventas de ", maximo, "."
	
	
	// ----------------------------------------------
	// d) El nombre, el día de la semana y la cantidad del producto más vendido.
	
	// Para cada columna de día...
	para dia = 0 hasta 4 con paso 1 Hacer
		
		// Se inicializa el máximo de ese día en cero..
		maximo = 0
		
		// Y se busca el máximo de todos los productos pertenecientes a ese día...
		// que se guardará en la fila 6 de la matriz para cada día.
		para producto = 0 hasta 4 con paso 1 Hacer		
			
			si matriz[producto, dia] > maximo Entonces
				maximo = matriz[producto, dia]
				matriz[6, dia] = producto + 1
			FinSi
		FinPara
		
	FinPara	
	
	// Se muestra la información solicitada. La matriz completa.
	escribir "La matriz es:"
	imprimePlanilla(matriz)
	escribir ""
	
finAlgoritmo



// Subprograma imprimePlanilla
// Imprime los valores de la "matriz" (de 7x6).
SubProceso imprimePlanilla (matriz por referencia)
	
	definir fila, columna como entero
	
	// Imprime los títulos de la matriz.
	escribir "                | Lun | Mar | Mie | Jue | Vie | Total producto"
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta 7 - 1  con paso 1 Hacer
		
		// Se imprimen los encabezados de columna. Del 0 al 4 son productos
		// 5 es tot. semana y 6 es prod más vendido.
		segun fila hacer
			5: escribir sin saltar "Tot. Semana     "
			6: escribir sin saltar "Prod + vendido  "
			de otro modo:
				escribir sin saltar "Producto # ", fila + 1, "    "
		FinSegun
		
		// Se imprimen todos los valores de las columnas.
		para columna = 0 hasta 6 - 1 con paso 1 Hacer			
			
			// Agrega un separador entre cada columna, a menos que sea la última columna.
			si columna <> 7 - 1 entonces
				
				////// HORRIBLE. EXPLICAR.
				////// Para referencia, ver código de función imprimeMatrizEnteros() 
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
			
			// Imprime el último espacio detras de cada valor, para que la columna quede prolija.
			escribir sin saltar " "
			
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
