// Clase 6 - Extra - Ejercicio 1 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Condicional M�ltiple
// Solicitar al usuario que ingrese un valor entre 1 y 7. 
// EL programa debe mostrar por pantalla un mensaje 
// que indique a qu� d�a de la semana corresponde. 
// Considere que el n�mero 1 corresponde al d�a "Lunes", y as� sucesivamente.
	
Algoritmo extra_ejercicio1
	
	// Definici�n de variables.
	definir num Como entero
	definir dia como cadena

	// Inicializaci�n de variables.
	num = 0
	dia = ""
	
	// Se informa premisa al usuario
	escribir "Se pedir� al usuario ingresar un n�mero del 1 al 7 " sin saltar
	escribir "y se determinar� a que d�a corresponde."
	
	// Cargando el n�mero ingresado por el usuario.
	escribir "Ingrese un n�mero entero del 1 al 7: " sin saltar
	leer num
	
	// Se elije el d�a seg�n el n�mero ingresado
	Segun num Hacer
		1: dia = "Lunes"
		2: dia = "Martes"
		3: dia = "Miercoles"
		4: dia = "Jueves"
		5: dia = "Viernes"
		6: dia = "Sabado"
		7: dia = "Domingo"
		de otro modo: escribir "No se reconoce el n�mero ingresado."
	FinSegun
	
	// Se muestra el d�a correspondiente por pantalla.
	si dia <> ""
		escribir "El n�mero ", num, " corresponde al d�a ", dia, "."
	FinSi
	
FinAlgoritmo
