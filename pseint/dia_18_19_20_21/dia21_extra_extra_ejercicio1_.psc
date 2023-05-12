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
	definir letraAnterior, letra Como Caracter
	
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
	
	// Siguiendo el enunciado, lo más evidente sería contar los espacios que hay en la frase
	//  pero hacer eso, calcula una cantidad de palabras incorrecta usando frases como:
	//  "         hola   "
	//  "palabra1 palabra2 3          "
	//  etc.
	
	si longitud(frase) == 1 Entonces
		si subcadena(frase, 0, 0) <> " " entonces
			palabras = 1
		FinSi
	SiNo
		
	// Se recorren todos los caracteres de una "frase", de a una "posición" por vez.
	// La "posición" se cuenta desde 1 y no desde 0 porque en la primera iteración 
	// del ciclo, la "posiciónAnterior" tiene que ser una posición válida en la cadena.
	para posicion = 1 hasta longitud(frase) - 1 con paso 1 Hacer
		
		// Se guarda en "letra" la letra correspondiente a la posición actual en la frase.
		letra = subcadena(frase, posicion, posicion) 
		
		// Se guarda en "letraAnterior" la letra correspondiente a la posición anterior a la actual.
		letraAnterior = subcadena(frase, posicion - 1, posicion - 1)
		
		// Si la "letraAnterior" no es un espacio y la letra actual ES un espacio, entonces...
		si letraAnterior <> " " y letra == " "
			// ... se interpreta que termina una palabra, y por lo tanto se suma 1
			// a la variable "palabras" que guarda la cantidad total de palabras en "frase".
			palabras = palabras + 1			
		FinSi
		
		// Para el caso del último caracter de la frase "posición == longitud(frase) -1"...
		// no vá a existír un espacio en el siguiente caracter, porque no "existe" siguiente caracter..
		// así que se suma uno a la cantidad de palabras, SOLO si el último caracter
		// de la frase NO es un espacio.
		si posicion == longitud(frase) - 1 y letra <> " " Entonces
			palabras = palabras + 1
		FinSi
		
	FinPara
	finsi
	
	// Se muestra la información solicitada.
	escribir "La frase: ", frase, " tiene ", palabras, " palabras."	
	
finAlgoritmo

// Pruebas:
// Palabra                  Resultado deseado
// --------------------		-----------------
// "   "				<-- 0 palabras
// " "					<-- 0 palabras
// "    hola   hola h"	<-- 3 palabras
// "h"					<-- 1 palabra
// "         h"			<-- 1 palabra
// "     h      "		<-- 1 palabra
