// Clase 10 - Prácticos - Ejercicio 3 - página 2
// 2023-04-13 - Fer V. - jalmendra99@gmail.com
//
// Escriba un programa que lea un número entero (altura) y a partir de él 
// cree una escalera invertida de asteriscos con esa altura. 
// Por ejemplo, si ingresamos una altura de 5 se deberá mostrar:
// *****
// ****
// ***
// **
// *

Algoritmo practicos_ejercicio3
	
	// Definición de variables.
	definir altura, fila, columna como entero
	
	// Inicialización de variables.	
	altura = 0
	
	// Se informa premisa al usuario.
	escribir "Se pedirá ingresar un número entero (altura) " sin saltar
	escribir "y se creará una escalera invertida de asteriscos con esa altura."
	
	// Se fuerza a que el número ingresado sea positivo.
	hacer
		//Se ingresa el tamaño del lado.
		escribir "Ingrese un número entero (tamaño de la altura): " sin saltar
		leer altura
	mientras que altura <= 0
	
	// Se presenta la información solicitada por pantalla.	
	
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