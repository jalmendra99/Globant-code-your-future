// Clase 12 - Extras - Ejercicio 7
// Fer V - jalmendra99@gmail.com
//
// 7. Crea un programa que pida el nombre al usuario y lo escriba al rev�s (de la �ltima letra a la primera).


//////// Nota: Previamente resuelto en 
//////// Clase 9 - Pr�cticos - Ejercicio 6 - p�gina 3
//////// Solo se elimin� el espaciado entre caracteres.

Algoritmo ejercicio7
	
	// Definici�n de variables.
	definir i como entero
	definir frase como cadena
	
	// Inicializaci�n de variables.	
	i = 0
	frase = ""
	
	// Se informa premisa al usuario.
	escribir "Se pedir� ingresar una frase y se mostrar� la misma invertida."
	
	// Se ingresa la frase.
	escribir "Ingrese una frase: "
	leer frase
	
	// Se presenta la informaci�n solicitada por pantalla.	
	para i = longitud(frase) hasta 0 con paso -1 Hacer
		escribir sin saltar subcadena(frase, i, i)		
	FinPara
	
	// Para que el programa finalice en la siguiente l�nea.
	escribir ""
	
FinAlgoritmo
