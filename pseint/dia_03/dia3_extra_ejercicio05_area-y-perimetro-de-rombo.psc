// Clase 3 - Extra - Ejercicio 5 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Mostrar el �rea y per�metro de un rombo.

Algoritmo extra_ejercicio5
	
	// Definici�n de variables.
	definir base, altura Como real
	
	// Inicializaci�n de variables.
	base = 0
	altura = 0
	
	// Se informa premisa al usuario
	escribir "Se calcular� el �rea y per�metro de un rombo con los valores ingresados de sus lados."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el largo de un lado: "
	leer base
	escribir "Ingrese el largo de otro lado: "
	leer altura
	
	// Calcular �rea y per�metro y mostrar al usuario
	escribir "El �rea del rombo es ", base * altura, " y el per�metro es ", (base * 2) + (altura * 2)
	
	// La soluci�n es la misma que al calcular rect�ngulos
	
FinAlgoritmo
