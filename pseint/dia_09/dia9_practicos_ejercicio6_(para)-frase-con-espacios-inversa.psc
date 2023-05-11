// Clase 9 - Pr�cticos - Ejercicio 6 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Siguiendo el ejercicio 2 de los ejercicios principales, 
// ahora deberemos hacer lo mismo pero que la cadena se muestre al rev�s. 
// Por ejemplo, si tenemos la cadena: Hola, deberemos mostrar a l o H.

// --------------------------
// Ejercicio 2 p�gina 2
//
// Realizar un programa que pida una frase y el programa deber� mostrar 
// la frase con un espacio entre cada letra. 
// La frase se mostrar� as�: H o l a. 
// Nota: recordar el funcionamiento de la funci�n Subcadena().
// NOTA:. En PseInt, si queremos escribir sin que haya saltos de l�nea, 
// al final de la operaci�n "escribir" escribimos "sin saltar". 
// Por ejemplo:
// Escribir sin saltar "Hola, " 
// Escribir sin saltar "c�mo est�s?" 
// Imprimir� por pantalla: Hola, c�mo est�s?

// -------------------------------
// Nota Fer: El c�digo es exactamente el mismo, solo que se invierte la definici�n del loop "para"
// En vez de ser:
// para		i = 0					hasta	longitud(frase)		con paso 1 Hacer
// quedar�a:
// para		i = longitud(frase) 	hasta 	0					con paso -1 Hacer

Algoritmo practicos_ejercicio6
	
	// Definici�n de variables.
	definir i como entero
	definir frase como cadena
	
	// Inicializaci�n de variables.	
	i = 0
	frase = ""
	
	// Se informa premisa al usuario.
	escribir sin saltar "Se pedir� ingresar una frase y se mostrar� la misma invertida y "
	escribir "con un espacio entre cada letra."
	
	// Se ingresa la frase.
	escribir "Ingrese una frase: "
	leer frase
	
	// Se presenta la informaci�n solicitada por pantalla.	
	para i = longitud(frase) hasta 0 con paso -1 Hacer
		escribir sin saltar subcadena(frase, i, i)
		escribir sin saltar " "
	FinPara
	
	// Para que el programa finalice en la siguiente l�nea.
	escribir ""
	
FinAlgoritmo
