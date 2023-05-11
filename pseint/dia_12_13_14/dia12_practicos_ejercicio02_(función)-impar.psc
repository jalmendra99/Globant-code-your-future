// Clase 12 - Prácticos - Ejercicio 2 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar una función que valide si un número es impar o no. 
// Si es impar la función debe devolver un verdadero, 
// si no es impar debe devolver falso. 
// Nota: la función no debe tener mensajes que digan si es par o no, eso debe pasar en el Algoritmo.


// Principal.
Algoritmo ejercicio2
	
	// Definición de variables.
	Definir num1 Como Entero 	 
	Definir num1EsPar Como Logico
	
	// Inicialización de variables.
	num1 = 0
	num1EsPar = Falso
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará un número y se verificará si el mismo es par o no."
	
	// Se solicitan los datos al usuario.
	escribir "Ingrese un número entero: "
	leer num1
	
	// Se verifica si el número ingresado es par o no utilizando la función solicitada.
	num1EsPar = espar(num1) 
	
	// Se presenta la información al usuario.
	si num1EsPar Entonces
		escribir num1, " ES par."
	SiNo
		escribir num1, " NO ES par."
	FinSi
	
FinAlgoritmo


// Funcion espar. Retorna: Verdadero si num es par. Falso, si num es impar.
Funcion retorno = esPar (num) 
	definir retorno Como Logico
	retorno = num mod 2 == 0
fin funcion
