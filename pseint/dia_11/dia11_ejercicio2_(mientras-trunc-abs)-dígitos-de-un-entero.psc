// Clase 11, Cooperativo - Ejercicio 2 , p�gina 2 .
// Fer V. - Jalmendra99@gmail.com
// 
// Escribir un programa que lea un n�mero entero y devuelva el n�mero de d�gitos 
// que componen ese n�mero. Por ejemplo, si introducimos el n�mero 12345, 
// el programa deber� devolver 5. Calcular la cantidad de d�gitos matem�ticamente 
// utilizando el operador de divisi�n. 
// Nota: recordar que las variables de tipo entero truncan los n�meros o resultados.

Algoritmo ejercicio2
	
	definir num, digito, cociente como entero
	
	escribir "Ingrese un n�mero entero: "
	leer num
	
	cociente = abs(num)
	//
	digito = 1
		
	mientras cociente >= 10 Hacer
		
		cociente = trunc(cociente / 10)
		digito = digito + 1		
		
	FinMientras
		
	escribir "La cantidad de d�gitos es ", digito
	
	// 
	
	
FinAlgoritmo