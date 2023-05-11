// Clase 3 - Pr�cticos - Ejercicio 5 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Un colegio desea saber qu� porcentaje de ni�os y qu� porcentaje 
// de ni�as hay en el curso actual. 
// Dise�ar un algoritmo para este prop�sito. 
// Recuerda que para calcular el porcentaje puedes hacer una regla de 3 simple. 
// El programa debe solicitar al usuario que ingrese la cantidad total de ni�os, 
// y la cantidad total de ni�as que hay en el curso.

Algoritmo practicos_ejercicio5
	
	// Definici�n de variables. (no se pudo usar '�')
	definir ninios, ninias, total Como Real
	
	// Inicializaci�n de variables.
	ninios = 0
	ninias = 0
	total = 0
	
	// Se informa premisa al usuario
	escribir "Se calcular� el porcentaje de ni�os y ni�as que hay en el curso actual"
	escribir "bas�ndose en las cantidades totales de ni�os y de ni�as ingresados."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese la cantidad total de ni�os en el curso: "	
	leer ninios
	escribir "Ingrese la cantidad total de ni�as en el curso: "	
	leer ninias
	
	// se calcula el total
	total = ninios + ninias
	
	// Calcular el porcentaje de ni�os y ni�as respecto del total y mostrar en pantalla
	escribir "El porcentaje de ni�os es de: ", ninios * 100 / total, "% y el de ni�as es de: ", ninias * 100 / total, "%."
	
	// Soluci�n con regla de 3 simple:
	// total = ni�os + ni�as
	// total ------- 100
	// ni�os ------- ni�os * 100 / total
	
FinAlgoritmo
