// Clase 10 - Pr�cticos - Ejercicio 4 - p�gina 2
// 2023-04-13 - Fer V. - jalmendra99@gmail.com
//
// La funci�n factorial se aplica a n�meros enteros positivos. 
// El factorial de un n�mero entero positivo (!n) es igual al producto 
// de los enteros positivos desde 1 hasta n:
// n! = 1 * 2 * 3 * 4 * 5 * (n-1) * n
// Escriba un programa que calcule las factoriales de todos los n�meros 
// enteros desde el 1 hasta el 5. El programa deber� mostrar la siguiente salida:
// !1 = 1 
// !2 = 1*2 = 2 
// ...
// !5 = 1*2*3*4*5 = 120

Algoritmo practicos_ejercicio4
	
	// Definici�n de variables.
	definir n, num Como Entero
	definir factorial como real
	
	// Inicializaci�n de variables.	
	
	// Se informa premisa al usuario.
	escribir sin saltar "Se calcular�n las factoriales de todos los n�meros enteros "
	escribir            "desde el 1 hasta el 5."
	
	// Si se usa un n�mero x, entonces factorial se deber�a definir como real
	// ya que si se define como entero, el l�mite es solo !12. Si es real el l�mite es !170.
	definir x como entero
	escribir "ingrese x"
	leer x	
	
	// Para los enteros desde el 1 hasta el 5...
	para n = 1 hasta x con paso 1 Hacer
		
		// Se inicializa factorial para cada entero.
		// Si se inicia en cero, todas las multiplicaciones ser�n cero,
		// por lo tanto se inicializa con el neutro de la multiplicaci�n (1).
		factorial = 1
		
		// Se calcula el factorial de n (!n).
		para num = 1 hasta n con paso 1 Hacer
			factorial = factorial * num
		FinPara
		
		// Se presenta la informaci�n solicitada por pantalla.	
		escribir "!", n, " = ", factorial
		
	FinPara	
	
FinAlgoritmo
