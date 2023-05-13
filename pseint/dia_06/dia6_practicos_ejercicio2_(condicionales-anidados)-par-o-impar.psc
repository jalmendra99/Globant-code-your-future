// Clase 6 - Prácticos - Ejercicio 2 - página 2
// Fer V - jalmendra99@gmail.com
//
// Condicionales Anidados
// Realizar un programa que, dado un número entero, 
// visualice en pantalla si es par o impar. 
// En caso de que el valor ingresado sea 0, 
// se debe mostrar "el número no es par ni impar". Nota: investigar la función mod de PSeInt
	
Algoritmo practicos_ejercicio2

	// Definición de variables.
	definir num Como entero

	// Inicialización de variables.
	num = 0
	
	// Se informa premisa al usuario
	escribir "Se pedirá al usuario ingresar un número entero y se verificará si es para, impar o cero."
	
	// Cargando el número ingresado por el usuario.
	escribir "Ingrese un número entero: " sin saltar
	leer num
	
	// Se verifica si el número es par, impar o cero
	// Y se muestra el mensaje correspondiente por pantalla.
	si num mod 2 == 0
		si num == 0
			escribir "El número no es par ni impar."
		SiNo
			escribir "El número es par."
		FinSi
	SiNo
		escribir "El número es impar."
	FinSi	
	
FinAlgoritmo
