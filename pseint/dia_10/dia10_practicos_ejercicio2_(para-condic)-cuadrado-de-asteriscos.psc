// Clase 10 - Prácticos - Ejercicio 2 - página 2
// 2023-04-13 - Fer V. - jalmendra99@gmail.com
//
// Realizar un programa que lea un número entero (tamaño del lado) 
// y a partir de él cree un cuadrado de asteriscos de ese tamaño. 
// Los asteriscos sólo se verán en el borde del cuadrado, 
// no en el interior. Por ejemplo, si se ingresa el número 4 se debe mostrar:
// * * * *
// *     *
// *     *
// * * * *
//Nota: Recordar el uso del escribir sin saltar en PseInt.

Algoritmo practicos_ejercicio2
	
	// Definición de variables.
	definir lado, fila, columna como entero
	
	// Inicialización de variables.	
	lado = 0
	
	// Se informa premisa al usuario.
	escribir sin saltar "Se pedirá ingresar un número entero (tamaño del lado) "
	escribir            "y se creará un cuadrado de asteriscos de ese tamaño."
	
	// Se fuerza a que el número ingresado sea positivo.
	hacer
		//Se ingresa el tamaño del lado.
		escribir "Ingrese un número entero (tamaño del lado): "
		leer lado
	mientras que lado <= 0
	
	// Se presenta la información solicitada por pantalla.	
	
	// Para cada fila...
	para fila = 1 hasta lado con paso 1 Hacer
		
		// Si es la primera o última fila...
		si (fila == 1) o (fila == lado) Entonces
			
			// Imprime una fila de asteriscos continuos.
			para columna = 1 hasta lado con paso 1 Hacer
				imprimir sin saltar "*"				
			FinPara		
			
		// Si es una fila intermedia...
		sino	
			
			// Imprime en una fila, solo el primer y el último asterisco.
			para columna = 1 hasta lado con paso 1 Hacer
				
				// Imprime un asterisco si es la primera o última columna de una fila intermedia.
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
