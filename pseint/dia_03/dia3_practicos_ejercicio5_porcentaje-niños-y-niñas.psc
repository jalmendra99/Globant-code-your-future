// Clase 3 - Prácticos - Ejercicio 5 - página 2
// Fer V - jalmendra99@gmail.com
//
// Un colegio desea saber qué porcentaje de niños y qué porcentaje 
// de niñas hay en el curso actual. 
// Diseñar un algoritmo para este propósito. 
// Recuerda que para calcular el porcentaje puedes hacer una regla de 3 simple. 
// El programa debe solicitar al usuario que ingrese la cantidad total de niños, 
// y la cantidad total de niñas que hay en el curso.

Algoritmo practicos_ejercicio5
	
	// Definición de variables. (no se pudo usar 'ñ')
	definir ninios, ninias, total Como Real
	
	// Inicialización de variables.
	ninios = 0
	ninias = 0
	total = 0
	
	// Se informa premisa al usuario
	escribir "Se calculará el porcentaje de niños y niñas que hay en el curso actual"
	escribir "basándose en las cantidades totales de niños y de niñas ingresados."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese la cantidad total de niños en el curso: "	
	leer ninios
	escribir "Ingrese la cantidad total de niñas en el curso: "	
	leer ninias
	
	// se calcula el total
	total = ninios + ninias
	
	// Calcular el porcentaje de niños y niñas respecto del total y mostrar en pantalla
	escribir "El porcentaje de niños es de: ", ninios * 100 / total, "% y el de niñas es de: ", ninias * 100 / total, "%."
	
	// Solución con regla de 3 simple:
	// total = niños + niñas
	// total ------- 100
	// niños ------- niños * 100 / total
	
FinAlgoritmo
