// Clase 9 - Prácticos - Ejercicio 2 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que pida una frase y el programa deberá mostrar 
// la frase con un espacio entre cada letra. 
// La frase se mostrará así: H o l a. 
// Nota: recordar el funcionamiento de la función Subcadena().
// NOTA:. En PseInt, si queremos escribir sin que haya saltos de línea, 
// al final de la operación "escribir" escribimos "sin saltar". 
// Por ejemplo:
// Escribir sin saltar "Hola, " 
// Escribir sin saltar "cómo estás?" 
// Imprimirá por pantalla: Hola, cómo estás?

Algoritmo practicos_ejercicio2
	
	// Definición de variables.
	definir i como entero
	definir frase como cadena
	
	// Inicialización de variables.	
	i = 0
	frase = ""
	
	// Se informa premisa al usuario.
	escribir "Se pedirá ingresar una frase y se mostrará la misma con un espacio entre cada letra."
	
	// Se ingresa la frase.
	escribir "Ingrese una frase: "
	leer frase
	
	// Se presenta la información solicitada por pantalla.
	para i = 0 hasta longitud(frase) con paso 1 Hacer
		escribir sin saltar subcadena(frase, i, i)
		escribir sin saltar " "
	FinPara
	
	// Para que el programa finalice en la siguiente línea.
	escribir ""
	
FinAlgoritmo
