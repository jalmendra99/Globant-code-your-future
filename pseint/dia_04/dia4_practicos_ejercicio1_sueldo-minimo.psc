// Clase 4 - Pr�cticos - Ejercicio 1 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Un hombre desea saber si su sueldo es mayor al sueldo m�nimo, 
// el programa le pedir� al usuario su sueldo actual y el sueldo m�nimo. 
// Si el sueldo es mayor al m�nimo se debe mostrar un mensaje por pantalla indic�ndolo.

Algoritmo extra_ejercicio1
	
	// Definici�n de variables.
	definir sueldoActual, sueldoMinimo Como real
	
	// Inicializaci�n de variables.
	sueldoActual = 0
	sueldoMinimo = 0
	
	// Se informa premisa al usuario
	escribir "Se informar� si el sueldo de una persona es mayor al " sin saltar
	escribir "sueldo m�nimo basado en los datos ingresados."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el sueldo actual: " sin saltar
	leer sueldoActual
	escribir "Ingrese el sueldo m�nimo: " sin saltar
	leer sueldoMinimo
	
	// Se informa por pantalla si sueldo actual es mayor a sueldo m�nimo
	si sueldoActual > sueldoMinimo Entonces
		escribir "El sueldo actual es mayor al sueldo m�nimo" 
	SiNo
		escribir "El sueldo actual es menor o igual al sueldo m�nimo"
	FinSi
	
FinAlgoritmo
