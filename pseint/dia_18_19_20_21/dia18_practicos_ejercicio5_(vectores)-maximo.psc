// Clase 18 - Prácticos - Ejercicio 5 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que rellene un vector de tamaño N, 
// con valores ingresados por el usuario. 
// A continuación, se deberá crear una función que reciba el vector 
// y devuelva el valor más grande del vector.


// Principal.
Algoritmo clase18_practicos_ejercicio5
	
	// Definición de variables.
	definir vector, posicion, n, maximo como entero	
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se solicitará ingresar un número n para crear un vector de tamaño n, "
	escribir sin saltar "luego se solicitarán ingresar todos los valores del mismo "
	escribir            "y se mostrará el mayor valor."
	
	// Se solicita el número n al usuario...	
	// Se fuerza a que esté entre 1 y 10.
	Hacer
		escribir "Ingrese un número n para crear los vectores (de 1 a 10):"
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona el vector al tamaño "n" ingresado por el usuario.
	Dimension vector[n]
	
	// Se llena el vector con los valores ingresados por el usuario
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		// Se fuerza a que los valores estén entre 1 y 100.
		hacer
			escribir "Ingrese un número entre 1 y 100 para la posición ", posicion, " del vector."
			leer vector[posicion]
		mientras que vector[posicion] < 1 o vector[posicion] > 100
	FinPara	
	
	// Se calcula el valor máximo usando la función solicitada.
	maximo = calcularMaximo(vector, n)
	
	// Se muestra la información solicitada por pantalla.
	escribir "El valor máximo es ", maximo, "."

FinAlgoritmo


// Función calcularMaximo
// Retorna el valor máximo de un "vector" de tamaño "n".
funcion max = calcularMaximo(vector por referencia, n)
	definir max como entero
	definir posicion Como Entero
	
	max = 0
	
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		si vector[posicion] > max Entonces
			max = vector[posicion]
		FinSi
	FinPara	
	
FinFuncion
