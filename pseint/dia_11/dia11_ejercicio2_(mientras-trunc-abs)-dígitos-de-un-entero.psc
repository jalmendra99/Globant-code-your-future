// Clase 11, Cooperativo - Ejercicio 2 , página 2 .
// Fer V. - Jalmendra99@gmail.com
// 
// Escribir un programa que lea un número entero y devuelva el número de dígitos 
// que componen ese número. Por ejemplo, si introducimos el número 12345, 
// el programa deberá devolver 5. Calcular la cantidad de dígitos matemáticamente 
// utilizando el operador de división. 
// Nota: recordar que las variables de tipo entero truncan los números o resultados.

Algoritmo ejercicio2
	
	definir num, digito, cociente como entero
	
	// Se fuerza a que el número ingresado no sea vacío o cero.
	hacer
		escribir "Ingrese un número entero: " sin saltar
		leer num
	mientras que num == 0
	
	// Se toma el valor absoluto del número ingresado, por si fué negativo.
	// ej: num = -156 -> cociente = 156
	cociente = abs(num)
	
	// La cantidad de dígitos para cualquier número ingresado será al menos 1.
	digito = 1
	
	mientras cociente >= 10 Hacer
		
		// Al "cociente" se le quita el último dígito de la derecha.
		// ej: si cociente era 156, ahora pasará a ser 15
		// porque: 156 / 10 = 15,6, y trunc(15,6) = 15
		cociente = trunc(cociente / 10)
		
		// Se cuenta otro dígito por cada vez que se pase por este ciclo "mientras".
		digito = digito + 1		
		
	FinMientras
	
	// Se muestra la información solicitada por pantalla.
	escribir "La cantidad de dígitos es ", digito
	
FinAlgoritmo