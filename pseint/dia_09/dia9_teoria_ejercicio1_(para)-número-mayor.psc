// Clase 9 - Teor�a - Ejercicio 1 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// EJERCICIO NUMERO MAYOR
// Escribir una estructura PARA que le solicite al usuario varios n�meros 
// y al finalizar muestre el mayor n�mero ingresado.

Algoritmo teoria_ejercicio1
	
	// Definici�n de variables.
	definir i, num, mayor como entero
	
	// Inicializaci�n de variables.
	i = 0
	num = 0
	mayor = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitar� ingresar varios n�meros (10) y al finalizar se informar� el mayor de todos."

	para i = 1 hasta 10 con paso 1 Hacer
		escribir "Ingrese un n�mero: "
		leer num
		
		si num > mayor Entonces
			mayor = num
		FinSi
		
	FinPara
	
	// Se muestra por pantalla la informaci�n solicitada.
	escribir "El mayor n�mero de los ingresados es ", mayor, "."
	
FinAlgoritmo
