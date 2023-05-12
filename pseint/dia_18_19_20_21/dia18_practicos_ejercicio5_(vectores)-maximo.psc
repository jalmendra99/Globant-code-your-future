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
	escribir "Se solicitará ingresar un número n para crear un vector de tamaño n, " sin saltar
	escribir "luego se solicitarán ingresar todos los valores del mismo " sin saltar
	escribir "y se mostrará el mayor valor."
	
	// Se solicita el número n al usuario...	
	// Se fuerza a que esté entre 1 y 10.
	Hacer
		escribir "Ingrese un número n para crear los vectores (de 1 a 10): " sin saltar
		leer n
		
		// Si se ingresa un número fuera del rango aceptado, se muestra un mensaje.
		si n < 1 o n > 10 Entonces
			escribir "Por favor ingrese números entre 1 y 10."
		FinSi
		
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona el vector al tamaño "n" ingresado por el usuario.
	Dimension vector[n]
	
	// Se llena el vector con los valores ingresados por el usuario
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		// Se fuerza a que los valores estén entre 1 y 100.
		hacer
			escribir "Ingrese un número entre 1 y 100 para la posición ", posicion, " del vector: " sin saltar
			leer vector[posicion]
			
			// Si el número ingresado no está dentro del rango aceptado, se muestra un mensaje.
			si vector[posicion] < 1 o vector[posicion] > 100 Entonces
				escribir "Por favor ingrese números entre 1 y 100."
			FinSi
			
		mientras que vector[posicion] < 1 o vector[posicion] > 100
	FinPara	
	
	// Se calcula el valor máximo usando la función solicitada.
	maximo = calcularMaximo(vector, n)
	
	// Se muestra la información solicitada por pantalla.
	escribir "El valor máximo es ", maximo, "."
	
	// Se muestra el vector por pantalla, para verificar visualmente.
	escribir "El vector es:"
	imprimeVector(vector, n)
	
FinAlgoritmo



// Función calcularMaximo
// Retorna el valor máximo de un "vector" de tamaño "n".
funcion max = calcularMaximo(vector por referencia, n)
	definir max como entero
	definir posicion Como Entero
	
	max = 0
	
	// se recorren todas las posiciones del vector..
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		// Si la posición actual es mayor que el "máximo" guardado, entonces...
		si vector[posicion] > max Entonces
			// Se guarda el valor en la variable "maximo".
			max = vector[posicion]
		FinSi
	FinPara	
	
FinFuncion



// Subprograma imprimeVector(n)
// Imprime los valores de un "vector" de tamaño "n".
SubProceso imprimeVector (vector por referencia, n)
	
	definir posicion como entero
	
	// Para cada posición del vector, se imprime el valor del vector en esa posición.
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		// Imprime cada valor del vector.
		escribir Sin Saltar vector[posicion]
		// Agrega un separador entre cada valor, a menos que sea la última posición
		si posicion <> n - 1 entonces
			escribir sin saltar " "
		finsi	
		
	FinPara
	// Imprime un salto de línea para pasar a la siguiente línea en pantalla.
	escribir ""
	
FinSubProceso
