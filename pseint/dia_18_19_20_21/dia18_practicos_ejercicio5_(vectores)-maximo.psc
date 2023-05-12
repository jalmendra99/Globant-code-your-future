// Clase 18 - Pr�cticos - Ejercicio 5 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que rellene un vector de tama�o N, 
// con valores ingresados por el usuario. 
// A continuaci�n, se deber� crear una funci�n que reciba el vector 
// y devuelva el valor m�s grande del vector.


// Principal.
Algoritmo clase18_practicos_ejercicio5
	
	// Definici�n de variables.
	definir vector, posicion, n, maximo como entero	
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero n para crear un vector de tama�o n, " sin saltar
	escribir "luego se solicitar�n ingresar todos los valores del mismo " sin saltar
	escribir "y se mostrar� el mayor valor."
	
	// Se solicita el n�mero n al usuario...	
	// Se fuerza a que est� entre 1 y 10.
	Hacer
		escribir "Ingrese un n�mero n para crear los vectores (de 1 a 10): " sin saltar
		leer n
		
		// Si se ingresa un n�mero fuera del rango aceptado, se muestra un mensaje.
		si n < 1 o n > 10 Entonces
			escribir "Por favor ingrese n�meros entre 1 y 10."
		FinSi
		
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona el vector al tama�o "n" ingresado por el usuario.
	Dimension vector[n]
	
	// Se llena el vector con los valores ingresados por el usuario
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		// Se fuerza a que los valores est�n entre 1 y 100.
		hacer
			escribir "Ingrese un n�mero entre 1 y 100 para la posici�n ", posicion, " del vector: " sin saltar
			leer vector[posicion]
			
			// Si el n�mero ingresado no est� dentro del rango aceptado, se muestra un mensaje.
			si vector[posicion] < 1 o vector[posicion] > 100 Entonces
				escribir "Por favor ingrese n�meros entre 1 y 100."
			FinSi
			
		mientras que vector[posicion] < 1 o vector[posicion] > 100
	FinPara	
	
	// Se calcula el valor m�ximo usando la funci�n solicitada.
	maximo = calcularMaximo(vector, n)
	
	// Se muestra la informaci�n solicitada por pantalla.
	escribir "El valor m�ximo es ", maximo, "."
	
	// Se muestra el vector por pantalla, para verificar visualmente.
	escribir "El vector es:"
	imprimeVector(vector, n)
	
FinAlgoritmo



// Funci�n calcularMaximo
// Retorna el valor m�ximo de un "vector" de tama�o "n".
funcion max = calcularMaximo(vector por referencia, n)
	definir max como entero
	definir posicion Como Entero
	
	max = 0
	
	// se recorren todas las posiciones del vector..
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		// Si la posici�n actual es mayor que el "m�ximo" guardado, entonces...
		si vector[posicion] > max Entonces
			// Se guarda el valor en la variable "maximo".
			max = vector[posicion]
		FinSi
	FinPara	
	
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
