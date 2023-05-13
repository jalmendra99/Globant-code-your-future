// Clase 3 - Extra - Ejercicio 11 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Un alumno desea saber cu�l ser� su calificaci�n final en la materia 
// de Algoritmos. Dicha calificaci�n se compone de los siguientes porcentajes:
// a. 55% del promedio de sus tres calificaciones parciales.
// b. 30% de la calificaci�n del examen final.
// c. 15% de la calificaci�n de un trabajo final.

Algoritmo extra_ejercicio11
	
	// Definici�n de variables.
	definir parc1, parc2, parc3, ex_final, tr_final, calificacion Como real
	
	// Inicializaci�n de variables.
	parc1 = 0
	parc2 = 0
	parc3 = 0
	ex_final = 0
	tr_final = 0
	calificacion = 0
	
	// Se informa premisa al usuario
	escribir "Se calcular� la calificaci�n final de un alumno basado en la informaci�n ingresada."
	escribir "a. 55% del promedio de sus tres calificaciones parciales."
	escribir "b. 30% de la calificaci�n del examen final."
	escribir "c. 15% de la calificaci�n de un trabajo final."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese la calificaci�n del primer parcial: " sin saltar
	leer parc1
	escribir "Ingrese la calificaci�n del segundo parcial: " sin saltar
	leer parc2
	escribir "Ingrese la calificaci�n del tercer parcial: " sin saltar
	leer parc3
	escribir "Ingrese la calificaci�n del examen final: " sin saltar
	leer ex_final
	escribir "Ingrese la calificaci�n del trabajo final: " sin saltar
	leer tr_final
	
	// Calcular calificaci�n final 
	calificacion = (((parc1 + parc2 + parc3) /3) * 0.55) + (ex_final * 0.3) + (tr_final * 0.15)
	
	// Mostrar en pantalla
	escribir "La calificaci�n final del alumno es de: ", calificacion
	
	// Pruebas?:
	// 10, 10, 10, 10, 10 -> 10
	// 1,   1,  1,  1,  1 ->  1
	// 5,   5,  5,  5,  5 ->  5
	
	
FinAlgoritmo
