// Clase 18 - Extras - Ejercicio 5 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Tomando en cuenta el ejercicio 6, mejore el mecanismo de inserci�n del car�cter, 
// facilitando un potencial reordenamiento del vector. 
// Digamos que se pide ingresar el car�cter en la posici�n X y la misma est� ocupada, 
// entonces de existir un espacio en cualquier posici�n X-n o X+n, 
// desplazar los caracteres hacia la izq o hacia la derecha para poder ingresar 
// el car�cter en cuesti�n en el lugar deseado. 
// El procedimiento de reordenamiento debe ubicar el espacio m�s cercano.
// Por ejemplo, suponiendo la siguiente frase y los sub�ndices del vector:
//	H o l a   m u n d o     c  r  u  e  l  !
//	0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
// Si se desea ingresar el car�cter "%" en la posici�n 8, 
// entonces el resultado con desplazamiento ser�a:
//  H o l a   m u n % d  o     c  r  u  e  l  !
//  0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//	Notar que el desplazamiento se hizo hacia la izquierda porque el espacio 
// de la posici�n 10 estaba m�s cerca de la posici�n 8 
// que el espacio de la posici�n 4. 
// Nota: en caso del que el desplazamiento sea a la izquierda y se requiera 
// que se remueva la letra, se har�. 
// Por ejemplo, para poner un "%" en la posici�n 6, 
// har�amos un desplazamiento a la izquierda y borrar�amos la letra H
// -------------------


// Referencia: Ejercicio 6
//
// Clase 18 - Pr�cticos - Ejercicio 6 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Disponemos de un vector unidimensional de 20 elementos de tipo car�cter. 
// Se pide desarrollar un programa que:
// a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra. 
//    Ayuda: utilizar la funci�n Subcadena de PSeInt.
// b) Una vez completado lo anterior, pedirle al usuario un car�cter cualquiera 
//    y una posici�n dentro del arreglo, y el programa debe intentar ingresar el car�cter 
//    en la posici�n indicada, si es que hay lugar 
//    (es decir la posici�n est� vac�a o es un espacio en blanco). 
//    De ser posible debe mostrar el vector con la frase y el car�cter ingresado, 
//    de lo contrario debe darle un mensaje al usuario de que esa posici�n estaba ocupada.
// 
// Por ejemplo, suponiendo la siguiente frase y los sub�ndices del vector:
//	H o l a   m u n d o     c  r  u  e  l  !
//	0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
// Si se desea ingresar el car�cter "%" en la posici�n 10, entonces el resultado ser�a:
//	H o l a   m u n d o  %  c  r  u  e  l  !
//	0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19


// Principal.
Algoritmo clase18_practicos_ejercicio6
	
	// Definici�n de variables.
	definir posicion, posicionElegida como entero	
	definir vector, caracterElegido Como Caracter
	definir frase como cadena
	
	// izquierda = cantidad de caracteres hasta el primer espacio a la izquierda de la posici�n elegida por el usuario.
	// derecha = igual que izquierda pero hacia la derecha.
	definir izquierda, derecha Como Entero
	
	// encontrado = Verdadero cuando se encuentre un espacio a la izq y/o a la der de la posici�n elegida por el usuario.
	definir encontrado Como Logico
	
	Dimension vector[20]
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar una frase de m�ximo 20 caracteres y luego " sin saltar
	escribir "se solicitar� ingresar un caracter y una posici�n para insertar ese " sin saltar
	escribir "caracter en el vector."
	escribir "El caracter se insertar� _empujando_ al resto de la frase hacia la izquierda " sin saltar
	escribir "o hacia la derecha dependiendo de hacia que lado haya m�s cerca un espacio " sin saltar
	escribir "respecto de la posici�n elejida por el usuario."
	
	// Se solicita ingresar la frase al usuario...	
	escribir "Ingrese una frase de m�ximo 20 caracteres (m�s de 20 se ignorar�n): "
	leer frase
	
	// Se llena el "vector" con los 20 primeros caracteres de la "frase" ingresada.
	para posicion = 0 hasta 20 - 1 con paso 1 Hacer
		vector[posicion] = subcadena(frase, posicion, posicion)
	FinPara
	
	// Se muestra como qued� cargado el vector inicialmente:
	escribir "El vector ingresado qued� de la siguiente manera:"
	muestraVector(vector)
	
	// Se solicita al usuario ingresar un caracter y una posici�n	
	escribir "Ingrese un caracter para insertar en la frase: " sin saltar
	leer caracterElegido	
	escribir ""
	
	// Se fuerza a que la posici�n seleccionada por el usuario est� entre 0 y 19.
	hacer
		escribir "Elija la posici�n donde insertar el caracter (entre 0 y 19): " sin saltar
		leer posicionElegida
	mientras que posicionElegida < 0 o posicionElegida > 20 - 1
	
	// Se inserta el caracterElegido en la posicionElegida del vector, si la misma est� vac�a o es un espacio.
	si vector[posicionElegida] == "" o vector[posicionElegida] == " " entonces
		vector[posicionElegida] = caracterElegido
		
		// Mostrar el vector con el nuevo caracter ingresado.
		muestraVector(vector)
		
	SiNo
		// -----------------------------------------------------------------------
		// Si la posicionElegida por el usuario no est� vac�a (o no es espacio)...
		// Ac� comienza el ejercicio extra #5...
		// -----------------------------------------------------------------------
		
		// [...] entonces de existir un espacio en cualquier posici�n X-n o X+n, 
		// desplazar los caracteres hacia la izq o hacia la derecha para poder ingresar 
		// el car�cter en cuesti�n en el lugar deseado. 
		// El procedimiento de reordenamiento debe ubicar el espacio m�s cercano. [...]
		
		escribir "La posici�n ", posicionElegida, " est� ocupada con el caracter ", vector[posicionElegida]
		
		// SE BUSCA desde posicionElegida el siguiente ESPACIO HACIA LA IZQUIERDA...
		posicion = posicionElegida
		encontrado = Falso
		izquierda = 0
		
		// Se busca el espacio m�s cercano a la izquierda de posici�nElegida
		// y si existe, se guarda la distancia entre ese espacio y posici�nElegida.
		// La distancia queda guardada en "izquierda".
		Mientras (posicion > 0) y (posicion < 20 - 1) y (no encontrado) hacer
			si vector[posicion] <> " " y vector[posicion] <> "" Entonces
				// Si el caracter en la posici�n actual del vector no es un espacio (o vac�o).
				// entonces se incrementa la distancia..
				izquierda = izquierda + 1
			SiNo
				// Sin�, se encontr� un espacio (o vac�o).
				// Se pone encontrado = Verdadero para sal�r de este ciclo "mientras".
				encontrado = Verdadero
			FinSi
			// Se retrocede 1 espacio hacia la posici�n siguiente a la izquierda.
			posicion = posicion - 1
		Fin Mientras
		
		// SE BUSCA DESDE posicionElegida el siguiente ESPACIO HACIA LA DERECHA...
		posicion = posicionElegida
		encontrado = Falso
		derecha = 0
		
		// Se busca el espacio m�s cercano a la derecha de posici�nElegida
		// y si existe, se guarda la distancia entre ese espacio y posici�nElegida.
		// La distancia queda guardada en "derecha".
		mientras (posicion > 0) y (posicion < 20 - 1) y (no encontrado) Hacer				
			si vector[posicion] <> " " y vector[posicion] <> "" Entonces
				// Si el caracter en la posici�n actual del vector no es un espacio (o vac�o).
				// entonces se incrementa la distancia..
				derecha = derecha + 1
			SiNo
				// Sin�, se encontr� un espacio (o vac�o).
				// Se pone encontrado = Verdadero para sal�r de este ciclo "mientras".
				encontrado = Verdadero
			FinSi
			// Se aumenta 1 espacio hacia la posici�n siguiente a la derecha.
			posicion = posicion + 1			
		Fin Mientras
		
		
