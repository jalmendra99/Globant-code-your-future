// Clase 3 - Pr�cticos - Ejercicio 1 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Solicitar al usuario que ingrese la base y altura de un rect�ngulo, 
// y calcular y mostrar por pantalla el �rea y per�metro del mismo
// area = base * altura
// perimetro = 2 * altura + 2 * base.

Algoritmo practicos_ejercicio1
	
	// Definici�n de variables.
	definir base, altura Como Real
	
	// Inicializaci�n de variables.
	base = 0
	altura = 0
	
	// Se informa premisa al usuario
	escribir "Se calcular� el �rea y el per�metro de un rect�ngulo basado en la base y altura ingresados."

	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese la base de un rect�ngulo: "
	leer base
	escribir "Ingrese la altura de un rect�ngulo: "
	leer altura
	
	// Calcular �rea, per�metro y mostrar en pantalla.
	escribir "El �rea del rect�ngulo es: ", base * altura, " y el per�metro es: ", (2 * altura) + (2 * base)
	
FinAlgoritmo
