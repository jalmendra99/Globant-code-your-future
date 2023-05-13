// Clase 7 - Prácticos - Ejercicio 5 - página 2
// Fer V - jalmendra99@gmail.com
//
// Escriba un programa que solicite dos números enteros (mínimo y máximo). 
// A continuación, se debe pedir al usuario que ingrese números enteros 
// situados entre el máximo y mínimo. 
// Cada vez que un número se encuentre entre ese intervalo, se sumara uno a una variable. 
// El programa terminará cuando se escriba un número que no pertenezca a ese intervalo, 
// y al finalizar se debe mostrar por pantalla la cantidad de números ingresados 
// dentro del intervalo.

Algoritmo practicos_ejercicio5
	
	// Definición de variables.
	definir minimo, maximo, num, contador como entero
	
	// Inicialización de variables.
	minimo = 0
	maximo = 0
	num = 0
	contador = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitará ingresar un número entero mínimo, un máximo " sin saltar
	escribir "y luego se solicitarán ingresar números enteros entre el máximo y mínimo ingresado." sin saltar
	escribir "Si el número ingresado se encuentra en ese intervalo se contará."
	escribir "El programa terminará cuando se escriba un número que no pertenezca al intervalo."
		
	// Se solicita al usuario ingresar el minimo y máximo.
	escribir "Ingrese un número entero para usar como mínimo: " sin saltar
	leer minimo
	escribir "Ingrese un número entero para usar como máximo: " sin saltar
	leer maximo	
	escribir "Ingrese un número dentro de ese intervalo (o por fuera para salír): " sin saltar
	leer num
	
	// Se continúa solicitando ingresar números mientras el número ingresado se encuentre en el intervalo.
	mientras num <= maximo y num >= minimo Hacer
		contador = contador + 1
		Escribir "Ingrese otro número entero dentro de ese intervalo (o por fuera para salr): " sin saltar
		leer num		
	FinMientras	
	
	// Se presenta la información solicitada por pantalla.
	escribir "La cantidad de números ingresados que se encuentran en ese intervalo es: ", contador, "."
	
FinAlgoritmo
