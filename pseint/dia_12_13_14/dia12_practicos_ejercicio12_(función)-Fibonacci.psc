// Clase 12 - Pr�cticos - Ejercicio 12 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Realizar una funci�n que permita obtener el t�rmino n de la sucesi�n de Fibonacci. 
// La sucesi�n de Fibonacci es la sucesi�n de los siguientes n�meros:
// 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
// Donde cada uno de los n�meros se calcula sumando los dos anteriores a �l. 
// Por ejemplo:
// La sucesi�n del n�mero 2 se calcula sumando (1+1)
// An�logamente, la sucesi�n del n�mero 3 es (1+2),
// Y la del 5 es (2+3),
// Y as� sucesivamente?
// La sucesi�n de Fibonacci se puede formalizar de acuerdo a la siguiente f�rmula:
// Fibonacci (n) = Fibonacci (n-1) + Fibonacci (n-2) para todo n > 1
// Fibonacci (n) = 1 para todo n <= 1
// Por lo tanto, si queremos calcular el t�rmino "n" debemos escribir una funci�n 
// que reciba como argumento el valor de "n" y que calcule la serie hasta llegar a ese valor.
// Para conocer m�s acerca de la serie de Fibonacci 
// consultar el siguiente link: https://quantdare.com/numeros-de-fibonacci/


// Principal.
Algoritmo ejercicio12
	
	// Definici�n de variables.
	definir num, resultado Como entero
	
	// Inicializaci�n de variables.
	num = 0
	resultado = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero entero y calcular� y mostrar� el " sin saltar
	escribir "t�rmino correspondiente a ese n�mero en la secuencia de Fibonacci."
	
	// Se solicita la informaci�n al usuario.	
	// Se fuerza a que el n�mero ingresado sea mayor o igual a cero.
	Hacer
		escribir "Ingrese un n�mero entero positivo: " sin saltar
		leer num		
	Mientras Que num < 0
		
	// Se calcula el t�rmino correspondiente al n�mero ingresado usando la funci�n solicitada.
	resultado = Fibonacci(num)
	
	// Y se presenta el resultado por pantalla.
	escribir "El t�rmino ", num, " en la secuencia de Fibonacci es ", resultado, "."
	
FinAlgoritmo


// Funci�n Fibonacci
// Retorna el t�rmino 'n' de la sucesi�n de fibonacci.
// Retorna Falso sino.
Funcion retorno = Fibonacci (n)
	definir retorno Como entero
	definir terminoActual, terminoAnterior, terminoAnterior2 Como Entero
	
	definir i Como Entero
	
	retorno = 0
	terminoActual = 0	
	terminoAnterior = 0
	terminoAnterior2 = 0
	
	para i = 1 hasta n con paso 1 Hacer
		
		terminoAnterior2 = terminoAnterior
		terminoAnterior = terminoActual
		
		si terminoAnterior2 == 0 Entonces			
			terminoActual = 1
		SiNo
			terminoActual = terminoAnterior + terminoAnterior2
		FinSi		
		
		// Imprime el t�rmino actual de la secuencia.
		escribir Sin Saltar terminoActual, ", "    // 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
		
	FinPara
	
	// Agrega un salto de l�nea en pantalla para prolijidad.
	escribir ""
	
	retorno = terminoActual
	
fin funcion
