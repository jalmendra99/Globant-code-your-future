// Clase 3 - Extra - Ejercicio 7 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Mostrar el �rea y per�metro de un paralelogramo.

////////// Es lo mismo que para el rombo?

Algoritmo extra_ejercicio7
	
	// Definici�n de variables.
	definir lado1, lado2 Como real
	
	// Inicializaci�n de variables.
	lado1 = 0
	lado2 = 0
	
	// Se informa premisa al usuario
	escribir "Se calcular� el �rea y per�metro de un paralelogramo con los valores ingresados de sus lados."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el largo de un lado: "
	leer lado1
	escribir "Ingrese el largo de otro lado: "
	leer lado2
	
	// Calcular �rea y per�metro y mostrar al usuario
	escribir "El �rea del paralelogramo es ", lado1 * lado2, " y el per�metro es ", (lado1 * 2) + (lado2 * 2)
	
	// La soluci�n es la misma que al calcular rect�ngulos
	
FinAlgoritmo
