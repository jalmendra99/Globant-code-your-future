// Clase 18 - Prácticos - Ejercicio 2 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que lea 10 números reales por teclado, 
// los almacene en un arreglo y muestre por pantalla la suma, resta y multiplicación 
// de todos los números ingresados al arreglo.


// Principal.
Algoritmo clase18_practicos_ejercicio1
	
	// Definición de variables.
	definir vector, elemento como entero
	definir suma, resta, multiplicacion Como Entero
	
	Dimension  vector[10]
	
	// Inicialización de variables.
	suma = 0
	resta = 0
	multiplicacion = 1
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar 10 números enteros para cargar un vector " sin saltar
	escribir "y luego se mostrarán por pantalla la suma, resta y multiplicación de todos sus valores."
	
	// Se solicita la información al usuario...	
	para elemento = 0 hasta 9 con paso 1
		
		// Para simplificar la comprobación de las cuentas 
		// se fuerza a que los valores ingresados estén entre 1 y 10.
		Hacer
			escribir "Ingrese un número entero para vector[", elemento, "]: " sin saltar
			leer vector[elemento]
			
			// Si el valor ingresado no está dentro del rango aceptado, se muestra un mensaje.
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
	escribir "Y la multiplicación es: ", multiplicacion
	
FinAlgoritmo
