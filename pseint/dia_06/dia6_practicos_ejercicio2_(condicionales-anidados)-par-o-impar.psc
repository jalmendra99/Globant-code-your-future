// Clase 6 - Pr�cticos - Ejercicio 2 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Condicionales Anidados
// Realizar un programa que, dado un n�mero entero, 
// visualice en pantalla si es par o impar. 
// En caso de que el valor ingresado sea 0, 
// se debe mostrar "el n�mero no es par ni impar". Nota: investigar la funci�n mod de PSeInt
	
Algoritmo practicos_ejercicio2

	// Definici�n de variables.
	definir num Como entero

	// Inicializaci�n de variables.
	num = 0
	
	// Se informa premisa al usuario
	escribir "Se pedir� al usuario ingresar un n�mero entero y se verificar� si es para, impar o cero."
	
	// Cargando el n�mero ingresado por el usuario.
	escribir "Ingrese un n�mero entero: " sin saltar
	leer num
	
	// Se verifica si el n�mero es par, impar o cero
	// Y se muestra el mensaje correspondiente por pantalla.
	si num mod 2 == 0
		si num == 0
			escribir "El n�mero no es par ni impar."
		SiNo
			escribir "El n�mero es par."
		FinSi
	SiNo
		escribir "El n�mero es impar."
	FinSi	
	
FinAlgoritmo
