// Clase 7 - Pr�cticos - Ejercicio 3 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Dada una secuencia de n�meros ingresados por teclado que finaliza con un -1, 
// por ejemplo: 5,3,0,2,4,4,0,0,2,3,6,0,.....,-1; 
// realizar un programa que calcule el promedio de los n�meros ingresados. 
// Suponemos que el usuario no insertar� n�mero negativos.

Algoritmo practicos_ejercicio3
	
	// Definici�n de variables.
	definir num, cantidad, sumatoria como entero
	
	// Inicializaci�n de variables.
	num = 0
	cantidad = 0
	sumatoria = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitar� ingresar n�meros enteros hasta que se ingrese -1"
	escribir "Y cuando -1 sea ingresado, se calcular� el promedio de los n�meros"
	escribir "que fueron ingresados hasta ese momento, sin inclu�r el -1"
	
	// Se solicita al usuario ingresar el n�mero.
	escribir "Por favor ingrese n�mero entero para calcular promedio (-1 para finalizar): "
	leer num
	
	// Se suman los n�meros ingresados y se cuenta la cantidad de n�meros ingresados
	// hasta que el n�mero ingresado sea "-1"
	// Se excluyen tambi�n los n�meros negativos.
	mientras num > -1 Hacer
		cantidad = cantidad + 1
		sumatoria = sumatoria + num
		
		Escribir "Ingrese un n�mero entero: " sin saltar
		leer num
		
	FinMientras	
	
	// Se presenta la informaci�n solicitada por pantalla.
	si cantidad > 0 Entonces		
		escribir "El promedio de los n�meros ingresados es " sumatoria / cantidad
	SiNo
		escribir "No se ingresaron n�meros."		
	FinSi
	
FinAlgoritmo
