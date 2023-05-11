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
	
	Dimension vector[20]
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se solicitará ingresar una frase de máximo 20 caracteres y luego "
	escribir sin saltar "se solicitará ingresar un caracter y una posición para insertar ese "
	escribir            "caracter en el vector, si es posible (si la posición está vacía o es un espacio)."
	
	// Se solicita ingresar la frase al usuario...	
	escribir "Ingrese una frase de máximo 20 caracteres (más de 20 se ignorarán): "
	leer frase
	
	// Se llena el "vector" con los 20 primeros caracteres de la "frase" ingresada.
	para posicion = 0 hasta 20 - 1 con paso 1 Hacer
		vector[posicion] = subcadena(frase, posicion, posicion)
	FinPara
	
	// Se muestra como quedó cargado el vector inicialmente:
	escribir "La frase ingresada quedó guardada en el vector de la siguiente forma:"
	muestraVector(vector)
	
	// Se solicita al usuario ingresar un caracter para insertar en el vector.
	escribir sin saltar "Ingrese un caracter para insertar en la frase: "
	leer caracterElegido	
	escribir ""
	
	// Se fuerza a que la posición seleccionada por el usuario esté entre 0 y 19.
	hacer
		escribir "Elija la posición donde insertar el caracter (entre 0 y 19)"
		leer posicionElegida
	mientras que posicionElegida < 0 o posicionElegida > 19
	
	
	// Si la posicionElegida en el vector está vacía o es un espacio...
	si vector[posicionElegida] == "" o vector[posicionElegida] == " " entonces
		
		// Se inserta el caracterElegido en la posicionElegida del vector.
		vector[posicionElegida] = caracterElegido
		
		// Mostrar el vector con el nuevo caracter ingresado.
		escribir sin saltar "Se ha insertado el caracter ", caracterElegido, " en la posición "
		escribir            posicionElegida, " del vector, quedando el mismo de la siguiente forma:"
		muestraVector(vector)
		
	SiNo // Si la posición del vector no está vacía o no es un espacio, se muestra un mensaje.
		escribir "La posición ", posicionElegida, " está ocupada con el caracter ", vector[posicionElegida]
	FinSi
	
FinAlgoritmo


// Subprograma muestraVector
// Muestra un "vector" de 20 caracteres.
SubProceso muestraVector(vector por referencia)
	
	definir posicion Como Entero
	
	para posicion = 0 hasta 19 con paso 1 Hacer
		escribir sin saltar vector[posicion]
	FinPara
	
	// Se agrega un salto de línea para que la salida quede prolija.
	escribir ""
	
FinSubProceso
