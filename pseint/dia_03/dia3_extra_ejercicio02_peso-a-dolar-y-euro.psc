// Clase 3 - Extra - Ejercicio 2 - página 2
// Fer V - jalmendra99@gmail.com
//
// Calcular el cambio de monedas en dólares y euros al ingresar cierta cantidad de dinero en pesos.

Algoritmo extra_ejercicio2
	
	// Definición de variables.
	definir pesos, cotiz_dolar, cotiz_euro Como real
	
	// Inicialización de variables.
	pesos = 0
	cotiz_dolar = 0
	cotiz_euro = 0
	
	// Se informa premisa al usuario
	escribir "Se informará el cambio de monedas en dólares y euros basado " sin saltar
	escribir "en la cantidad de dinero en pesos y las cotizaciones ingresadas."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese la cantidad de pesos a convertir: "
	leer pesos
	
	escribir "Ingrese la cotización del dólar en pesos (ejemplo al 30-mar-2023 = 390): "
	leer cotiz_dolar
	
	escribir "Ingrese la cotización del euro en pesos (ejemplo al 30-mar-2023 = 420): "
	leer cotiz_euro
	
	// Calcular el cambio y mostrar al usuario
	escribir pesos, " pesos equivalen a ", pesos / cotiz_dolar, " dólares y a ", pesos / cotiz_euro, " Euros."
	
FinAlgoritmo
