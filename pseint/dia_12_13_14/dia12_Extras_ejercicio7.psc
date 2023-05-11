// Clase 12 - Extras - Ejercicio 7
// Fer V - jalmendra99@gmail.com
//
// 7. Crea un programa que pida el nombre al usuario y lo escriba al revés (de la última letra a la primera).


//////// Nota: Previamente resuelto en 
//////// Clase 9 - Prácticos - Ejercicio 6 - página 3
//////// Solo se eliminó el espaciado entre caracteres.

Algoritmo ejercicio7
	
	// Definición de variables.
	definir i como entero
	definir frase como cadena
	
	// Inicialización de variables.	
	i = 0
	frase = ""
	
	// Se informa premisa al usuario.
	escribir "Se pedirá ingresar una frase y se mostrará la misma invertida."
	
	// Se ingresa la frase.
	escribir "Ingrese una frase: "
	leer frase
	
	// Se presenta la información solicitada por pantalla.	
	para i = longitud(frase) hasta 0 con paso -1 Hacer
		escribir sin saltar subcadena(frase, i, i)		
	FinPara
	
	// Para que el programa finalice en la siguiente línea.
	escribir ""
	
FinAlgoritmo
