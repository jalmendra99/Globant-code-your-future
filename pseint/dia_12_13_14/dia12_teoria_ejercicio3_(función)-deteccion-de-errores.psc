// Clase 12 - teor�a - Ejercicio 3 - p�gina 9
// Fer V - jalmendra99@gmail.com
//
// DETECCI�N DE ERRORES 
// �Puedes corregir esta funci�n para que cumpla con su sintaxis?
// Func retorno <- Paridad ( num 
// retorno : num MOD 2 == 0 
// Fin Funcion

Algoritmo ejercicio3
	
	// Definici�n de variables.
	Definir num como entero
	
	// Inicializaci�n de variables.
	num = azar(100)
	
	escribir "Para el n�mero ", num, " la paridad es ", paridad(num), "."
	
FinAlgoritmo

// Devuelve Verdadero si el n�mero ingresado es par. Sin� devuelve Falso.
Funcion retorno <- Paridad (num por valor)
	definir retorno Como Logico	
	retorno = num MOD 2 == 0 
Fin Funcion