////////////		/// INFO.
////////////		escribir "izquierda: ", izquierda
////////////		escribir "derecha: ", derecha
		
		// se compara la distancia por izquierda y por derecha para saber 
		// para que lado se desplazar� la cadena, luego de insertar el caracterElegido por el usuario.
		si izquierda < derecha Entonces
			
			// La mit�d izquierda del vector (desde 0 hasta la posicionElegida por el usuario)
			// Se desplaza toda un caracter hacia la izquierda.
			para posicion = 0 hasta posicionElegida - 1 Hacer
				vector[posicion] = vector[posicion + 1]
			FinPara		
			
		SiNo
			// La mit�d derecha del vector (desde la posici�nElegida por el usuario hasta la �ltima: posicion 19)
			// Se desplaza toda un caracter hacia la derecha.
			para posicion = 20 - 1 hasta posicionElegida + 1 con paso - 1 Hacer
				vector[posicion] = vector[posicion - 1]
			FinPara
			
		FinSi
		
		// Se inserta el caracterElegido por el usuario en la posicionElegida por el usuario.
		vector[posicionElegida] = caracterElegido
		
		// ---------------------------------------------------------------
		// Ac� termina el ejercicio extra #5...
		// ---------------------------------------------------------------
		
	FinSi
	
	// Se muestra como finalmente qued� cargado el vector.
	escribir "El vector final qued� de la siguiente manera:"
	muestraVector(vector)
	
FinAlgoritmo


// Subprograma muestraVector
// Muestra un "vector" de 20 caracteres.
// NOTA: Si algun(os) valor(es) de "vector" est�(n) vac�o(s),
// se muestra un espacio en esa(s) posici�n(es).
SubProceso muestraVector(vector por referencia)
	
	definir posicion Como Entero
	
	para posicion = 0 hasta 19 con paso 1 Hacer
		// Si alguna posici�n del vector est� "vac�a" (no es lo mismo que espacio)
		// entones se muestra igual un espacio, para evitar confusiones.
		si vector[posicion] <> "" entonces
			escribir sin saltar vector[posicion]
		sino 
			escribir sin saltar " "
		finsi		
	FinPara
	
	// Se agrega un salto de l�nea para que la salida quede prolija.
	escribir ""
	
FinSubProceso

// Pruebas:
// Frase:                 	Posici�n	caracter	frase2
// "hola mundo"          	18			@			"hola mundo       @"
// "hola mundo"          	4			@			"hola@mundo"
// "hola hola hola hola."	10			@			"ola hola h@ola hola."
// "hola hola hola hola."	6			@			"ola h@ola hola hola."
// "hola hola hola hola."	8			@			"hola hol@a hola hola"
