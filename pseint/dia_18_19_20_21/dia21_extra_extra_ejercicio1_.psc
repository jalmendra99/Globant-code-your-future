// Clase 21 - ExtrasExtras - Ejercicio 1
// Fer V - jalmendra99@gmail.com
//
// RECORDAR TODO LO QUE VIMOS HASTA AHORA: ESTRUCTURAS DE CONTROL, SUBPROGRAMAS, ARREGLOS.
//
// 1) Crea un programa que pida una frase al usuario y diga cuantas palabras contiene. 
// (Ayudita! los espacios podrían funcionar como advertencia para los cortes de palabras).


// Principal.
Algoritmo clase21_extras_extra_ejercicio1
	
	// Definición de variables.
	definir frase como cadena
	definir palabras, posicion como entero
	
	// Inicializacion de variables.
	frase = ""
	palabras = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar unna frase, y se mostrará cuantas palabras contiene."
	
	// Se solicita la frase al usuario...	
	// Y se fuerza a que tenga al menos un caracter.
	Hacer
		escribir "Ingrese una frase (no vacía)."
		leer frase
	mientras que longitud(frase) < 1
	
	////////// Horrible manera de contar palabras. Mejorar esto y comentarlo.
	para posicion = 1 hasta longitud(frase) - 1 con paso 1 Hacer
		
		si subcadena(frase, posicion - 1, posicion - 1) <> " " 
			si subcadena(frase, posicion, posicion) == " "
				palabras = palabras + 1
			FinSi
			
		FinSi
		
		si posicion == longitud(frase) - 1 y subcadena(frase, posicion, posicion) <> " " Entonces
			palabras = palabras + 1
		FinSi		
		
	FinPara
	
	// Se muestra la información solicitada.
	escribir "La frase: ", frase, " tiene ", palabras, " palabras."	
	
finAlgoritmo
