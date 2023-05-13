// Clase 18 - Extras - Ejercicio 5 - página 2
// Fer V - jalmendra99@gmail.com
//
// Tomando en cuenta el ejercicio 6, mejore el mecanismo de inserción del carácter, 
// facilitando un potencial reordenamiento del vector. 
// Digamos que se pide ingresar el carácter en la posición X y la misma está ocupada, 
// entonces de existir un espacio en cualquier posición X-n o X+n, 
// desplazar los caracteres hacia la izq o hacia la derecha para poder ingresar 
// el carácter en cuestión en el lugar deseado. 
// El procedimiento de reordenamiento debe ubicar el espacio más cercano.
// Por ejemplo, suponiendo la siguiente frase y los subíndices del vector:
//	H o l a   m u n d o     c  r  u  e  l  !
//	0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
// Si se desea ingresar el carácter "%" en la posición 8, 
// entonces el resultado con desplazamiento sería:
//  H o l a   m u n % d  o     c  r  u  e  l  !
//  0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//	Notar que el desplazamiento se hizo hacia la izquierda porque el espacio 
// de la posición 10 estaba más cerca de la posición 8 
// que el espacio de la posición 4. 
// Nota: en caso del que el desplazamiento sea a la izquierda y se requiera 
// que se remueva la letra, se hará. 
// Por ejemplo, para poner un "%" en la posición 6, 
// haríamos un desplazamiento a la izquierda y borraríamos la letra H
// -------------------


// Referencia: Ejercicio 6
//
// Clase 18 - Prácticos - Ejercicio 6 - página 3
// Fer V - jalmendra99@gmail.com
//
// Disponemos de un vector unidimensional de 20 elementos de tipo carácter. 
// Se pide desarrollar un programa que:
// a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra. 
//    Ayuda: utilizar la función Subcadena de PSeInt.
// b) Una vez completado lo anterior, pedirle al usuario un carácter cualquiera 
//    y una posición dentro del arreglo, y el programa debe intentar ingresar el carácter 
//    en la posición indicada, si es que hay lugar 
//    (es decir la posición está vacía o es un espacio en blanco). 
//    De ser posible debe mostrar el vector con la frase y el carácter ingresado, 
//    de lo contrario debe darle un mensaje al usuario de que esa posición estaba ocupada.
// 
// Por ejemplo, suponiendo la siguiente frase y los subíndices del vector:
//	H o l a   m u n d o     c  r  u  e  l  !
//	0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
// Si se desea ingresar el carácter "%" en la posición 10, entonces el resultado sería:
//	H o l a   m u n d o  %  c  r  u  e  l  !
//	0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19


// Principal.
Algoritmo clase18_practicos_ejercicio6
	
	// Definición de variables.
	definir posicion, posicionElegida como entero	
	definir vector, caracterElegido Como Caracter
	definir frase como cadena
	
	// izquierda = cantidad de caracteres hasta el primer espacio a la izquierda de la posición elegida por el usuario.
	// derecha = igual que izquierda pero hacia la derecha.
	definir izquierda, derecha Como Entero
	
	// encontrado = Verdadero cuando se encuentre un espacio a la izq y/o a la der de la posición elegida por el usuario.
	definir encontrado Como Logico
	
	Dimension vector[20]
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar una frase de máximo 20 caracteres y luego " sin saltar
	escribir "se solicitará ingresar un caracter y una posición para insertar ese " sin saltar
	escribir "caracter en el vector."
	escribir "El caracter se insertará _empujando_ al resto de la frase hacia la izquierda " sin saltar
	escribir "o hacia la derecha dependiendo de hacia que lado haya más cerca un espacio " sin saltar
	escribir "respecto de la posición elejida por el usuario."
	
	// Se solicita ingresar la frase al usuario...	
	escribir "Ingrese una frase de máximo 20 caracteres (más de 20 se ignorarán): "
	leer frase
	
	// Se llena el "vector" con los 20 primeros caracteres de la "frase" ingresada.
	para posicion = 0 hasta 20 - 1 con paso 1 Hacer
		vector[posicion] = subcadena(frase, posicion, posicion)
	FinPara
	
	// Se muestra como quedó cargado el vector inicialmente:
	escribir "El vector ingresado quedó de la siguiente manera:"
	muestraVector(vector)
	
	// Se solicita al usuario ingresar un caracter y una posición	
	escribir "Ingrese un caracter para insertar en la frase: " sin saltar
	leer caracterElegido	
	escribir ""
	
	// Se fuerza a que la posición seleccionada por el usuario esté entre 0 y 19.
	hacer
		escribir "Elija la posición donde insertar el caracter (entre 0 y 19): " sin saltar
		leer posicionElegida
	mientras que posicionElegida < 0 o posicionElegida > 20 - 1
	
	// Se inserta el caracterElegido en la posicionElegida del vector, si la misma está vacía o es un espacio.
	si vector[posicionElegida] == "" o vector[posicionElegida] == " " entonces
		vector[posicionElegida] = caracterElegido
		
		// Mostrar el vector con el nuevo caracter ingresado.
		muestraVector(vector)
		
	SiNo
		// -----------------------------------------------------------------------
		// Si la posicionElegida por el usuario no está vacía (o no es espacio)...
		// Acá comienza el ejercicio extra #5...
		// -----------------------------------------------------------------------
		
		// [...] entonces de existir un espacio en cualquier posición X-n o X+n, 
		// desplazar los caracteres hacia la izq o hacia la derecha para poder ingresar 
		// el carácter en cuestión en el lugar deseado. 
		// El procedimiento de reordenamiento debe ubicar el espacio más cercano. [...]
		
		escribir "La posición ", posicionElegida, " está ocupada con el caracter ", vector[posicionElegida]
		
		// SE BUSCA desde posicionElegida el siguiente ESPACIO HACIA LA IZQUIERDA...
		posicion = posicionElegida
		encontrado = Falso
		izquierda = 0
		
		// Se busca el espacio más cercano a la izquierda de posiciónElegida
		// y si existe, se guarda la distancia entre ese espacio y posiciónElegida.
		// La distancia queda guardada en "izquierda".
		Mientras (posicion > 0) y (posicion < 20 - 1) y (no encontrado) hacer
			si vector[posicion] <> " " y vector[posicion] <> "" Entonces
				// Si el caracter en la posición actual del vector no es un espacio (o vacío).
				// entonces se incrementa la distancia..
				izquierda = izquierda + 1
			SiNo
				// Sinó, se encontró un espacio (o vacío).
				// Se pone encontrado = Verdadero para salír de este ciclo "mientras".
				encontrado = Verdadero
			FinSi
			// Se retrocede 1 espacio hacia la posición siguiente a la izquierda.
			posicion = posicion - 1
		Fin Mientras
		
		// SE BUSCA DESDE posicionElegida el siguiente ESPACIO HACIA LA DERECHA...
		posicion = posicionElegida
		encontrado = Falso
		derecha = 0
		
		// Se busca el espacio más cercano a la derecha de posiciónElegida
		// y si existe, se guarda la distancia entre ese espacio y posiciónElegida.
		// La distancia queda guardada en "derecha".
		mientras (posicion > 0) y (posicion < 20 - 1) y (no encontrado) Hacer				
			si vector[posicion] <> " " y vector[posicion] <> "" Entonces
				// Si el caracter en la posición actual del vector no es un espacio (o vacío).
				// entonces se incrementa la distancia..
				derecha = derecha + 1
			SiNo
				// Sinó, se encontró un espacio (o vacío).
				// Se pone encontrado = Verdadero para salír de este ciclo "mientras".
				encontrado = Verdadero
			FinSi
			// Se aumenta 1 espacio hacia la posición siguiente a la derecha.
			posicion = posicion + 1			
		Fin Mientras
		
		
