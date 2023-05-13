// Clase 7 - Prácticos - Ejercicio 3 - página 2
// Fer V - jalmendra99@gmail.com
//
// Dada una secuencia de números ingresados por teclado que finaliza con un -1, 
// por ejemplo: 5,3,0,2,4,4,0,0,2,3,6,0,.....,-1; 
// realizar un programa que calcule el promedio de los números ingresados. 
// Suponemos que el usuario no insertará número negativos.

Algoritmo practicos_ejercicio3
	
	// Definición de variables.
	definir num, cantidad, sumatoria como entero
	
	// Inicialización de variables.
	num = 0
	cantidad = 0
	sumatoria = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitará ingresar números enteros hasta que se ingrese -1"
	escribir "Y cuando -1 sea ingresado, se calculará el promedio de los números"
	escribir "que fueron ingresados hasta ese momento, sin incluír el -1"
	
	// Se solicita al usuario ingresar el número.
	escribir "Por favor ingrese número entero para calcular promedio (-1 para finalizar): "
	leer num
	
	// Se suman los números ingresados y se cuenta la cantidad de números ingresados
	// hasta que el número ingresado sea "-1"
	// Se excluyen también los números negativos.
	mientras num > -1 Hacer
		cantidad = cantidad + 1
		sumatoria = sumatoria + num
		
		Escribir "Ingrese un número entero: " sin saltar
		leer num
		
	FinMientras	
	
	// Se presenta la información solicitada por pantalla.
	si cantidad > 0 Entonces		
		escribir "El promedio de los números ingresados es " sumatoria / cantidad
	SiNo
		escribir "No se ingresaron números."		
	FinSi
	
FinAlgoritmo
