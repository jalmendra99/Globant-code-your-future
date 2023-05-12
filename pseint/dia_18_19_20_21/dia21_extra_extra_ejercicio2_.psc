// Clase 21 - ExtrasExtras - Ejercicio 2
// Fer V - jalmendra99@gmail.com
//
// RECORDAR TODO LO QUE VIMOS HASTA AHORA: ESTRUCTURAS DE CONTROL, SUBPROGRAMAS, ARREGLOS.
//
// 2) Crea un programa que pida al usuario su nombre y apellido y los muestre
//    escritos de la forma correcta (Primera letra en mayúsculas, y el resto
//    en minúsculas. Siempre debemos pensar que el usuario puede ingresar
//    los datos de una forma distinta a la que yo deseaba que lo hiciera.


// Principal.
Algoritmo clase21_extras_extras_ejercicio2
	
	// Definición de variables.
	definir nombre como cadena
	definir posicion como entero
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar al usuario su nombre y apellido y se mostrará " sin saltar
	escribir "de la forma correcta (Primera letra en mayúsculas y el resto en minúsculas)."
	
	// Se solicita el nombre y apellido al usuario
	// Y se fuerza a que al menos tenga un caracter.
	hacer
	escribir "Ingrese su nombre y apellido: " sin saltar
	leer nombre
	mientras que Longitud(nombre) < 1
	
	// Se imprime el primer caracter en mayúsculas...
	escribir sin saltar Mayusculas(subcadena(nombre, 0, 0))
	
	// Los restantes se imprimen en minúsculas, excepto....
	para posicion = 1 hasta longitud(nombre) - 1 con paso 1 Hacer
		
		// si el caracter de la posición anterior a la actual
		// fué un espacio, entonces este caracter se imprimirá en mayúsculas
		// (esto es para los segundos nombres, apellidos, etc.)
		si subcadena(nombre, posicion - 1, posicion - 1) == " " entonces
			escribir sin saltar mayusculas(subcadena(nombre, posicion, posicion))
		SiNo
			// El resto de los caracteres, se escribe en minúsculas.
			escribir sin saltar Minusculas(subcadena(nombre, posicion, posicion))
		finsi
	FinPara
	
	// Agrega un espacio al final del nombre impreso para prolijidad.
	escribir ""
	
FinAlgoritmo
