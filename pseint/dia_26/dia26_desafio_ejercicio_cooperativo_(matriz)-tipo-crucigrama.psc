// Día 26 - Desafío Ejercicio cooperativo
// Fer V - jalmendra99@gmail.com
// 
// Se debe crear una matriz con las siguientes palabras como se muestra 
// a continuación. Luego de eso debemos acomodar las palabras para que la primera 
// letra "R" de cada una quede en la posición 5, alineándose.
//
//    0 1 2 3 4 5 6 7 7 9 1011        0 1 2 3 4 5 6 7 8 9 1011 
// 0  V E C T O R                  0  V E C T O R
// 1  M A T R I X                  1      M A T R I X
// 2  P R O G R A M A              2          P R O G R A M A
// 3  S U B P R O G R A M A        3    S U B P R O G R A M A
// 4  S U B P R O C E S O          4    S U B P R O C E S O
// 5  V A R I A B L E              5        V A R I A B L E
// 6  E N T E R O                  6    E N T E R O
// 7  P A R A                      7        P A R A
// 8  M I E N T R A S              8  M I E N T R A S
//
// Para ello debemos primero leer todo el ejercicio y ponernos de acuerdo 
// con el equipo en las tareas que hará cada uno y en cómo 
// llamemos a las variables y subprogramas necesarios. 
// Recordemos que todo lo tenemos que hacer con subprocesos o funciones.
// El ejercicio será mucho más sencillo si establecemos las bases como equipo al principio.
// Se necesita programar los siguientes subprogramas:
// 
// subprograma inicializarMatriz:
// Debe recibir como parámetros la matriz a inicializar, la cantidad de filas y la cantidad de columnas.
// En primera instancia inicializaremos la matriz con un "*" (asterisco) 
// en cada lugar para que la misma no esté vacía y no tengamos problemas.
//
// subprograma imprimirMatriz:
// Debe recibir como parámetros la matriz a imprimir, la cantidad de filas y la cantidad de columnas.
// Para que veamos la matriz en la consola cuando lo necesitemos.
// Tengamos en cuenta que para que no queden pegadas las letras vamos a imprimir un espacio, 
// la letra y otro espacio. Lo hacemos en imprimir para no modificar el contenido de la matriz.
// Ambos subprogramas son similares al ejercicio 8 de la guía.
// 
// subprograma agregarPalabra:
// Se le debe indicar en los parámetros la matriz donde se va a agregar la palabra, 
// la fila en la que se agregará y la propia palabra. Una vez el subprograma reciba eso 
// debe descomponer la palabra y agregarla a la matriz en la posición deseada.
// Similar al ejercicio 12 de la guía.
// 
// subprograma buscarR:
// Se le debe indicar la matriz donde se buscará la letra R y el número de fila en el que buscaremos.
// Debe comparar cada letra de la fila indicada hasta que encuentre la primera letra "R". 
// Ahí debe devolvernos la posición de "R".
// Nota: cuidado! debe devolver la posición de la primera R solamente.
// aquí podemos usar principios que usamos en el ejercicio 5
// 
// subprograma acomodarPalabra:
// Se le debe indicar sólo la matriz en donde se acomodarán las palabras.
// Ahora debemos crear una lógica que nos permita mover las palabras de las filas. 
// Recordar que podemos llamar a buscarR para saber cuántos espacios hay que mover las palabras.
// Una vez que las palabras se muevan hay que llenar los espacios con asteriscos nuevamente: 
// es decir, si la palabra se mueve dos posiciones a la derecha hay que agregar dos asteriscos 
// a la izquierda de la fila.
// Nota: ¡recuerden que la primera letra "R" debe quedar en la posición 5 de la matriz! 
// Ya sabemos en qué posición se encuentra "R" así que sólo debemos llevarla a la posición 
// 5 corriendo toda la palabra.



