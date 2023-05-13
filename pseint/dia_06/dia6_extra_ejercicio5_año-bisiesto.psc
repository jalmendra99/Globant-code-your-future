// Clase 6 - Extra - Ejercicio 5 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Condicionales anidados
// Realice un programa que, dado un a�o, nos diga si es bisiesto o no. 
// Un a�o es bisiesto bajo las siguientes condiciones:  
// Un a�o divisible por 4 es bisiesto y no debe ser divisible por 100.  
// Si un a�o es divisible por 100 y adem�s es divisible por 400, 
// tambi�n resulta bisiesto. 
// Nota: recuerde la funci�n mod de PseInt

Algoritmo extra_ejercicio5
	
	// Definici�n de variables.
	definir anio Como entero
	definir esBisiesto Como Logico
	
	// Inicializaci�n de variables.
	anio = 0
	esBisiesto = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedir� al usuario ingresar un a�o y se calcular� si es bisiesto."
	
	// Cargando el a�o ingresado por el usuario.
	escribir "Ingrese un a�o (1900 a 2900): " sin saltar
	leer anio
	
	// Se determina si el a�o es bisiesto.
	esBisiesto = ((anio mod 4 == 0) y (anio mod 100 <> 0)) o ((anio mod 100 == 0) y (anio mod 400 == 0))
	
	// Se muestra la informaci�n solicitada
	si esBisiesto
		imprimir "El a�o ingresado es bisiesto."
	SiNo
		imprimir "El a�o ingresado NO es bisiesto."
	FinSi
	
FinAlgoritmo