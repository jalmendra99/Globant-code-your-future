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
	
	Dimension vector[20]
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se solicitar� ingresar una frase de m�ximo 20 caracteres y luego "
	escribir sin saltar "se solicitar� ingresar un caracter y una posici�n para insertar ese "
	escribir            "caracter en el vector, si es posible (si la posici�n est� vac�a o es un espacio)."
	
	// Se solicita ingresar la frase al usuario...	
	escribir "Ingrese una frase de m�ximo 20 caracteres (m�s de 20 se ignorar�n): "
	leer frase
	
	// Se llena el "vector" con los 20 primeros caracteres de la "frase" ingresada.
	para posicion = 0 hasta 20 - 1 con paso 1 Hacer
		vector[posicion] = subcadena(frase, posicion, posicion)
	FinPara
	
	// Se muestra como qued� cargado el vector inicialmente:
	escribir "La frase ingresada qued� guardada en el vector de la siguiente forma:"
	muestraVector(vector)
	
	// Se solicita al usuario ingresar un caracter para insertar en el vector.
	escribir sin saltar "Ingrese un caracter para insertar en la frase: "
	leer caracterElegido	
	escribir ""
	
	// Se fuerza a que la posici�n seleccionada por el usuario est� entre 0 y 19.
	hacer
		escribir "Elija la posici�n donde insertar el caracter (entre 0 y 19)"
		leer posicionElegida
	mientras que posicionElegida < 0 o posicionElegida > 19
	
	
	// Si la posicionElegida en el vector est� vac�a o es un espacio...
	si vector[posicionElegida] == "" o vector[posicionElegida] == " " entonces
		
		// Se inserta el caracterElegido en la posicionElegida del vector.
		vector[posicionElegida] = caracterElegido
		
		// Mostrar el vector con el nuevo caracter ingresado.
		escribir sin saltar "Se ha insertado el caracter ", caracterElegido, " en la posici�n "
		escribir            posicionElegida, " del vector, quedando el mismo de la siguiente forma:"
		muestraVector(vector)
		
	SiNo // Si la posici�n del vector no est� vac�a o no es un espacio, se muestra un mensaje.
		escribir "La posici�n ", posicionElegida, " est� ocupada con el caracter ", vector[posicionElegida]
	FinSi
	
FinAlgoritmo


// Subprograma muestraVector
// Muestra un "vector" de 20 caracteres.
SubProceso muestraVector(vector por referencia)
	
	definir posicion Como Entero
	
	para posicion = 0 hasta 19 con paso 1 Hacer
		escribir sin saltar vector[posicion]
	FinPara
	
	// Se agrega un salto de l�nea para que la salida quede prolija.
	escribir ""
	
FinSubProceso
