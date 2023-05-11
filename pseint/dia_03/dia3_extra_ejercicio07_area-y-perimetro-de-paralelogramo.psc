// Clase 3 - Extra - Ejercicio 7 - página 2
// Fer V - jalmendra99@gmail.com
//
// Mostrar el área y perímetro de un paralelogramo.

////////// Es lo mismo que para el rombo?

Algoritmo extra_ejercicio7
	
	// Definición de variables.
	definir lado1, lado2 Como real
	
	// Inicialización de variables.
	lado1 = 0
	lado2 = 0
	
	// Se informa premisa al usuario
	escribir "Se calculará el área y perímetro de un paralelogramo con los valores ingresados de sus lados."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el largo de un lado: "
	leer lado1
	escribir "Ingrese el largo de otro lado: "
	leer lado2
	
	// Calcular área y perímetro y mostrar al usuario
	escribir "El área del paralelogramo es ", lado1 * lado2, " y el perímetro es ", (lado1 * 2) + (lado2 * 2)
	
	// La solución es la misma que al calcular rectángulos
	
FinAlgoritmo
