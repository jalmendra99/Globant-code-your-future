// Clase 3 - Extra - Ejercicio 11 - página 2
// Fer V - jalmendra99@gmail.com
//
// Un alumno desea saber cuál será su calificación final en la materia 
// de Algoritmos. Dicha calificación se compone de los siguientes porcentajes:
// a. 55% del promedio de sus tres calificaciones parciales.
// b. 30% de la calificación del examen final.
// c. 15% de la calificación de un trabajo final.

Algoritmo extra_ejercicio11
	
	// Definición de variables.
	definir parc1, parc2, parc3, ex_final, tr_final, calificacion Como real
	
	// Inicialización de variables.
	parc1 = 0
	parc2 = 0
	parc3 = 0
	ex_final = 0
	tr_final = 0
	calificacion = 0
	
	// Se informa premisa al usuario
	escribir "Se calculará la calificación final de un alumno basado en la información ingresada."
	escribir "a. 55% del promedio de sus tres calificaciones parciales."
	escribir "b. 30% de la calificación del examen final."
	escribir "c. 15% de la calificación de un trabajo final."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese la calificación del primer parcial: " sin saltar
	leer parc1
	escribir "Ingrese la calificación del segundo parcial: " sin saltar
	leer parc2
	escribir "Ingrese la calificación del tercer parcial: " sin saltar
	leer parc3
	escribir "Ingrese la calificación del examen final: " sin saltar
	leer ex_final
	escribir "Ingrese la calificación del trabajo final: " sin saltar
	leer tr_final
	
	// Calcular calificación final 
	calificacion = (((parc1 + parc2 + parc3) /3) * 0.55) + (ex_final * 0.3) + (tr_final * 0.15)
	
	// Mostrar en pantalla
	escribir "La calificación final del alumno es de: ", calificacion
	
	// Pruebas?:
	// 10, 10, 10, 10, 10 -> 10
	// 1,   1,  1,  1,  1 ->  1
	// 5,   5,  5,  5,  5 ->  5
	
	
FinAlgoritmo
