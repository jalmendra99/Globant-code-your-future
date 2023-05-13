// Clase 4 - Pr�cticos - Ejercicio 2 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Construir un pseudoc�digo que permita ingresar un n�mero, 
// si el n�mero es mayor de 500, se debe calcular y mostrar en pantalla el 18% de este.

Algoritmo extra_ejercicio2
	
	// Definici�n de variables.
	definir numeroIngresado Como real
	
	// Inicializaci�n de variables.
	numeroIngresado = 0
	
	// Se informa premisa al usuario
	escribir "Se informar� si el n�mero ingresado es mayor que 500."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el n�mero: " sin saltar
	leer numeroIngresado
	
	// Se informa por pantalla si sueldo actual es mayor a sueldo m�nimo
	si numeroIngresado > 500 Entonces
		escribir "El n�mero es mayor a 500. Y el porcentaje es ", 500 * 0.18
	SiNo
		escribir "El n�mero es menor o igual a 500."
	FinSi
	
FinAlgoritmo