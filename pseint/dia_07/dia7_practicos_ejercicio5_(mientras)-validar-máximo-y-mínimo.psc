// Clase 7 - Pr�cticos - Ejercicio 5 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Escriba un programa que solicite dos n�meros enteros (m�nimo y m�ximo). 
// A continuaci�n, se debe pedir al usuario que ingrese n�meros enteros 
// situados entre el m�ximo y m�nimo. 
// Cada vez que un n�mero se encuentre entre ese intervalo, se sumara uno a una variable. 
// El programa terminar� cuando se escriba un n�mero que no pertenezca a ese intervalo, 
// y al finalizar se debe mostrar por pantalla la cantidad de n�meros ingresados 
// dentro del intervalo.

Algoritmo practicos_ejercicio5
	
	// Definici�n de variables.
	definir minimo, maximo, num, contador como entero
	
	// Inicializaci�n de variables.
	minimo = 0
	maximo = 0
	num = 0
	contador = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero entero m�nimo, un m�ximo " sin saltar
	escribir "y luego se solicitar�n ingresar n�meros enteros entre el m�ximo y m�nimo ingresado." sin saltar
	escribir "Si el n�mero ingresado se encuentra en ese intervalo se contar�."
	escribir "El programa terminar� cuando se escriba un n�mero que no pertenezca al intervalo."
		
	// Se solicita al usuario ingresar el minimo y m�ximo.
	escribir "Ingrese un n�mero entero para usar como m�nimo: " sin saltar
	leer minimo
	escribir "Ingrese un n�mero entero para usar como m�ximo: " sin saltar
	leer maximo	
	escribir "Ingrese un n�mero dentro de ese intervalo (o por fuera para sal�r): " sin saltar
	leer num
	
	// Se contin�a solicitando ingresar n�meros mientras el n�mero ingresado se encuentre en el intervalo.
	mientras num <= maximo y num >= minimo Hacer
		contador = contador + 1
		Escribir "Ingrese otro n�mero entero dentro de ese intervalo (o por fuera para salr): " sin saltar
		leer num		
	FinMientras	
	
	// Se presenta la informaci�n solicitada por pantalla.
	escribir "La cantidad de n�meros ingresados que se encuentran en ese intervalo es: ", contador, "."
	
FinAlgoritmo
