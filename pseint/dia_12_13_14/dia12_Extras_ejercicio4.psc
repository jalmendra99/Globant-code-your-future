// Clase 12 - Extras - Ejercicio 4
// Fer V - jalmendra99@gmail.com
//
// 4. Dos n�meros son amigos si cada uno de ellos es igual a la suma de los divisores del otro. 
// Por ejemplo 220 y 284 son amigos ya que: 
// Suma de divisores de 284= 1 + 2 + 4 + 71 + 142 = 220 
// Suma de divisores de 220 = 1 + 2 + 4 + 5 + 10 + 11 + 20 + 22 + 44 + 55 + 110 = 284 
// Dise�e un algoritmo que a trav�s del uso de una funci�n determine 
// si dos n�meros ingresados por el usuario son amigos o no


// Principal.
Algoritmo ejercicio4
	
	// Definici�n de variables.
	definir num1, num2, sumaDivisores1, sumaDivisores2 como entero
	
	// Inicializaci�n de variables.
	num1 = 0
	num2 = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar dos n�meros y se calcular� si son _amigos_."
	
	// Se solicita la informaci�n al usuario.	
	// Se fuerza a ingresar enteros positivos.
	hacer
		escribir "Ingrese un n�mero entero positivo: "
		leer num1	
		escribir "Ingrese otro n�mero entero positivo: "
		leer num2
	mientras que num1 < 0 o num2 < 0
	
	// Se calculan las sumatorias de los divisores de cada n�mero
	sumaDivisores1 = SumaDeDivisores(num1)
	sumaDivisores2 = SumaDeDivisores(num2)
	
	// Y se presenta el resultado por pantalla.
	Si sumaDivisores1 == num2 y sumaDivisores2 == num1 Entonces
		escribir "Los n�meros ", num1, " y ", num2, " son _amigos_."
	SiNo
		escribir "Los n�meros ", num1, " y ", num2, " NO son _amigos_."
	FinSi
	
FinAlgoritmo


// Funcion SumaDeDivisores. 
// Retorna la sumatoria de todos los divisores de num.
////// Nota: Copiado de Clase 12 - Pr�cticos - Ejercicio #6.
Funcion retorno = SumaDeDivisores (num) 
	definir retorno Como entero
	
	definir i como entero
	
	retorno = 0
	
	// Para cada n�mero entre num y 1 se verifica si 'i' es m�ltiplo de num, 
	// y si lo es, se imprime y se agrega a la sumatoria.
	para i = num hasta 1 con paso -1 Hacer		
		
		// Si num es m�ltiplo de i, entonces i es divisor de num.
		si num mod i == 0 Entonces			
			
			///////////escribir "Se encontr� un divisor de ", num, ". ", i, "."
			
			// No toma en cuenta a los divisores que sean iguales al n�mero 'num'.
			si i <> num entonces
				retorno = retorno + i				
			finsi
		FinSi
		
	fin para	
	
fin funcion
