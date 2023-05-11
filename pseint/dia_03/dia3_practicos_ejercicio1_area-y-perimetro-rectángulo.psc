// Clase 3 - Prácticos - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Solicitar al usuario que ingrese la base y altura de un rectángulo, 
// y calcular y mostrar por pantalla el área y perímetro del mismo
// area = base * altura
// perimetro = 2 * altura + 2 * base.

Algoritmo practicos_ejercicio1
	
	// Definición de variables.
	definir base, altura Como Real
	
	// Inicialización de variables.
	base = 0
	altura = 0
	
	// Se informa premisa al usuario
	escribir "Se calculará el área y el perímetro de un rectángulo basado en la base y altura ingresados."

	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese la base de un rectángulo: "
	leer base
	escribir "Ingrese la altura de un rectángulo: "
	leer altura
	
	// Calcular área, perímetro y mostrar en pantalla.
	escribir "El área del rectángulo es: ", base * altura, " y el perímetro es: ", (2 * altura) + (2 * base)
	
FinAlgoritmo
