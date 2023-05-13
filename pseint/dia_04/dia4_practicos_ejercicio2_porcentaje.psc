// Clase 4 - Prácticos - Ejercicio 2 - página 2
// Fer V - jalmendra99@gmail.com
//
// Construir un pseudocódigo que permita ingresar un número, 
// si el número es mayor de 500, se debe calcular y mostrar en pantalla el 18% de este.

Algoritmo extra_ejercicio2
	
	// Definición de variables.
	definir numeroIngresado Como real
	
	// Inicialización de variables.
	numeroIngresado = 0
	
	// Se informa premisa al usuario
	escribir "Se informará si el número ingresado es mayor que 500."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el número: " sin saltar
	leer numeroIngresado
	
	// Se informa por pantalla si sueldo actual es mayor a sueldo mínimo
	si numeroIngresado > 500 Entonces
		escribir "El número es mayor a 500. Y el porcentaje es ", 500 * 0.18
	SiNo
		escribir "El número es menor o igual a 500."
	FinSi
	
FinAlgoritmo