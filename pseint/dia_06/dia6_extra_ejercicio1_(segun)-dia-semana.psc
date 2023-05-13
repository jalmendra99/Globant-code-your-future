// Clase 6 - Extra - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Condicional Múltiple
// Solicitar al usuario que ingrese un valor entre 1 y 7. 
// EL programa debe mostrar por pantalla un mensaje 
// que indique a qué día de la semana corresponde. 
// Considere que el número 1 corresponde al día "Lunes", y así sucesivamente.
	
Algoritmo extra_ejercicio1
	
	// Definición de variables.
	definir num Como entero
	definir dia como cadena

	// Inicialización de variables.
	num = 0
	dia = ""
	
	// Se informa premisa al usuario
	escribir "Se pedirá al usuario ingresar un número del 1 al 7 " sin saltar
	escribir "y se determinará a que día corresponde."
	
	// Cargando el número ingresado por el usuario.
	escribir "Ingrese un número entero del 1 al 7: " sin saltar
	leer num
	
	// Se elije el día según el número ingresado
	Segun num Hacer
		1: dia = "Lunes"
		2: dia = "Martes"
		3: dia = "Miercoles"
		4: dia = "Jueves"
		5: dia = "Viernes"
		6: dia = "Sabado"
		7: dia = "Domingo"
		de otro modo: escribir "No se reconoce el número ingresado."
	FinSegun
	
	// Se muestra el día correspondiente por pantalla.
	si dia <> ""
		escribir "El número ", num, " corresponde al día ", dia, "."
	FinSi
	
FinAlgoritmo
