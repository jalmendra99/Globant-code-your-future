// Clase 6 - Extra - Ejercicio 5 - página 2
// Fer V - jalmendra99@gmail.com
//
// Condicionales anidados
// Realice un programa que, dado un año, nos diga si es bisiesto o no. 
// Un año es bisiesto bajo las siguientes condiciones:  
// Un año divisible por 4 es bisiesto y no debe ser divisible por 100.  
// Si un año es divisible por 100 y además es divisible por 400, 
// también resulta bisiesto. 
// Nota: recuerde la función mod de PseInt

Algoritmo extra_ejercicio5
	
	// Definición de variables.
	definir anio Como entero
	definir esBisiesto Como Logico
	
	// Inicialización de variables.
	anio = 0
	esBisiesto = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedirá al usuario ingresar un año y se calculará si es bisiesto."
	
	// Cargando el año ingresado por el usuario.
	escribir "Ingrese un año (1900 a 2900): " sin saltar
	leer anio
	
	// Se determina si el año es bisiesto.
	esBisiesto = ((anio mod 4 == 0) y (anio mod 100 <> 0)) o ((anio mod 100 == 0) y (anio mod 400 == 0))
	
	// Se muestra la información solicitada
	si esBisiesto
		imprimir "El año ingresado es bisiesto."
	SiNo
		imprimir "El año ingresado NO es bisiesto."
	FinSi
	
FinAlgoritmo