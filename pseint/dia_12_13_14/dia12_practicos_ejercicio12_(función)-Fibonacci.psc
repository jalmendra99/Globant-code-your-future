// Clase 12 - Prácticos - Ejercicio 12 - página 3
// Fer V - jalmendra99@gmail.com
//
// Realizar una función que permita obtener el término n de la sucesión de Fibonacci. 
// La sucesión de Fibonacci es la sucesión de los siguientes números:
// 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
// Donde cada uno de los números se calcula sumando los dos anteriores a él. 
// Por ejemplo:
// La sucesión del número 2 se calcula sumando (1+1)
// Análogamente, la sucesión del número 3 es (1+2),
// Y la del 5 es (2+3),
// Y así sucesivamente?
// La sucesión de Fibonacci se puede formalizar de acuerdo a la siguiente fórmula:
// Fibonacci (n) = Fibonacci (n-1) + Fibonacci (n-2) para todo n > 1
// Fibonacci (n) = 1 para todo n <= 1
// Por lo tanto, si queremos calcular el término "n" debemos escribir una función 
// que reciba como argumento el valor de "n" y que calcule la serie hasta llegar a ese valor.
// Para conocer más acerca de la serie de Fibonacci 
// consultar el siguiente link: https://quantdare.com/numeros-de-fibonacci/


// Principal.
Algoritmo ejercicio12
	
	// Definición de variables.
	definir num, resultado Como entero
	
	// Inicialización de variables.
	num = 0
	resultado = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número entero y calculará y mostrará el " sin saltar
	escribir "término correspondiente a ese número en la secuencia de Fibonacci."
	
	// Se solicita la información al usuario.	
	// Se fuerza a que el número ingresado sea mayor o igual a cero.
	Hacer
		escribir "Ingrese un número entero positivo: " sin saltar
		leer num		
	Mientras Que num < 0
		
	// Se calcula el término correspondiente al número ingresado usando la función solicitada.
	resultado = Fibonacci(num)
	
	// Y se presenta el resultado por pantalla.
	escribir "El término ", num, " en la secuencia de Fibonacci es ", resultado, "."
	
FinAlgoritmo


// Función Fibonacci
// Retorna el término 'n' de la sucesión de fibonacci.
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
		
		// Imprime el término actual de la secuencia.
		escribir Sin Saltar terminoActual, ", "    // 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
		
	FinPara
	
	// Agrega un salto de línea en pantalla para prolijidad.
	escribir ""
	
	retorno = terminoActual
	
fin funcion
