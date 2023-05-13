// Clase 12 - Extras - Ejercicio 1
// Fer V - jalmendra99@gmail.com
//
// 1. Implementar una función que permita obtener un número entero aleatorio 
// comprendido entre dos límites que introduciremos por teclado. El número obtenido se debe mostrar por pantalla.


// Principal.
Algoritmo ejercicio1
	
	// Definición de variables.
	definir minimo, maximo, num Como entero
	
	// Inicialización de variables.
	minimo = 0
	maximo = 0
	num = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un mínimo y un máximo y se procedera a mostrar un número " sin saltar
	escribir " aleatorio comprendido entre ese rango."
	
	// Se solicita la información al usuario.	
	// Se fuerza a que los números ingresados sean mayores o iguales a cero
	// y que máximo >= mínimo.
	Hacer
		escribir "Ingrese un número entero positivo para el mínimo: " sin saltar
		leer minimo
		escribir "Ingrese un número entero positivo para el máximo: " sin saltar
		leer maximo
	Mientras Que minimo < 0 o maximo < 0 o minimo > maximo
	
	// Se genera un número al azar entre ese rango usando la función solicitada.
	num = generarNumero(minimo, maximo)
	
	// Y se presenta el resultado por pantalla.
	escribir "Entre ", minimo, " y ", maximo, " se eligió al azar el número ", num, "."	
	
FinAlgoritmo


// Función GenerarNumero
// Retorna Un número entero al azar comprendido entre mínimo y máximo.
Funcion retorno = GenerarNumero (minimo, maximo)
	definir retorno Como Entero
	
	retorno = aleatorio(minimo, maximo)
	
fin funcion
