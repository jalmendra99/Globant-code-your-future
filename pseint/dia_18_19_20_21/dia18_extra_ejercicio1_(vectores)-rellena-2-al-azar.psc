// Clase 18 - Extras - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que rellene dos vectores al mismo tiempo, 
// con 5 valores aleatorios y los muestre por pantalla.


// Principal.
Algoritmo clase18_extras_ejercicio1
	
	// Definición de variables.
	definir vector1, vector2, posicion como entero
	
	dimension vector1[5]
	dimension vector2[5]
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se crearán dos vectores de tamaño 5 c/u, se llenarán al mismo tiempo "
	escribir            "con valores aleatorios y se mostrarán por pantalla."	
	
	// Se llenan ambos vectores al mismo tiempo con 5 valores aleatorios.
	para posicion = 0 hasta 5 - 1 con paso 1 Hacer
		vector1[posicion] = Aleatorio(1, 100)
		vector2[posicion] = aleatorio(1, 100)
	FinPara
	
	// Se muestra la información solicitada. 
	
	// Se imprime el vector1.
	escribir "El vector 1 es:"
	imprimeVector5(vector1)
	
	// Se imprime el vector2.
	escribir "El vector 2 es:"
	imprimeVector5(vector2)
	
finAlgoritmo


// Subprograma imprimeVector5
// Imprime los valores de un "vector" de 5.
SubProceso imprimeVector5 (vector por referencia)
	
	definir posicion como entero
	
	// Para cada posición del vector, se imprime el valor del vector en esa posición.
	para posicion = 0 hasta 5 - 1 con paso 1 Hacer
		// Imprime cada valor del vector.
		escribir Sin Saltar vector[posicion]
		// Agrega un separador entre cada valor, a menos que sea la última posición
		si posicion <> 5 - 1 entonces
			escribir sin saltar " "
		finsi	
		
	FinPara
	// Imprime un salto de línea para pasar a la siguiente línea en pantalla.
	escribir ""

FinSubProceso
