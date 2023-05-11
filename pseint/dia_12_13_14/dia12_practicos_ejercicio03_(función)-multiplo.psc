// Clase 12 - Pr�cticos - Ejercicio 3 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Crea una funci�n EsMultiplo que reciba los dos n�meros pasados por el usuario, 
// validando que el primer n�mero m�ltiplo del segundo y devuelva verdadero 
// si el primer n�mero es m�ltiplo del segundo, sino es m�ltiplo que devuelva falso.


// Principal.
Algoritmo ejercicio3
	
	// Definici�n de variables.
	Definir num1, num2 Como Entero 	 
	
	// Inicializaci�n de variables.
	num1 = 0
	num2 = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar�n dos n�meros enteros y se verificar� si el primero es m�ltiplo del segundo."	
	
	// Se solicitan los datos al usuario.
	// Se verifica que num1 no sea cero, para impedir dividir por cero.
	hacer
		escribir "Ingrese un n�mero entero: "
		leer num1
	mientras que num1 == 0
	
	// Se verifica que el m�ltiplo (num2) sea mayor al n�mero ingresado (num1).
	hacer
		escribir "Ingrese otro n�mero entero: "
		leer num2
		si num2 < num1 Entonces
			escribir "El segundo n�mero debe ser mayor o igual al primero."
		FinSi
	mientras que num2 < num1
	
	// Se verifica si el n�mero ingresado es par o no utilizando la funci�n solicitada, y
	// se presenta la informaci�n al usuario.
	si EsMultiplo(num1, num2)  Entonces
		escribir num1, " ES m�ltiplo de ", num2, "."
	SiNo
		escribir num1, " NO ES m�ltiplo de ", num2, "."
	FinSi
	
FinAlgoritmo


// Funcion EsMultiplo. 
// Retorna: Verdadero si num2 es m�ltiplo de num1. Falso si no.
Funcion retorno = EsMultiplo (num1, num2) 
	definir retorno Como Logico
	retorno = num2 mod num1 == 0
fin funcion
