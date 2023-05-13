// Clase 11, Cooperativo - Ejercicio 1 , página 2 .
// Fer V. - Jalmendra99@gmail.com
// 
// Realizar un programa que lea 5 números (comprendidos entre 1 y 20) 
// e imprima el número ingresado seguido de tantos asteriscos como indique su valor. 
// Por ejemplo:5 ***** 3 *** 11 *********** 2 ** 9 *********

Algoritmo ejercicio1
	
	definir num, i, j como entero	
	
	escribir "Ingresará 5 números enteros y se imprimirá la misma cantidad " Sin Saltar
	escribir "de asteríscos que el número seleccionado."
	
	para i = 1 hasta 5 con paso 1 Hacer
		escribir "Ingrese un número entero (restan ", 5-i+1, " números): " sin saltar
		leer num
		
		escribir sin saltar "", num
		
		para j = 1 hasta num con paso 1 Hacer
			escribir sin saltar "*"
		FinPara
		
		escribir ""
		
	FinPara	
	
FinAlgoritmo
