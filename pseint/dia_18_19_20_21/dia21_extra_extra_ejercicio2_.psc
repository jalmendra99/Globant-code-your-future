// Clase 21 - ExtrasExtras - Ejercicio 2
// Fer V - jalmendra99@gmail.com
//
// RECORDAR TODO LO QUE VIMOS HASTA AHORA: ESTRUCTURAS DE CONTROL, SUBPROGRAMAS, ARREGLOS.
//
// 2) Crea un programa que pida al usuario su nombre y apellido y los muestre
//    escritos de la forma correcta (Primera letra en may�sculas, y el resto
//    en min�sculas. Siempre debemos pensar que el usuario puede ingresar
//    los datos de una forma distinta a la que yo deseaba que lo hiciera.


// Principal.
Algoritmo clase21_extras_extras_ejercicio2
	
	// Definici�n de variables.
	definir nombre como cadena
	definir posicion como entero
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar al usuario su nombre y apellido y se mostrar� " sin saltar
	escribir "de la forma correcta (Primera letra en may�sculas y el resto en min�sculas)."
	
	// Se solicita el nombre y apellido al usuario
	// Y se fuerza a que al menos tenga un caracter.
	hacer
	escribir "Ingrese su nombre y apellido: " sin saltar
	leer nombre
	mientras que Longitud(nombre) < 1
	
	// Se imprime el primer caracter en may�sculas...
	escribir sin saltar Mayusculas(subcadena(nombre, 0, 0))
	
	// Los restantes se imprimen en min�sculas, excepto....
	para posicion = 1 hasta longitud(nombre) - 1 con paso 1 Hacer
		
		// si el caracter de la posici�n anterior a la actual
		// fu� un espacio, entonces este caracter se imprimir� en may�sculas
		// (esto es para los segundos nombres, apellidos, etc.)
		si subcadena(nombre, posicion - 1, posicion - 1) == " " entonces
			escribir sin saltar mayusculas(subcadena(nombre, posicion, posicion))
		SiNo
			// El resto de los caracteres, se escribe en min�sculas.
			escribir sin saltar Minusculas(subcadena(nombre, posicion, posicion))
		finsi
	FinPara
	
	// Agrega un espacio al final del nombre impreso para prolijidad.
	escribir ""
	
FinAlgoritmo
