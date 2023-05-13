// Clase 4 - Prácticos - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Un hombre desea saber si su sueldo es mayor al sueldo mínimo, 
// el programa le pedirá al usuario su sueldo actual y el sueldo mínimo. 
// Si el sueldo es mayor al mínimo se debe mostrar un mensaje por pantalla indicándolo.

Algoritmo extra_ejercicio1
	
	// Definición de variables.
	definir sueldoActual, sueldoMinimo Como real
	
	// Inicialización de variables.
	sueldoActual = 0
	sueldoMinimo = 0
	
	// Se informa premisa al usuario
	escribir "Se informará si el sueldo de una persona es mayor al " sin saltar
	escribir "sueldo mínimo basado en los datos ingresados."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el sueldo actual: " sin saltar
	leer sueldoActual
	escribir "Ingrese el sueldo mínimo: " sin saltar
	leer sueldoMinimo
	
	// Se informa por pantalla si sueldo actual es mayor a sueldo mínimo
	si sueldoActual > sueldoMinimo Entonces
		escribir "El sueldo actual es mayor al sueldo mínimo" 
	SiNo
		escribir "El sueldo actual es menor o igual al sueldo mínimo"
	FinSi
	
FinAlgoritmo
