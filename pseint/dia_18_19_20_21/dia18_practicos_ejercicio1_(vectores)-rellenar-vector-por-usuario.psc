// Clase 18 - Pr�cticos - Ejercicio 1 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que rellene un vector con 
// 5 valores ingresados por el usuario y los muestre por pantalla.


// Principal.
Algoritmo clase18_practicos_ejercicio1
	
	// Definici�n de variables.
	definir vector, elemento como entero
	Dimension  vector[5]
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar 5 n�meros enteros para cargar un vector que luego se mostrar� en pantalla."
	
	// Se solicita la informaci�n al usuario...	
	para elemento = 0 hasta 4 con paso 1 Hacer
		escribir "Ingrese un n�mero entero para vector[", elemento, "]: "
		leer vector[elemento]			
	FinPara
	
	// Y se presenta el resultado por pantalla.	
	para elemento = 0 hasta 4 con paso 1 Hacer
		escribir "vector [", elemento, "] = ", vector[elemento]
	FinPara

FinAlgoritmo
