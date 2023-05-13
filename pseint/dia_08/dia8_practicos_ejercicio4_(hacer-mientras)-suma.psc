// Clase 8 - Pr�cticos - Ejercicio 4 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Se debe realizar un programa que:
// 1�) Pida por teclado un n�mero (entero positivo). 
// 2�) Pregunte al usuario si desea introducir o no otro n�mero. 
// 3�) Repita los pasos 1� y 2� mientras que el usuario no responda n/N (no). 
// 4�) Muestre por pantalla la suma de los n�meros introducidos por el usuario.

Algoritmo practicos_ejercicio4
	
	// Definici�n de variables.
	definir num, sumatoria como entero
	definir continuar Como Caracter
	
	// Inicializaci�n de variables.	
	num = 0
	sumatoria = 0
	continuar = ""
	
	// Se informa premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero entero y positivo"
	escribir "luego se preguntar� si desea ingresar otro o no"
	escribir "y se continuaran solicitando n�meros hasta que el usuario ingrese N/n (no)."
	
	// Se continuar� solicitando ingresar n�meros enteros y positivos	
	// mientras que no se responda n/N (no).
	hacer 		
		escribir "Ingrese un n�mero entero: " sin saltar
		leer num
		
		sumatoria = sumatoria + num
		
		// Valida que solamente se responda S/s (si) o N/n (no).
		hacer
			escribir "�Desea ingresar otro n�mero? Responda S/s (si) o N/n (no): " sin saltar
			leer continuar		
		mientras que (mayusculas(continuar) <> "N") y (mayusculas(continuar) <> "S")
		
	mientras que (mayusculas(continuar) <> "N")
	
	// Se presenta la informaci�n solicitada por pantalla.
	escribir "La sumatoria de los n�meros enteros ingresados es ", sumatoria, "."
	
FinAlgoritmo
