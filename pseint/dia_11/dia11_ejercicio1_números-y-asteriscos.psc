// Clase 11, Cooperativo - Ejercicio 1 , p�gina 2 .
// Fer V. - Jalmendra99@gmail.com
// 
// Realizar un programa que lea 5 n�meros (comprendidos entre 1 y 20) 
// e imprima el n�mero ingresado seguido de tantos asteriscos como indique su valor. 
// Por ejemplo:5 ***** 3 *** 11 *********** 2 ** 9 *********

Algoritmo ejercicio1
	
	definir num, i, j como entero	
	
	escribir "Ingresar� 5 n�meros enteros y se imprimir� la misma cantidad " Sin Saltar
	escribir "de aster�scos que el n�mero seleccionado."
	
	para i = 1 hasta 5 con paso 1 Hacer
		escribir "Ingrese un n�mero entero (restan ", 5-i+1, " n�meros): " sin saltar
		leer num
		
		escribir sin saltar "", num
		
		para j = 1 hasta num con paso 1 Hacer
			escribir sin saltar "*"
		FinPara
		
		escribir ""
		
	FinPara	
	
FinAlgoritmo
