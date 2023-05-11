// Clase 7 - Pr�cticos - Ejercicio 2 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Escriba un programa en el cual se ingrese un valor l�mite positivo, 
// y a continuaci�n solicite n�meros al usuario hasta que la suma 
// de los n�meros introducidos supere el l�mite inicial.

Algoritmo practicos_ejercicio2
	
	// Definici�n de variables.
	definir limite, num, suma como entero
	
	// Inicializaci�n de variables.
	limite = 0
	num = 0
	suma = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitar� un n�mero entero para usar como l�mite"
	escribir "Y luego se solicitar�n ingresar n�meros que se ir�n sumando"
	escribir "hasta llegar al l�mite ingresado."
	
	// Se solicita al usuario ingresar el l�mite.
	escribir "Por favor ingrese n�mero entero para usar como l�mite: "
	leer limite
	
	// Se suman los n�meros ingresados hasta que la suma supere el l�mite inicial.
	mientras suma <= limite Hacer
		Escribir "Ingrese un n�mero entero: "
		leer num
		suma = suma + num
		escribir "Suma: ", suma, " - L�mite: ", limite, "."
	FinMientras	
	
FinAlgoritmo
