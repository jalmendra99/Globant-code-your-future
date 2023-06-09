// Clase 8 - Teor�a - Ejercicio 1 - p�gina 4
// Fer V - jalmendra99@gmail.com
//
// EJERCICIO VOCAL SECRETA - PARTE 2
// Vamos a hacer nuevamente el ejercicio de la vocal misteriosa, 
// pero esta vez con una estructura Hacer-Mientras. 
// �Puedes notar cu�l es la diferencia entre ambas estructuras?

Algoritmo teoria_ejercicio1
	
	// Definici�n de variables.
	definir secreta, ingresada como caracter	
	
	// Inicializaci�n de variables.
	ingresada = ""
	
	// Agregado para que el programa elija una vocal al azar.
	definir num Como Entero
	num = azar(4)
	segun num Hacer
		0: secreta = "a"
		1: secreta = "e"
		2: secreta = "i"
		3: secreta = "o"
		4: secreta = "u"
		de otro modo: escribir "Error grave al asignar valor a vocal."			
	FinSegun
	
	// Se contin�a pidiendo al usuario que intente hasta que adivine la vocal correcta.
	hacer
		escribir "Adivine la vocal que ha sido seleccionada."
		leer ingresada	
		
		// Se pasa la letra ingresada a min�sculas, para que las comparaci�nes sean m�s simples.
		ingresada = minusculas(ingresada)
		
		// Si la vocal ingresada no es la correcta...
		si ingresada <> secreta entonces
			// Se muestra un mensaje al usuaior para que intente denuevo.
			escribir "No es la correcta. Intente denuevo: "
		finsi
		
	mientras que minusculas(ingresada) <> secreta	
	
	// Sal�r del bucle "hacer" anterior, implica SI o SI que la vocal ingresada ha sido finalmente la correcta.
	escribir "Adivin� la vocal!"
	
FinAlgoritmo
