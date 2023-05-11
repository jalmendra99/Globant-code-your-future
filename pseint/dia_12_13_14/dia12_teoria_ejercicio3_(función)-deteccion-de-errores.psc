// Clase 12 - teoría - Ejercicio 3 - página 9
// Fer V - jalmendra99@gmail.com
//
// DETECCIÓN DE ERRORES 
// ¿Puedes corregir esta función para que cumpla con su sintaxis?
// Func retorno <- Paridad ( num 
// retorno : num MOD 2 == 0 
// Fin Funcion

Algoritmo ejercicio3
	
	// Definición de variables.
	Definir num como entero
	
	// Inicialización de variables.
	num = azar(100)
	
	escribir "Para el número ", num, " la paridad es ", paridad(num), "."
	
FinAlgoritmo

// Devuelve Verdadero si el número ingresado es par. Sinó devuelve Falso.
Funcion retorno <- Paridad (num por valor)
	definir retorno Como Logico	
	retorno = num MOD 2 == 0 
Fin Funcion