// Principal.
Algoritmo dia26_ejercicio_cooperativo
	
	// Definición de variables.
	definir matriz como caracter
	
	Dimension matriz[9,12]
	
	// Se inicializa la matriz utilizando el subprograma solicitado.
	inicializarMatriz(matriz, 9, 12)
	
	// Se muestra la matriz inicializada
	escribir "La matriz inicializada es:"
	imprimirMatriz(matriz, 9, 12)
	
	// Se agregan las palabras a la matriz.
	//    0 1 2 3 4 5 6 7 7 9 1011
	// 0  V E C T O R             
	// 1  M A T R I X             
	// 2  P R O G R A M A         
	// 3  S U B P R O G R A M A   
	// 4  S U B P R O C E S O     
	// 5  V A R I A B L E         
	// 6  E N T E R O             
	// 7  P A R A                 
	// 8  M I E N T R A S         
	agregarPalabra(matriz, 0, "VECTOR")
	agregarPalabra(matriz, 1, "MATRIX")
	agregarPalabra(matriz, 2, "PROGRAMA")
	agregarPalabra(matriz, 3, "SUBPROGRAMA")
	agregarPalabra(matriz, 4, "SUBPROCESO")
	agregarPalabra(matriz, 5, "VARIABLE")
	agregarPalabra(matriz, 6, "ENTERO")
	agregarPalabra(matriz, 7, "PARA")
	agregarPalabra(matriz, 8, "MIENTRAS")
	
	// Se muestra la matriz con todas las palabras cargadas (pero todavía desacomodadas).
	escribir "La matriz con todas las palabras desacomodadas es:"
	imprimirMatriz(matriz, 9, 12)
	
	// Se acomodan las palabras en la matriz siguiendo la consigna solicitada.
	acomodarPalabra(matriz)
	
	// Se muestra la matriz con todas las palabras acomodadas.
	escribir "La matriz con todas las palabras acomodadas es:"
	imprimirMatriz(matriz, 9, 12)
	
FinAlgoritmo



// subprograma inicializarMatriz:
// Debe recibir como parámetros la matriz a inicializar, la cantidad de filas y la cantidad de columnas.
// En primera instancia inicializaremos la matriz con un "*" (asterisco) 
// en cada lugar para que la misma no esté vacía y no tengamos problemas.
SubProceso inicializarMatriz(matriz por referencia, filas, columnas)
	definir fila, columna Como Entero
	
	// Para cada fila y columna de la "matriz"...
	para fila = 0 hasta filas - 1 con paso 1 hacer
		para columna = 0 hasta columnas - 1 con paso 1 hacer
			// Se asigna un asterisco a la posición actual en la matriz.
			matriz[fila, columna] = "*"
		FinPara
	FinPara
FinSubProceso



// subprograma imprimirMatriz:
// Debe recibir como parámetros la matriz a imprimir, la cantidad de filas y la cantidad de columnas.
// Para que veamos la matriz en la consola cuando lo necesitemos.
// Tengamos en cuenta que para que no queden pegadas las letras vamos a imprimir un espacio, 
// la letra y otro espacio. Lo hacemos en imprimir para no modificar el contenido de la matriz.
// Ambos subprogramas son similares al ejercicio 8 de la guía.
SubProceso imprimirMatriz (matriz por referencia, filas, columnas)
	
	definir fila, columna como entero
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta filas - 1 con paso 1 Hacer
		para columna = 0 hasta columnas - 1 con paso 1 Hacer	
			// Imprime cada valor de la matriz.
			escribir Sin Saltar matriz[fila, columna]
			// Agrega un separador entre cada valor, a menos que sea la última columna.
			si columna <> columnas -1 entonces
				escribir sin saltar " "
			finsi			
		FinPara	
		// Imprime un salto de línea para pasar a la siguiente línea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso



// subprograma agregarPalabra:
// Se le debe indicar en los parámetros la matriz donde se va a agregar la palabra, 
// la fila en la que se agregará y la propia palabra. Una vez el subprograma reciba eso 
// debe descomponer la palabra y agregarla a la matriz en la posición deseada.
// Similar al ejercicio 12 de la guía.
SubProceso  agregarPalabra (matriz, fila, palabra)
	
	definir posicion Como Entero
	definir letra Como Caracter
	
	// Se asume que matriz es de 9 filas por 12 columnas
	// sinó se deberán pasar como parámetros al subproceso.
	
	// Se recorren todas las posiciones de la "palabra" recibida.
	para posicion = 0 hasta longitud(palabra) - 1 con paso 1 Hacer
		
		// Se asigna el caracter de la "posicion" actual de "palabra" en la variable "letra".
		letra = subcadena(palabra, posicion, posicion)
		
		// Se asigna la "letra" a la "matriz" en la "fila" recibida 
		// y en la columna equivalente a la "posición" actual.
		matriz[fila, posicion] = subcadena(palabra, posicion, posicion)
	FinPara
	
