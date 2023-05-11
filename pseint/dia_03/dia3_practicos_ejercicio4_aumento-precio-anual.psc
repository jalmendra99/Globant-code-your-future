// Clase 3 - Prácticos - Ejercicio 4 - página 2
// Fer V - jalmendra99@gmail.com
//
// Crear un programa que solicite al usuario que ingrese 
// el precio de un producto al inicio del año, 
// y el precio del mismo producto al finalizar el año. 
// El programa debe calcular cuál fue el porcentaje de aumento 
// que tuvo ese producto en el año y mostrarlo por pantalla.

Algoritmo practicos_ejercicio4
	
	// Definición de variables.
	definir precio_inicio, precio_final Como Real
	
	// Inicialización de variables.
	precio_inicio = 0
	precio_final = 0
	
	// Se informa premisa al usuario
	escribir "Se calculará el porcentaje de aumento del precio de un producto."
	escribir "basándose en los precios ingresados del mismo"
	escribir "correspondientes al inicio y al final del año"
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el precio que tenía el producto al inicio del año: "
	escribir "(no puede ser cero!)"
	leer precio_inicio
	escribir "Ingrese el precio que tiene/tenía el producto al final del año: "
	leer precio_final
	
	// Calcular el porcentaje de aumento y mostrar en pantalla
	escribir "El porcentaje de aumento de precio del producto en el año fué de: ", ((precio_final / precio_inicio) -1) * 100 ,"%"
	
FinAlgoritmo
