// Clase 12 - teor�a - Ejercicio 4 - p�gina 11
// Fer V - jalmendra99@gmail.com
//
// DETECCI�N DE ERRORES 
// �Puedes corregir esta funci�n para lograr el resultado esperado?
// Funcion retorno <- Comparar ( num1 ) 
// retorno = num1  num2 
// Algoritmo Prueba 
// Definir num1, num2 Como Entero 
// Definir resultado Como Logico 
// num1 = 3 
// num2 = 6 
// resultado = retorno(num1,num2) 
// Escribir "El num1 es mayor a num2, esta afirmaci�n es: " resultado 
// FinAlgoritmo
//
// �Cu�l es el resultado a lograr?
// *** Ejecuci�n Iniciada. ***
// El num1 es mayor a num2, esta afirmaci�n es: FALSO

Funcion retorno = Comparar (numero1, numero2) 
	definir retorno Como Logico
	retorno = numero1 > numero2 
fin funcion

Algoritmo Prueba 
	Definir num1, num2 Como Entero 
	Definir resultado Como Logico 
	num1 = 3 
	num2 = 6 
	resultado = comparar(num1,num2) 
	Escribir "El num1 es mayor a num2, esta afirmaci�n es: ", resultado 
FinAlgoritmo
