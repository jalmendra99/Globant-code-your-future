// Clase 12 - teoría - Ejercicio 4 - página 11
// Fer V - jalmendra99@gmail.com
//
// DETECCIÓN DE ERRORES 
// ¿Puedes corregir esta función para lograr el resultado esperado?
// Funcion retorno <- Comparar ( num1 ) 
// retorno = num1  num2 
// Algoritmo Prueba 
// Definir num1, num2 Como Entero 
// Definir resultado Como Logico 
// num1 = 3 
// num2 = 6 
// resultado = retorno(num1,num2) 
// Escribir "El num1 es mayor a num2, esta afirmación es: " resultado 
// FinAlgoritmo
//
// ¿Cuál es el resultado a lograr?
// *** Ejecución Iniciada. ***
// El num1 es mayor a num2, esta afirmación es: FALSO

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
	Escribir "El num1 es mayor a num2, esta afirmación es: ", resultado 
FinAlgoritmo
