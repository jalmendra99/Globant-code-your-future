// Clase 12 - Pr�cticos - Ejercicio 1 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar una funci�n que calcule la suma de dos n�meros. 
// En el algoritmo principal le pediremos al usuario los dos n�meros 
// para pas�rselos a la funci�n. Despu�s la funci�n calcular� la suma 
// y lo devolver� para imprimirlo en el algoritmo.


// Principal.
Algoritmo ejercicio1
	
	// Definici�n de variables.
	Definir num1, num2, resultado Como Entero 	 
	
	// Inicializaci�n de variables.
	num1 = 0
	num2 = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar�n dos n�meros enteros y se calcular� y mostrar� la suma de los mismos."
	
	// Se solicitan los datos al usuario.
	escribir "Ingrese un n�mero entero: "
	leer num1
	escribir "Ingrese otro n�mero entero: "
	leer num2
	
	// Se calcula la suma de los dos n�meros enteros ingresados utilizando la funci�n solicitada.
	resultado = sumar(num1,num2) 
	
	// Se presenta la informaci�n al usuario.
	Escribir num1, " + ", num2, " = ", resultado, "."
	
FinAlgoritmo


// Funcion sumar. Retorna numero1 + numero2
Funcion retorno = Sumar (numero1, numero2) 
	definir retorno Como entero
	retorno = numero1 + numero2 
fin funcion
