// Clase 12 - Pr�cticos - Ejercicio 6 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar una funci�n que calcule y retorne la suma de todos los divisores 
// del n�mero n distintos de n. El valor de n debe ser ingresado por el usuario.


// Principal.
Algoritmo ejercicio6
	
	// Definici�n de variables.
	Definir num, sumatoria como entero	
	
	// Inicializaci�n de variables.
	num = 0
	sumatoria = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero entero y se mostrar�n sus m�tiplos y la sumatoria de los mismos."
	
	// Se solicitan los datos al usuario.
	escribir "Ingrese un n�mero entero: "
	leer num
	
	// Se muestran sus m�ltiplos y se calcula la sumatoria de los mismos utilizando la funci�n solicitada.
	sumatoria = SumaDeDivisores(num)
	
	// y se presenta la sumatoria al usuario.
	escribir "La sumatoria de todos los m�ltiplos de ", num, ", excluyendo ", num, " es: ", sumatoria, "."	
	
FinAlgoritmo


// Funcion SumaDeDivisores. 
// Retorna la sumatoria de todos los divisores de num.
Funcion retorno = SumaDeDivisores (num) 
	definir retorno Como entero
	
	definir i como entero
	
	retorno = 0
	
	// Para cada n�mero entre num y 1 se verifica si 'i' es m�ltiplo de num, 
	// y si lo es, se imprime y se agrega a la sumatoria.
	para i = num hasta 1 con paso -1 Hacer		
		
		// Si num es m�ltiplo de i, entonces i es divisor de num.
		si num mod i == 0 Entonces			
			
			escribir "Se encontr� un divisor de ", num, ". ", i, "."
			
			// No toma en cuenta a los divisores que sean iguales al n�mero 'num'.
			si i <> num entonces
				retorno = retorno + i				
			finsi
		FinSi
		
	fin para	
	
fin funcion
