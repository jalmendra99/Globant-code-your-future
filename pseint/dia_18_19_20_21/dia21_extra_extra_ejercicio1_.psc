// Clase 21 - ExtrasExtras - Ejercicio 1
// Fer V - jalmendra99@gmail.com
//
// RECORDAR TODO LO QUE VIMOS HASTA AHORA: ESTRUCTURAS DE CONTROL, SUBPROGRAMAS, ARREGLOS.
//
// 1) Crea un programa que pida una frase al usuario y diga cuantas palabras contiene. 
// (Ayudita! los espacios podr�an funcionar como advertencia para los cortes de palabras).


// Principal.
Algoritmo clase21_extras_extra_ejercicio1
	
	// Definici�n de variables.
	definir frase como cadena
	definir palabras, posicion como entero
	definir letraAnterior, letra Como Caracter
	
	// Inicializacion de variables.
	frase = ""
	palabras = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar unna frase, y se mostrar� cuantas palabras contiene."
	
	// Se solicita la frase al usuario...	
	// Y se fuerza a que tenga al menos un caracter.
	Hacer
		escribir "Ingrese una frase (no vac�a)."
		leer frase
	mientras que longitud(frase) < 1
	
	// Siguiendo el enunciado, lo m�s evidente ser�a contar los espacios que hay en la frase
	//  pero hacer eso, calcula una cantidad de palabras incorrecta usando frases como:
	//  "         hola   "
	//  "palabra1 palabra2 3          "
	//  etc.
	
	si longitud(frase) == 1 Entonces
		si subcadena(frase, 0, 0) <> " " entonces
			palabras = 1
		FinSi
	SiNo
		
	// Se recorren todos los caracteres de una "frase", de a una "posici�n" por vez.
	// La "posici�n" se cuenta desde 1 y no desde 0 porque en la primera iteraci�n 
	// del ciclo, la "posici�nAnterior" tiene que ser una posici�n v�lida en la cadena.
	para posicion = 1 hasta longitud(frase) - 1 con paso 1 Hacer
		
		// Se guarda en "letra" la letra correspondiente a la posici�n actual en la frase.
		letra = subcadena(frase, posicion, posicion) 
		
		// Se guarda en "letraAnterior" la letra correspondiente a la posici�n anterior a la actual.
		letraAnterior = subcadena(frase, posicion - 1, posicion - 1)
		
		// Si la "letraAnterior" no es un espacio y la letra actual ES un espacio, entonces...
		si letraAnterior <> " " y letra == " "
			// ... se interpreta que termina una palabra, y por lo tanto se suma 1
			// a la variable "palabras" que guarda la cantidad total de palabras en "frase".
			palabras = palabras + 1			
		FinSi
		
		// Para el caso del �ltimo caracter de la frase "posici�n == longitud(frase) -1"...
		// no v� a exist�r un espacio en el siguiente caracter, porque no "existe" siguiente caracter..
		// as� que se suma uno a la cantidad de palabras, SOLO si el �ltimo caracter
		// de la frase NO es un espacio.
		si posicion == longitud(frase) - 1 y letra <> " " Entonces
			palabras = palabras + 1
		FinSi
		
	FinPara
	finsi
	
	// Se muestra la informaci�n solicitada.
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