////////////		/// INFO.
////////////		escribir "izquierda: ", izquierda
////////////		escribir "derecha: ", derecha
		
		// se compara la distancia por izquierda y por derecha para saber 
		// para que lado se desplazará la cadena, luego de insertar el caracterElegido por el usuario.
		si izquierda < derecha Entonces
			
			// La mitád izquierda del vector (desde 0 hasta la posicionElegida por el usuario)
			// Se desplaza toda un caracter hacia la izquierda.
			para posicion = 0 hasta posicionElegida - 1 Hacer
				vector[posicion] = vector[posicion + 1]
			FinPara		
			
		SiNo
			// La mitád derecha del vector (desde la posiciónElegida por el usuario hasta la última: posicion 19)
			// Se desplaza toda un caracter hacia la derecha.
			para posicion = 20 - 1 hasta posicionElegida + 1 con paso - 1 Hacer
				vector[posicion] = vector[posicion - 1]
			FinPara
			
		FinSi
		
		// Se inserta el caracterElegido por el usuario en la posicionElegida por el usuario.
		vector[posicionElegida] = caracterElegido
		
		// ---------------------------------------------------------------
		// Acá termina el ejercicio extra #5...
		// ---------------------------------------------------------------
		
	FinSi
	
	// Se muestra como finalmente quedó cargado el vector.
	escribir "El vector final quedó de la siguiente manera:"
	muestraVector(vector)
	
FinAlgoritmo


// Subprograma muestraVector
// Muestra un "vector" de 20 caracteres.
// NOTA: Si algun(os) valor(es) de "vector" está(n) vacío(s),
// se muestra un espacio en esa(s) posición(es).
SubProceso muestraVector(vector por referencia)
	
	definir posicion Como Entero
	
	para posicion = 0 hasta 19 con paso 1 Hacer
		// Si alguna posición del vector está "vacía" (no es lo mismo que espacio)
		// entones se muestra igual un espacio, para evitar confusiones.
		si vector[posicion] <> "" entonces
			escribir sin saltar vector[posicion]
		sino 
			escribir sin saltar " "
		finsi		
	FinPara
	
	// Se agrega un salto de línea para que la salida quede prolija.
	escribir ""
	
FinSubProceso

// Pruebas:
// Frase:                 	Posición	caracter	frase2
// "hola mundo"          	18			@			"hola mundo       @"
// "hola mundo"          	4			@			"hola@mundo"
// "hola hola hola hola."	10			@			"ola hola h@ola hola."
// "hola hola hola hola."	6			@			"ola h@ola hola hola."
// "hola hola hola hola."	8			@			"hola hol@a hola hola"
