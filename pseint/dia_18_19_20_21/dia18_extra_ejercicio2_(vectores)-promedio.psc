// Clase 18 - Extras - Ejercicio 2 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que rellene un vector de tamaño N, 
// con valores ingresados por el usuario y muestre por pantalla 
// el promedio de la suma de todos los valores ingresados.


// Principal.
Algoritmo clase18_extras_ejercicio2
	
	// Definición de variables.
	definir vector, posicion, n, elemento como entero
	definir promedio como real
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número n para crear un vector de tamaño n, y " sin saltar
	escribir "luego se solicitarán ingresar todos los valores para llenar ese vector. Finalmente " sin saltar
	escribir "se calculará el promedio de todos los valores contenidos en el vector."
	
	// Se solicita el número n al usuario...	
	// Se fuerza a que esté entre 1 y 10.
	Hacer
		escribir "Ingrese un número n para crear el vector (de 1 a 10):" sin saltar
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona el vector al tamaño "n" ingresado por el usuario.
	Dimension vector[n]
	
	// Se llena el vector con los valores ingresados por el usuario
	para elemento = 0 hasta n - 1 con paso 1 Hacer
		// Se fuerza a que los valores estén entre 1 y 10 para simplificar las comprobaciones.
		hacer
			escribir "Ingrese un número entre 1 y 10 para la posición ", elemento, " del vector." sin saltar
			leer vector[elemento]
			
			// Si el número ingresado no está dentro del rango aceptado, se muestra un mensaje.
			si vector[elemento] < 1 o vector[elemento] > 10 Entonces
				escribir "Solo se aceptan valores entre 1 y 10."			
			FinSi
			
		mientras que vector[elemento] < 1 o vector[elemento] > 10
	FinPara	
	
	promedio = promedioVector(vector, n)	
	
	// Se muestra la información solicitada. 
	escribir "El promedio de los elementos del vector es ", promedio, "."
	
	// Se imprime el vector para poder verificar visualmente.
	escribir "El vector es: "
	imprimeVector(vector, n)
	
finAlgoritmo


// Funcion promedio
// Calcula el promedio de los valores contenidos en un "vector" de tamaño "n".
funcion promedio = promedioVector(vector por referencia, n)
	definir promedio Como Real
	definir posicion, sumatoria Como Entero
	
	// Se inicializa la sumatoria en cero.
	sumatoria = 0
	// Para cada posición en el "vector", se acumula el valor de la misma en "sumatoria".
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		sumatoria = sumatoria + vector[posicion]
	FinPara
	
	promedio = sumatoria / n
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
