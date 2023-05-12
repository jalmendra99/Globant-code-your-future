// Clase 18 - Extras - Ejercicio 2 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que rellene un vector de tama�o N, 
// con valores ingresados por el usuario y muestre por pantalla 
// el promedio de la suma de todos los valores ingresados.


// Principal.
Algoritmo clase18_extras_ejercicio2
	
	// Definici�n de variables.
	definir vector, posicion, n, elemento como entero
	definir promedio como real
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero n para crear un vector de tama�o n, y " sin saltar
	escribir "luego se solicitar�n ingresar todos los valores para llenar ese vector. Finalmente " sin saltar
	escribir "se calcular� el promedio de todos los valores contenidos en el vector."
	
	// Se solicita el n�mero n al usuario...	
	// Se fuerza a que est� entre 1 y 10.
	Hacer
		escribir "Ingrese un n�mero n para crear el vector (de 1 a 10):" sin saltar
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona el vector al tama�o "n" ingresado por el usuario.
	Dimension vector[n]
	
	// Se llena el vector con los valores ingresados por el usuario
	para elemento = 0 hasta n - 1 con paso 1 Hacer
		// Se fuerza a que los valores est�n entre 1 y 10 para simplificar las comprobaciones.
		hacer
			escribir "Ingrese un n�mero entre 1 y 10 para la posici�n ", elemento, " del vector." sin saltar
			leer vector[elemento]
			
			// Si el n�mero ingresado no est� dentro del rango aceptado, se muestra un mensaje.
			si vector[elemento] < 1 o vector[elemento] > 10 Entonces
				escribir "Solo se aceptan valores entre 1 y 10."			
			FinSi
			
		mientras que vector[elemento] < 1 o vector[elemento] > 10
	FinPara	
	
	promedio = promedioVector(vector, n)	
	
	// Se muestra la informaci�n solicitada. 
	escribir "El promedio de los elementos del vector es ", promedio, "."
	
	// Se imprime el vector para poder verificar visualmente.
	escribir "El vector es: "
	imprimeVector(vector, n)
	
finAlgoritmo


// Funcion promedio
// Calcula el promedio de los valores contenidos en un "vector" de tama�o "n".
funcion promedio = promedioVector(vector por referencia, n)
	definir promedio Como Real
	definir posicion, sumatoria Como Entero
	
	// Se inicializa la sumatoria en cero.
	sumatoria = 0
	// Para cada posici�n en el "vector", se acumula el valor de la misma en "sumatoria".
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		sumatoria = sumatoria + vector[posicion]
	FinPara
	
	promedio = sumatoria / n
FinFuncion


// Subprograma imprimeVector(n)
// Imprime los valores de un "vector" de tama�o "n".
SubProceso imprimeVector (vector por referencia, n)
	
	definir posicion como entero
	
	// Para cada posici�n del vector, se imprime el valor del vector en esa posici�n.
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		// Imprime cada valor del vector.
		escribir Sin Saltar vector[posicion]
		// Agrega un separador entre cada valor, a menos que sea la �ltima posici�n
		si posicion <> n - 1 entonces
			escribir sin saltar " "
		finsi	
		
	FinPara
	// Imprime un salto de l�nea para pasar a la siguiente l�nea en pantalla.
	escribir ""

FinSubProceso
