// Clase 18 - Teoría - Ejercicio 4 - página 6
// Fer V - jalmendra99@gmail.com
//
// EJERCICIO MOSTRAR VECTOR
// Ahora te toca a ti mostrar tus vectores. 
// Además, define una nueva variable y aloja allí algún valor del vector.


// Principal.
Algoritmo clase18_teoria_ejercicio4
	
	definir vectorEnteros, i Como Entero
	definir vectorCadenas como cadena
	
	dimension vectorEnteros[2]
	dimension vectorCadenas[2]	
	
	// Llenando un vector de forma manual.
	vectorCadenas[0] = "Cero"
	vectorCadenas[1] = "Uno"
	
	para i = 0 hasta 1 con paso 1 Hacer
		// Llenando el otro vector con un bucle para.
		vectorEnteros[i] = i
		
		// Mostrando ambos vectores.
		escribir "vectorCadenas[", i, "] = ", vectorCadenas[i]
		escribir "vectorEnteros[", i, "] = ", vectorEnteros[i]
	FinPara	
	
FinAlgoritmo
