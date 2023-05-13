// Clase 12 - Extras - Ejercicio 1
// Fer V - jalmendra99@gmail.com
//
// 1. Implementar una funci�n que permita obtener un n�mero entero aleatorio 
// comprendido entre dos l�mites que introduciremos por teclado. El n�mero obtenido se debe mostrar por pantalla.


// Principal.
Algoritmo ejercicio1
	
	// Definici�n de variables.
	definir minimo, maximo, num Como entero
	
	// Inicializaci�n de variables.
	minimo = 0
	maximo = 0
	num = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un m�nimo y un m�ximo y se procedera a mostrar un n�mero " sin saltar
	escribir " aleatorio comprendido entre ese rango."
	
	// Se solicita la informaci�n al usuario.	
	// Se fuerza a que los n�meros ingresados sean mayores o iguales a cero
	// y que m�ximo >= m�nimo.
	Hacer
		escribir "Ingrese un n�mero entero positivo para el m�nimo: " sin saltar
		leer minimo
		escribir "Ingrese un n�mero entero positivo para el m�ximo: " sin saltar
		leer maximo
	Mientras Que minimo < 0 o maximo < 0 o minimo > maximo
	
	// Se genera un n�mero al azar entre ese rango usando la funci�n solicitada.
	num = generarNumero(minimo, maximo)
	
	// Y se presenta el resultado por pantalla.
	escribir "Entre ", minimo, " y ", maximo, " se eligi� al azar el n�mero ", num, "."	
	
FinAlgoritmo


// Funci�n GenerarNumero
// Retorna Un n�mero entero al azar comprendido entre m�nimo y m�ximo.
Funcion retorno = GenerarNumero (minimo, maximo)
	definir retorno Como Entero
	
	retorno = aleatorio(minimo, maximo)
	
fin funcion
