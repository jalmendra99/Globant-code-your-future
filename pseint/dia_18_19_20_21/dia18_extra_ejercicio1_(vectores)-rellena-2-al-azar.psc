// Clase 18 - Extras - Ejercicio 1 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que rellene dos vectores al mismo tiempo, 
// con 5 valores aleatorios y los muestre por pantalla.


// Principal.
Algoritmo clase18_extras_ejercicio1
	
	// Definici�n de variables.
	definir vector1, vector2, posicion como entero
	
	dimension vector1[5]
	dimension vector2[5]
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se crear�n dos vectores de tama�o 5 c/u, se llenar�n al mismo tiempo "
	escribir            "con valores aleatorios y se mostrar�n por pantalla."	
	
	// Se llenan ambos vectores al mismo tiempo con 5 valores aleatorios.
	para posicion = 0 hasta 5 - 1 con paso 1 Hacer
		vector1[posicion] = Aleatorio(1, 100)
		vector2[posicion] = aleatorio(1, 100)
	FinPara
	
	// Se muestra la informaci�n solicitada. 
	
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
	
	// Para cada posici�n del vector, se imprime el valor del vector en esa posici�n.
	para posicion = 0 hasta 5 - 1 con paso 1 Hacer
		// Imprime cada valor del vector.
		escribir Sin Saltar vector[posicion]
		// Agrega un separador entre cada valor, a menos que sea la �ltima posici�n
		si posicion <> 5 - 1 entonces
			escribir sin saltar " "
		finsi	
		
	FinPara
	// Imprime un salto de l�nea para pasar a la siguiente l�nea en pantalla.
	escribir ""

FinSubProceso
