// Clase 8 - Prácticos - Ejercicio 4 - página 2
// Fer V - jalmendra99@gmail.com
//
// Se debe realizar un programa que:
// 1º) Pida por teclado un número (entero positivo). 
// 2º) Pregunte al usuario si desea introducir o no otro número. 
// 3º) Repita los pasos 1º y 2º mientras que el usuario no responda n/N (no). 
// 4º) Muestre por pantalla la suma de los números introducidos por el usuario.

Algoritmo practicos_ejercicio4
	
	// Definición de variables.
	definir num, sumatoria como entero
	definir continuar Como Caracter
	
	// Inicialización de variables.	
	num = 0
	sumatoria = 0
	continuar = ""
	
	// Se informa premisa al usuario.
	escribir "Se solicitará ingresar un número entero y positivo"
	escribir "luego se preguntará si desea ingresar otro o no"
	escribir "y se continuaran solicitando números hasta que el usuario ingrese N/n (no)."
	
	// Se continuará solicitando ingresar números enteros y positivos	
	// mientras que no se responda n/N (no).
	hacer 		
		escribir "Ingrese un número entero: " sin saltar
		leer num
		
		sumatoria = sumatoria + num
		
		// Valida que solamente se responda S/s (si) o N/n (no).
		hacer
			escribir "¿Desea ingresar otro número? Responda S/s (si) o N/n (no): " sin saltar
			leer continuar		
		mientras que (mayusculas(continuar) <> "N") y (mayusculas(continuar) <> "S")
		
	mientras que (mayusculas(continuar) <> "N")
	
	// Se presenta la información solicitada por pantalla.
	escribir "La sumatoria de los números enteros ingresados es ", sumatoria, "."
	
FinAlgoritmo
