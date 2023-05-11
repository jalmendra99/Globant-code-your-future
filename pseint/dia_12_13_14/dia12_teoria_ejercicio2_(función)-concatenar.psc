// Clase 12 - teoría - Ejercicio 2 - páginas 9 y 10
// Fer V - jalmendra99@gmail.com
//
// Ejercicio cooperar.
//
// Realiza una función llamada Cooperar que reciba dos variables de tipo carácter, 
// una variable debe contener el mensaje "Cooperando" y la otra "trabajamos mejor". 
// La función debe concatenar ambos textos.

Algoritmo ejercicio2
	
	// Definición de variables.
	Definir cadena1, cadena2, cadena3 como cadena
	
	// Inicialización de variables.
	cadena1 = "Cooperando "
	cadena2 = "trabajamos mejor"	
	cadena3 = cooperar(cadena1, cadena2)
	escribir cadena3
	
FinAlgoritmo

funcion cadenaRetornada = cooperar (parte1 por valor, parte2 por valor)
	definir cadenaRetornada como cadena
	
	cadenaRetornada = Concatenar(parte1, parte2)
FinFuncion
