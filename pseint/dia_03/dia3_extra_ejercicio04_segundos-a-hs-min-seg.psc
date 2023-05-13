// Clase 3 - Extra - Ejercicio 4 - página 2
// Fer V - jalmendra99@gmail.com
//
// Hacer un programa que ingrese por teclado un número total de segundos 
// y que luego pueda mostrar la cantidad de horas, minutos y segundos que existen en el valor ingresado.

Algoritmo extra_ejercicio4
	
	// Definición de variables. (no se pudo usar 'segundos' como nombre de variable)
	definir cant_segundos Como real
	
	// Inicialización de variables.
	cant_segundos = 0
	
	// Se informa premisa al usuario
	escribir "Se informará la cantidad de horas, minutos y segundos que " sin saltar
	escribir "existen en el valor ingresado (en segundos)."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese un número de segundos: " sin saltar
	leer cant_segundos
	
	// Calcular horas, min y segundos y mostrar al usuario
	escribir cant_segundos, " equivalen a: "
	escribir trunc(cant_segundos / 3600), " horas."
	escribir trunc(cant_segundos % 3600 / 60), " minutos."
	escribir (cant_segundos % 3600) % 60, " segundos."
	
	// ej 3661 (1 hora, 1 min, 1 seg)
	// ej 3662 (1 hora, 1 min, 2 seg)
	// ej 3721 (1 hora, 2 min, 1 seg)
	// ej 7261 (2 horas, 1 min, 1 seg)
	
FinAlgoritmo
