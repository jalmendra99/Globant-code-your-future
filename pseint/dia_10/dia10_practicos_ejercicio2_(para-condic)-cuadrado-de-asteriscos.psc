// Clase 10 - Pr�cticos - Ejercicio 2 - p�gina 2
// 2023-04-13 - Fer V. - jalmendra99@gmail.com
//
// Realizar un programa que lea un n�mero entero (tama�o del lado) 
// y a partir de �l cree un cuadrado de asteriscos de ese tama�o. 
// Los asteriscos s�lo se ver�n en el borde del cuadrado, 
// no en el interior. Por ejemplo, si se ingresa el n�mero 4 se debe mostrar:
// * * * *
// *     *
// *     *
// * * * *
//Nota: Recordar el uso del escribir sin saltar en PseInt.

Algoritmo practicos_ejercicio2
	
	// Definici�n de variables.
	definir lado, fila, columna como entero
	
	// Inicializaci�n de variables.	
	lado = 0
	
	// Se informa premisa al usuario.
	escribir sin saltar "Se pedir� ingresar un n�mero entero (tama�o del lado) "
	escribir            "y se crear� un cuadrado de asteriscos de ese tama�o."
	
	// Se fuerza a que el n�mero ingresado sea positivo.
	hacer
		//Se ingresa el tama�o del lado.
		escribir "Ingrese un n�mero entero (tama�o del lado): "
		leer lado
	mientras que lado <= 0
	
	// Se presenta la informaci�n solicitada por pantalla.	
	
	// Para cada fila...
	para fila = 1 hasta lado con paso 1 Hacer
		
		// Si es la primera o �ltima fila...
		si (fila == 1) o (fila == lado) Entonces
			
			// Imprime una fila de asteriscos continuos.
			para columna = 1 hasta lado con paso 1 Hacer
				imprimir sin saltar "*"				
			FinPara		
			
		// Si es una fila intermedia...
		sino	
			
			// Imprime en una fila, solo el primer y el �ltimo asterisco.
			para columna = 1 hasta lado con paso 1 Hacer
				
				// Imprime un asterisco si es la primera o �ltima columna de una fila intermedia.
				si (columna == 1) o (columna == lado) Entonces
					imprimir sin saltar "*"
					
				// Imprime un espacio si es una columna intermedia, dentro de una fila intermedia.
				SiNo
					imprimir sin saltar " "
				FinSi
				
			FinPara
			
		FinSi
		
		// Imprime el salto necesario para ir a la siguiente fila.
		imprimir ""		
		
	FinPara	
	
FinAlgoritmo
