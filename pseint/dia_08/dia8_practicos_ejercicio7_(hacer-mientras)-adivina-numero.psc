// Clase 8 - Prácticos - Ejercicio 7 - página 3
// Fer V - jalmendra99@gmail.com
//
// Programar un juego donde la computadora elige un número al azar entre 1 y 10, 
// y a continuación el jugador tiene que adivinarlo. 
// La estructura del programa es la siguiente:
// 1º) El programa elige al azar un número n entre 1 y 10.
// 2º) El usuario ingresa un número x.
// 3º) Si x no es el número exacto, el programa indica si n es más grande 
//    o más pequeño que el número ingresado.
// 4º) Repetimos desde 2) hasta que x sea igual a n.
// El programa tiene que imprimir los mensajes adecuados para informarle al usuario 
// qué hacer y qué pasó hasta que adivine el número.
// NOTA: Para generar un número aleatorio entre 1 y 10 se puede utilizar 
// la función Aleatorio(limite_inferior, limite_superior) de PseInt.

Algoritmo practicos_ejercicio7
	
	// Definición de variables.
	definir numElejido, num como entero
	
	// Inicialización de variables.	
	num = 0
	numElejido = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitará ingresar números enteros entre 1 y 10"
	escribir "hasta adivinar el número previamente seleccionado al azar por el programa."
	
	// Se elije al azar un número del 1 al 10
	numElejido = aleatorio(1, 10)
	
	// Se continuará solicitando ingresar números enteros N (num) veces
	hacer
		
		// Se valida que se ingrese un número entre 1 y 10.
		hacer
			escribir "Ingrese un número entero entre 1 y 10: " sin saltar
			leer num
			si (num <= 0) o (num > 10) Entonces
				escribir "El número ingresado no está entre 1 y 10."
			FinSi
		mientras que (num <= 0) o (num > 10)
		
		si numElejido > num entonces
			escribir "El número previamente seleccionado es mayor."
		sino 
			si numElejido < num entonces
				escribir "El número previamente seleccionado es menor."
			fin si			
		FinSi
		
	mientras que (num <> numElejido)
		
	// Se presenta la información solicitada por pantalla.
	escribir "Adivinó. El número previamente seleccionado era ", numElejido, "."
	
FinAlgoritmo
