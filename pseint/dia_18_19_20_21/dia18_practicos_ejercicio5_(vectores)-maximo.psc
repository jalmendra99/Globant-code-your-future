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
	escribir Sin Saltar "Se solicitar� ingresar un n�mero n para crear un vector de tama�o n, "
	escribir sin saltar "luego se solicitar�n ingresar todos los valores del mismo "
	escribir            "y se mostrar� el mayor valor."
	
	// Se solicita el n�mero n al usuario...	
	// Se fuerza a que est� entre 1 y 10.
	Hacer
		escribir "Ingrese un n�mero n para crear los vectores (de 1 a 10):"
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona el vector al tama�o "n" ingresado por el usuario.
	Dimension vector[n]
	
	// Se llena el vector con los valores ingresados por el usuario
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		// Se fuerza a que los valores est�n entre 1 y 100.
		hacer
			escribir "Ingrese un n�mero entre 1 y 100 para la posici�n ", posicion, " del vector."
			leer vector[posicion]
		mientras que vector[posicion] < 1 o vector[posicion] > 100
	FinPara	
	
	// Se calcula el valor m�ximo usando la funci�n solicitada.
	maximo = calcularMaximo(vector, n)
	
	// Se muestra la informaci�n solicitada por pantalla.
	escribir "El valor m�ximo es ", maximo, "."

FinAlgoritmo


// Funci�n calcularMaximo
// Retorna el valor m�ximo de un "vector" de tama�o "n".
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
