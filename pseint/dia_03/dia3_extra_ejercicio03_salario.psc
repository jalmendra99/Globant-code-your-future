// Clase 3 - Extra - Ejercicio 3 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Hacer un programa que calcule el salario de un empleado, si se descuenta el 20% de su salario bruto.

Algoritmo extra_ejercicio3
	
	// Definici�n de variables.
	definir salario Como real
	
	// Inicializaci�n de variables.
	salario = 0
	
	// Se informa premisa al usuario
	escribir "Se informar� el salario de un empleado luego de descontarle el 20 al n�mero ingresado."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el salario bruto: " sin saltar
	leer salario
	
	// Calcular el salario neto y mostrar al usuario
	escribir "El salario neto (bruto - 20%) es de: " salario - (salario * 0.2)
	
FinAlgoritmo
