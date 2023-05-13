// Clase 5 - Pr�cticos - Ejercicio 2 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que pida un n�mero y determine si ese n�mero es par o impar. 
// Mostrar en pantalla un mensaje que indique si el n�mero es par o impar. 
// (para que un n�mero sea par, se debe dividir entre dos y su resto debe ser igual a 0). 
// Nota: investigar la funci�n mod de PseInt.

Algoritmo practicos_ejercicio2
	
	// Definici�n de variables.
	definir num como entero
	definir esPar Como Logico
	
	// Inicializaci�n de variables.
	num = 0
	esPar = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedira ingresar un n�mero entero y se determinar� si el mismo es par o impar."
	
	// Cargar el n�mero ingresado por el usuario en una variable.
	escribir "Ingrese un n�mero entero: " sin saltar
	leer num
	
	// Se verifica el caracter ingresado.
	esPar = (num mod 2 == 0)
	
	// Se muestra el mensaje correspondiente en pantalla.
	si esPar Entonces
		escribir "El n�mero ingresado es par."
	SiNo
		escribir "El n�mero ingresado es impar."
	FinSi	
	
FinAlgoritmo
