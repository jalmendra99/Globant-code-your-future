// Clase 5 - Extra - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que pida tres notas y determine si un alumno aprueba 
// o reprueba un curso, sabiendo que aprobará el curso si su promedio de 
// tres calificaciones es mayor o igual a 70; y reprueba en caso contrario.

Algoritmo extra_ejercicio1
	
	// Definición de variables.
	definir nota1, nota2, nota3, promedio como real
	definir aprueba Como Logico
	
	// Inicialización de variables.
	nota1 = 0
	nota2 = 0
	nota3 = 0
	promedio = 0
	aprueba = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedira ingresar tres notas y si su promedio es mayor o igual a 70 se informará que el alumno aprobó"
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese la primera nota (1-100): "
	leer nota1
	escribir "Ingrese la segunda nota (1-100): "
	leer nota2
	escribir "Ingrese la tercera nota (1-100): "
	leer nota3
	
	// Se verifican las notas ingresadas.
	promedio = (nota1 + nota2 + nota3) / 3
	aprueba = promedio >= 70
	
	// Se muestra el mensaje correspondiente en pantalla.
	si aprueba Entonces
		escribir "El alumno aprueba el curso con un promedio de ", promedio
	SiNo
		escribir "El alumno reprueba el curso con un promedio de ", promedio
	FinSi	
	
FinAlgoritmo
