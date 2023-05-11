// Clase 12 - Prácticos - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar una función que calcule la suma de dos números. 
// En el algoritmo principal le pediremos al usuario los dos números 
// para pasárselos a la función. Después la función calculará la suma 
// y lo devolverá para imprimirlo en el algoritmo.


// Principal.
Algoritmo ejercicio1
	
	// Definición de variables.
	Definir num1, num2, resultado Como Entero 	 
	
	// Inicialización de variables.
	num1 = 0
	num2 = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitarán dos números enteros y se calculará y mostrará la suma de los mismos."
	
	// Se solicitan los datos al usuario.
	escribir "Ingrese un número entero: "
	leer num1
	escribir "Ingrese otro número entero: "
	leer num2
	
	// Se calcula la suma de los dos números enteros ingresados utilizando la función solicitada.
	resultado = sumar(num1,num2) 
	
	// Se presenta la información al usuario.
	Escribir num1, " + ", num2, " = ", resultado, "."
	
FinAlgoritmo


// Funcion sumar. Retorna numero1 + numero2
Funcion retorno = Sumar (numero1, numero2) 
	definir retorno Como entero
	retorno = numero1 + numero2 
fin funcion
