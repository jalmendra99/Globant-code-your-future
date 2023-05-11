// Clase 12 - Prácticos - Ejercicio 3 - página 2
// Fer V - jalmendra99@gmail.com
//
// Crea una función EsMultiplo que reciba los dos números pasados por el usuario, 
// validando que el primer número múltiplo del segundo y devuelva verdadero 
// si el primer número es múltiplo del segundo, sino es múltiplo que devuelva falso.


// Principal.
Algoritmo ejercicio3
	
	// Definición de variables.
	Definir num1, num2 Como Entero 	 
	
	// Inicialización de variables.
	num1 = 0
	num2 = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitarán dos números enteros y se verificará si el primero es múltiplo del segundo."	
	
	// Se solicitan los datos al usuario.
	// Se verifica que num1 no sea cero, para impedir dividir por cero.
	hacer
		escribir "Ingrese un número entero: "
		leer num1
	mientras que num1 == 0
	
	// Se verifica que el múltiplo (num2) sea mayor al número ingresado (num1).
	hacer
		escribir "Ingrese otro número entero: "
		leer num2
		si num2 < num1 Entonces
			escribir "El segundo número debe ser mayor o igual al primero."
		FinSi
	mientras que num2 < num1
	
	// Se verifica si el número ingresado es par o no utilizando la función solicitada, y
	// se presenta la información al usuario.
	si EsMultiplo(num1, num2)  Entonces
		escribir num1, " ES múltiplo de ", num2, "."
	SiNo
		escribir num1, " NO ES múltiplo de ", num2, "."
	FinSi
	
FinAlgoritmo


// Funcion EsMultiplo. 
// Retorna: Verdadero si num2 es múltiplo de num1. Falso si no.
Funcion retorno = EsMultiplo (num1, num2) 
	definir retorno Como Logico
	retorno = num2 mod num1 == 0
fin funcion
