// Clase 18 - Extras - Ejercicio 6 - página 3
// Fer V - jalmendra99@gmail.com
//
// Crear una función que devuelva la diferencia que hay entre 
// el valor más chico de un arreglo y su valor más grande.


// Principal.
Algoritmo clase18_extras_ejercicio6
	
	// Definición de variables.
	definir vector, posicion, n, maximo, minimo, diferencia como entero		
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número n para crear un vector de tamaño n, y " sin saltar
	escribir "luego se llenará al mismo con valores al azar. Luego se calculará la " sin saltar
	escribir "diferencia entre su valor más chico y su valor más grande."
	
	// Se solicita el número n al usuario...	
	// Se fuerza a que esté entre 1 y 10.
	Hacer
		escribir "Ingrese un número n para crear el vector (de 1 a 10): " sin saltar
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona al vector usando el número "n" ingresado por el usuario.
	Dimension vector[n]
	
	
	// Para todas las posiciones del vector...
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		
		// Se llena el vector con n números aleatorios entre 0 y 9 (para que las comprobaciones sean sencillas).
		vector[posicion] = Aleatorio(0, 9)
		
		// Se usa el primer valor del vector para inicializar los valores del máximo y el mínimo.
		si posicion = 0 Entonces
			minimo = vector[posicion]
			maximo = vector[posicion]
		FinSi
		
		si vector[posicion] > maximo Entonces
			maximo = vector[posicion]
		FinSi
		si vector[posicion] < minimo Entonces
			minimo = vector[posicion]
		FinSi
	FinPara
	
	// Se calcula la diferencia entre el máximo valor del vector y el mínimo valor.
	diferencia = maximo - minimo
	
	// Se imprime la información solicitada.
	escribir "La diferencia entre el valor más chico y el más grande es de ", diferencia, "."
	
	// Se imprimen los valores del vector para poder verificar visualmente por pantalla.
	escribir Sin Saltar "El vector es: "
	imprimeVector(vector, n)
	escribir "El valor máximo es: ", maximo
	escribir "El valor mínimo es: ", minimo	
	
finAlgoritmo


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
