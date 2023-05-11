// Clase 12 - Prácticos - Ejercicio 6 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar una función que calcule y retorne la suma de todos los divisores 
// del número n distintos de n. El valor de n debe ser ingresado por el usuario.


// Principal.
Algoritmo ejercicio6
	
	// Definición de variables.
	Definir num, sumatoria como entero	
	
	// Inicialización de variables.
	num = 0
	sumatoria = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número entero y se mostrarán sus mútiplos y la sumatoria de los mismos."
	
	// Se solicitan los datos al usuario.
	escribir "Ingrese un número entero: "
	leer num
	
	// Se muestran sus múltiplos y se calcula la sumatoria de los mismos utilizando la función solicitada.
	sumatoria = SumaDeDivisores(num)
	
	// y se presenta la sumatoria al usuario.
	escribir "La sumatoria de todos los múltiplos de ", num, ", excluyendo ", num, " es: ", sumatoria, "."	
	
FinAlgoritmo


// Funcion SumaDeDivisores. 
// Retorna la sumatoria de todos los divisores de num.
Funcion retorno = SumaDeDivisores (num) 
	definir retorno Como entero
	
	definir i como entero
	
	retorno = 0
	
	// Para cada número entre num y 1 se verifica si 'i' es múltiplo de num, 
	// y si lo es, se imprime y se agrega a la sumatoria.
	para i = num hasta 1 con paso -1 Hacer		
		
		// Si num es múltiplo de i, entonces i es divisor de num.
		si num mod i == 0 Entonces			
			
			escribir "Se encontró un divisor de ", num, ". ", i, "."
			
			// No toma en cuenta a los divisores que sean iguales al número 'num'.
			si i <> num entonces
				retorno = retorno + i				
			finsi
		FinSi
		
	fin para	
	
fin funcion
