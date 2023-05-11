// Clase 3 - Pr�cticos - Ejercicio 4 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Crear un programa que solicite al usuario que ingrese 
// el precio de un producto al inicio del a�o, 
// y el precio del mismo producto al finalizar el a�o. 
// El programa debe calcular cu�l fue el porcentaje de aumento 
// que tuvo ese producto en el a�o y mostrarlo por pantalla.

Algoritmo practicos_ejercicio4
	
	// Definici�n de variables.
	definir precio_inicio, precio_final Como Real
	
	// Inicializaci�n de variables.
	precio_inicio = 0
	precio_final = 0
	
	// Se informa premisa al usuario
	escribir "Se calcular� el porcentaje de aumento del precio de un producto."
	escribir "bas�ndose en los precios ingresados del mismo"
	escribir "correspondientes al inicio y al final del a�o"
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el precio que ten�a el producto al inicio del a�o: "
	escribir "(no puede ser cero!)"
	leer precio_inicio
	escribir "Ingrese el precio que tiene/ten�a el producto al final del a�o: "
	leer precio_final
	
	// Calcular el porcentaje de aumento y mostrar en pantalla
	escribir "El porcentaje de aumento de precio del producto en el a�o fu� de: ", ((precio_final / precio_inicio) -1) * 100 ,"%"
	
FinAlgoritmo