FinSubProceso



// subprograma buscarR:
// Se le debe indicar la matriz donde se buscará la letra R y el número de fila en el que buscaremos.
// Debe comparar cada letra de la fila indicada hasta que encuentre la primera letra "R". 
// Ahí debe devolvernos la posición de "R".
// Nota: cuidado! debe devolver la posición de la primera R solamente.
// aquí podemos usar principios que usamos en el ejercicio 5
funcion posicion = buscarR (matriz por referencia, fila)
	
	definir posicion Como Entero
	definir columna Como Entero
	definir letra Como Caracter
	definir encontrada Como Logico
	
	// Se asume que matriz es de 9 filas por 12 columnas
	// sinó se deberán pasar como parámetros al subproceso.
	
	encontrada = Falso
	columna = 0
	Hacer
		
		// Se asigna el caracter de la "fila" y "columna" actuales de la "matriz".
		letra = matriz[fila, columna]
		letra = Mayusculas(letra)
		si letra == "R" Entonces
			encontrada = Verdadero
			posicion = columna
			
			////////			///// INFO.
			////////			escribir "para matriz[", fila, ", ", columna, "] se encontró R en la posición ", columna, "."
		FinSi	
		
		// Para pasar a la siguiente columna.
		columna = columna + 1
		
	Mientras Que no encontrada y columna < 12
	
	// Se asigna a "posición" el valor de la última "columna" donde se encontró la letra "R".
	// Se le resta 1 al valor de columna para no tomar en cuenta el último valor 
	// de "columna" en el ciclo hacer..mientras, que no es válido.
	posicion = columna - 1
	
FinFuncion



// subprograma acomodarPalabra:
// Se le debe indicar sólo la matriz en donde se acomodarán las palabras.
// Ahora debemos crear una lógica que nos permita mover las palabras de las filas. 
// Recordar que podemos llamar a buscarR para saber cuántos espacios hay que mover las palabras.
// Una vez que las palabras se muevan hay que llenar los espacios con asteriscos nuevamente: 
// es decir, si la palabra se mueve dos posiciones a la derecha hay que agregar dos asteriscos 
// a la izquierda de la fila.
// Nota: ¡recuerden que la primera letra "R" debe quedar en la posición 5 de la matriz! 
// Ya sabemos en qué posición se encuentra "R" así que sólo debemos llevarla a la posición 
// 5 corriendo toda la palabra.
SubProceso acomodarPalabra (matriz Por Referencia)
	
	definir fila, columna Como Entero
	definir posicionR como entero
	definir palabraActual Como Caracter
	
	Dimension palabraActual[12]
	
	// Se asume que matriz es de 9 filas por 12 columnas
	// sinó se deberán pasar como parámetros al subproceso.
	
	// Para toda "fila" en la "matriz"
	para fila = 0 hasta 9 - 1 con paso 1 Hacer
		
		// Se busca la primera "R" en la palabra correspondiente a la "fila" actual en la "matriz".
		posicionR = buscarR(matriz, fila)		
		
		////////		///// INFO.
		////////		escribir "Palabra actual: " sin saltar
		
		// Se guarda en "palabraActual" la palabra correspondiente a la "fila" actual en la "matriz".
		para columna = 0 hasta 12 - 1 con paso 1 Hacer
			palabraActual[columna] = matriz[fila, columna]
			
			////////			///// INFO.	
			////////			escribir palabraActual[columna] sin saltar
			
		FinPara
		
		// Se llena de asteriscos la matriz en la fila actual, para las columnas desde la posición cero, 
		// hasta la posición donde comenzará la palabra acomodada.
		// Para que la primera "R" de la palabra acomodada quede guardada en la columna 5 de la "matriz", 
		// se recorrerán las columnas desde cero hasta (5 - posicionR).
		para columna = 0 hasta (5 - posicionR) con paso 1 Hacer
			matriz[fila, columna] = "*"
		FinPara		
		
		// Se agrega la palabra corrida hacia la derecha, tantos caracteres como sea
		// necesario para que en la posición de la columna 5 se guarde su primera letra "R".
		para columna = 5 - posicionR hasta 12 - 1 con paso 1 Hacer
			matriz[fila, columna] = palabraActual[columna - (5 - posicionR)]
		FinPara		
		
	FinPara
	
FinSubProceso
