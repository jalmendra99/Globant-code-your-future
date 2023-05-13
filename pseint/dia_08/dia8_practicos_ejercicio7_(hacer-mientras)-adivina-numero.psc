// Clase 8 - Pr�cticos - Ejercicio 7 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Programar un juego donde la computadora elige un n�mero al azar entre 1 y 10, 
// y a continuaci�n el jugador tiene que adivinarlo. 
// La estructura del programa es la siguiente:
// 1�) El programa elige al azar un n�mero n entre 1 y 10.
// 2�) El usuario ingresa un n�mero x.
// 3�) Si x no es el n�mero exacto, el programa indica si n es m�s grande 
//    o m�s peque�o que el n�mero ingresado.
// 4�) Repetimos desde 2) hasta que x sea igual a n.
// El programa tiene que imprimir los mensajes adecuados para informarle al usuario 
// qu� hacer y qu� pas� hasta que adivine el n�mero.
// NOTA: Para generar un n�mero aleatorio entre 1 y 10 se puede utilizar 
// la funci�n Aleatorio(limite_inferior, limite_superior) de PseInt.

Algoritmo practicos_ejercicio7
	
	// Definici�n de variables.
	definir numElejido, num como entero
	
	// Inicializaci�n de variables.	
	num = 0
	numElejido = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitar� ingresar n�meros enteros entre 1 y 10"
	escribir "hasta adivinar el n�mero previamente seleccionado al azar por el programa."
	
	// Se elije al azar un n�mero del 1 al 10
	numElejido = aleatorio(1, 10)
	
	// Se continuar� solicitando ingresar n�meros enteros N (num) veces
	hacer
		
		// Se valida que se ingrese un n�mero entre 1 y 10.
		hacer
			escribir "Ingrese un n�mero entero entre 1 y 10: " sin saltar
			leer num
			si (num <= 0) o (num > 10) Entonces
				escribir "El n�mero ingresado no est� entre 1 y 10."
			FinSi
		mientras que (num <= 0) o (num > 10)
		
		si numElejido > num entonces
			escribir "El n�mero previamente seleccionado es mayor."
		sino 
			si numElejido < num entonces
				escribir "El n�mero previamente seleccionado es menor."
			fin si			
		FinSi
		
	mientras que (num <> numElejido)
		
	// Se presenta la informaci�n solicitada por pantalla.
	escribir "Adivin�. El n�mero previamente seleccionado era ", numElejido, "."
	
FinAlgoritmo
