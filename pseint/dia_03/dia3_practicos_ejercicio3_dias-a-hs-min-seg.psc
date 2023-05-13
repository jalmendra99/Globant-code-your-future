// Clase 3 - Prácticos - Ejercicio 3 - página 2
// Fer V - jalmendra99@gmail.com
//
// A partir de una conocida cantidad de días que el usuario ingresa 
// a través del teclado, escriba un programa para convertir los días en horas, 
// en minutos y en segundos. Por ejemplo
// 1 día = 24 horas = 1440 minutos = 86400 segundos

Algoritmo practicos_ejercicio3
	
	// Definición de variables.
	definir dias Como Real
	
	// Inicialización de variables.
	dias = 0
	
	// Se informa premisa al usuario
	escribir "Se calculará la cantidad de horas, minutos y segundos respecto a la cantidad de días ingresada."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el número de días: " sin saltar
	leer dias
	
	// Calcular y mostrar en pantalla
	escribir dias, " días equivalen a ", dias * 24, " horas, o ", dias * 1440, " minutos, o ", dias * 86400, " segundos."
	
FinAlgoritmo
