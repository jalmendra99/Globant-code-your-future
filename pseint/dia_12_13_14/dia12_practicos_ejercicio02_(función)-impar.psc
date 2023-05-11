// Clase 12 - Pr�cticos - Ejercicio 2 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar una funci�n que valide si un n�mero es impar o no. 
// Si es impar la funci�n debe devolver un verdadero, 
// si no es impar debe devolver falso. 
// Nota: la funci�n no debe tener mensajes que digan si es par o no, eso debe pasar en el Algoritmo.


// Principal.
Algoritmo ejercicio2
	
	// Definici�n de variables.
	Definir num1 Como Entero 	 
	Definir num1EsPar Como Logico
	
	// Inicializaci�n de variables.
	num1 = 0
	num1EsPar = Falso
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� un n�mero y se verificar� si el mismo es par o no."
	
	// Se solicitan los datos al usuario.
	escribir "Ingrese un n�mero entero: "
	leer num1
	
	// Se verifica si el n�mero ingresado es par o no utilizando la funci�n solicitada.
	num1EsPar = espar(num1) 
	
	// Se presenta la informaci�n al usuario.
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
