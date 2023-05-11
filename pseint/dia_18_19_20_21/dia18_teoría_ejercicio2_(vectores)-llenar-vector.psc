// Clase 18 - Teoría - Ejercicio 2 - página 5
// Fer V - jalmendra99@gmail.com
//
// (ejercicio 1: ) EJERCICIO DEFINIR VECTOR
// 
// Define un vector que alojará números enteros y otro de cadena. 
// Dimensiona ambos de la longitud que tu desees. 
// Ahora en lapiz y papel, escribe la dimensión de tus vectores y sus subíndices.

// (ejercicio 2: ) EJERCICIO LLENAR VECTOR
// Ahora es tu turno. Llena uno de los vectores que definiste y dimensionaste anteriormente,
// de forma manual y el otro con un Bucle Para.


// Principal.
Algoritmo clase18_teoria_ejercicio2
	
	definir vectorEnteros, i Como Entero
	definir vectorCadena como cadena
	
	dimension vectorEnteros[2]
	dimension vectorCadena[2]	
	
	// Llenando un vector de forma manual.
	vectorCadena[0] = "Cero"
	vectorCadena[1] = "Uno"
	
	// Llenando el otro vector con un bucle para.
	para i = 0 hasta 1 con paso 1 Hacer
		vectorEnteros[i] = i
	FinPara
	
FinAlgoritmo
