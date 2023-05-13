// Clase 5 - Prácticos - Ejercicio 2 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que pida un número y determine si ese número es par o impar. 
// Mostrar en pantalla un mensaje que indique si el número es par o impar. 
// (para que un número sea par, se debe dividir entre dos y su resto debe ser igual a 0). 
// Nota: investigar la función mod de PseInt.

Algoritmo practicos_ejercicio2
	
	// Definición de variables.
	definir num como entero
	definir esPar Como Logico
	
	// Inicialización de variables.
	num = 0
	esPar = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedira ingresar un número entero y se determinará si el mismo es par o impar."
	
	// Cargar el número ingresado por el usuario en una variable.
	escribir "Ingrese un número entero: " sin saltar
	leer num
	
	// Se verifica el caracter ingresado.
	esPar = (num mod 2 == 0)
	
	// Se muestra el mensaje correspondiente en pantalla.
	si esPar Entonces
		escribir "El número ingresado es par."
	SiNo
		escribir "El número ingresado es impar."
	FinSi	
	
FinAlgoritmo
