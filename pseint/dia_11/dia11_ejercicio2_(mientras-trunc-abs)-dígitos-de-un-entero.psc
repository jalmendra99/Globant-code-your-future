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
	
	// Se fuerza a que el n�mero ingresado no sea vac�o o cero.
	hacer
		escribir "Ingrese un n�mero entero: " sin saltar
		leer num
	mientras que num == 0
	
	// Se toma el valor absoluto del n�mero ingresado, por si fu� negativo.
	// ej: num = -156 -> cociente = 156
	cociente = abs(num)
	
	// La cantidad de d�gitos para cualquier n�mero ingresado ser� al menos 1.
	digito = 1
	
	mientras cociente >= 10 Hacer
		
		// Al "cociente" se le quita el �ltimo d�gito de la derecha.
		// ej: si cociente era 156, ahora pasar� a ser 15
		// porque: 156 / 10 = 15,6, y trunc(15,6) = 15
		cociente = trunc(cociente / 10)
		
		// Se cuenta otro d�gito por cada vez que se pase por este ciclo "mientras".
		digito = digito + 1		
		
	FinMientras
	
	// Se muestra la informaci�n solicitada por pantalla.
	escribir "La cantidad de d�gitos es ", digito
	
FinAlgoritmo