// Clase 18 - Extras - Ejercicio 7 - página 3
// Fer V - jalmendra99@gmail.com
//
// Programe una función que calcule el producto de un arreglo 
// de números enteros. Para esto imagine, por ejemplo, que para un vector V 
// de tamaño 4, el producto de todos los valores es igual a (V[1]*V[2]*V[3]*V[4])


// Principal.
Algoritmo clase18_extras_ejercicio7
	
	// Definición de variables.
	definir vector, posicion, n, producto como entero
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número n para crear un vector de tamaño n, y " sin saltar
	escribir "luego se llenará al mismo con valores al azar. Luego se calculará la " sin saltar
	escribir "multiplicación entre todos sus valores."
	
	// Se solicita el número n al usuario...	
	// Se fuerza a que esté entre 1 y 10.
	Hacer
		escribir "Ingrese un número n para crear el vector (de 1 a 10): " sin saltar
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona al vector usando el número "n" ingresado por el usuario.
	Dimension vector[n]
	
	// Se llena el vector con valores al azar entre 0 y 9 para que las verificaciones sean sencillas.
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		vector[posicion] = Aleatorio(0, 9)
	FinPara
	
	// Se calcula el producto del vector usando la función solicitada.
	producto = productoDeVector(vector, n)
	
	// Se muestra la información solicitada por pantalla.
	escribir "Multiplicar todos los valores del vector, da como resultado: ", producto, "."
	
	// Se imprimen los valores del vector para poder verificar visualmente por pantalla.
	escribir "El vector es: "
	imprimeVector(vector, n)
	
finAlgoritmo


// Funcion producto
// Calcula la multiplicacion de todos los valores contenidos en un "vector" de tamaño "n".
funcion producto = productoDeVector(vector por referencia, n)
	definir producto Como Real
	definir posicion Como Entero
	
	// Se inicializa la sumatoria en cero.
	producto = 1
	// Para cada posición en el "vector", se acumula el valor de la misma en "sumatoria".
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		producto = producto * vector[posicion]
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
