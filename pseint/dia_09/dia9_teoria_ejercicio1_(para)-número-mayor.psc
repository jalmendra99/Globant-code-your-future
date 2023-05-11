// Clase 9 - Teoría - Ejercicio 1 - página 3
// Fer V - jalmendra99@gmail.com
//
// EJERCICIO NUMERO MAYOR
// Escribir una estructura PARA que le solicite al usuario varios números 
// y al finalizar muestre el mayor número ingresado.

Algoritmo teoria_ejercicio1
	
	// Definición de variables.
	definir i, num, mayor como entero
	
	// Inicialización de variables.
	i = 0
	num = 0
	mayor = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitará ingresar varios números (10) y al finalizar se informará el mayor de todos."

	para i = 1 hasta 10 con paso 1 Hacer
		escribir "Ingrese un número: "
		leer num
		
		si num > mayor Entonces
			mayor = num
		FinSi
		
	FinPara
	
	// Se muestra por pantalla la información solicitada.
	escribir "El mayor número de los ingresados es ", mayor, "."
	
FinAlgoritmo
