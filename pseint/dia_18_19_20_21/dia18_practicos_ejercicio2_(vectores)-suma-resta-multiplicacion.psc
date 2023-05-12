// Clase 18 - Pr�cticos - Ejercicio 2 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que lea 10 n�meros reales por teclado, 
// los almacene en un arreglo y muestre por pantalla la suma, resta y multiplicaci�n 
// de todos los n�meros ingresados al arreglo.


// Principal.
Algoritmo clase18_practicos_ejercicio1
	
	// Definici�n de variables.
	definir vector, elemento como entero
	definir suma, resta, multiplicacion Como Entero
	
	Dimension  vector[10]
	
	// Inicializaci�n de variables.
	suma = 0
	resta = 0
	multiplicacion = 1
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar 10 n�meros enteros para cargar un vector " sin saltar
	escribir "y luego se mostrar�n por pantalla la suma, resta y multiplicaci�n de todos sus valores."
	
	// Se solicita la informaci�n al usuario...	
	para elemento = 0 hasta 9 con paso 1
		
		// Para simplificar la comprobaci�n de las cuentas 
		// se fuerza a que los valores ingresados est�n entre 1 y 10.
		Hacer
			escribir "Ingrese un n�mero entero para vector[", elemento, "]: " sin saltar
			leer vector[elemento]
			
			// Si el valor ingresado no est� dentro del rango aceptado, se muestra un mensaje.
			si vector[elemento] < 1 o vector[elemento] > 10 Entonces
				escribir "Por favor solo ingresar valores entre 1 y 10."
			FinSi
		Mientras Que vector[elemento] < 1 o vector[elemento] > 10
		
		// Se calculan las operaciones solicitadas con todos los valores del vector.
		suma = suma + vector[elemento]
		resta = resta - vector[elemento] //// El primer elemento se toma como positivo o negativo?
		multiplicacion = multiplicacion * vector[elemento]
		
	FinPara
	
	// Y se presenta el resultado por pantalla.	
	Escribir "Para todos los elementos del vector ingresado..."
	escribir "La sumatoria es: ", suma
	escribir "La resta es: ", resta
	escribir "Y la multiplicaci�n es: ", multiplicacion
	
FinAlgoritmo
