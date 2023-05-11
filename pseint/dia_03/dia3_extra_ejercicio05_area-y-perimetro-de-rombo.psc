// Clase 3 - Extra - Ejercicio 5 - página 2
// Fer V - jalmendra99@gmail.com
//
// Mostrar el área y perímetro de un rombo.

Algoritmo extra_ejercicio5
	
	// Definición de variables.
	definir base, altura Como real
	
	// Inicialización de variables.
	base = 0
	altura = 0
	
	// Se informa premisa al usuario
	escribir "Se calculará el área y perímetro de un rombo con los valores ingresados de sus lados."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el largo de un lado: "
	leer base
	escribir "Ingrese el largo de otro lado: "
	leer altura
	
	// Calcular área y perímetro y mostrar al usuario
	escribir "El área del rombo es ", base * altura, " y el perímetro es ", (base * 2) + (altura * 2)
	
	// La solución es la misma que al calcular rectángulos
	
FinAlgoritmo
