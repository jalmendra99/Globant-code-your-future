// Clase 10 - Pr�cticos - Ejercicio 3 - p�gina 2
// 2023-04-13 - Fer V. - jalmendra99@gmail.com
//
// Escriba un programa que lea un n�mero entero (altura) y a partir de �l 
// cree una escalera invertida de asteriscos con esa altura. 
// Por ejemplo, si ingresamos una altura de 5 se deber� mostrar:
// *****
// ****
// ***
// **
// *

Algoritmo practicos_ejercicio3
	
	// Definici�n de variables.
	definir altura, fila, columna como entero
	
	// Inicializaci�n de variables.	
	altura = 0
	
	// Se informa premisa al usuario.
	escribir "Se pedir� ingresar un n�mero entero (altura) " sin saltar
	escribir "y se crear� una escalera invertida de asteriscos con esa altura."
	
	// Se fuerza a que el n�mero ingresado sea positivo.
	hacer
		//Se ingresa el tama�o del lado.
		escribir "Ingrese un n�mero entero (tama�o de la altura): " sin saltar
		leer altura
	mientras que altura <= 0
	
	// Se presenta la informaci�n solicitada por pantalla.	
	
	// Para cada fila...
	para fila = 1 hasta altura con paso 1 Hacer
		
		// ...se imprimen (altura - fila) asteriscos.
		para columna = 1 hasta altura - fila +1 con paso 1 Hacer
			
			escribir sin saltar "*"
			
		FinPara
		
		// Imprime el salto necesario para ir a la siguiente fila.
		imprimir ""		
		
	FinPara	
	
FinAlgoritmo