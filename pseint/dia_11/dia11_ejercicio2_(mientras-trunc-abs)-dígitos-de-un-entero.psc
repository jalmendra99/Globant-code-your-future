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
	
	escribir "Ingrese un número entero: "
	leer num
	
	cociente = abs(num)
	//
	digito = 1
		
	mientras cociente >= 10 Hacer
		
		cociente = trunc(cociente / 10)
		digito = digito + 1		
		
	FinMientras
		
	escribir "La cantidad de dígitos es ", digito
	
	// 
	
	
FinAlgoritmo