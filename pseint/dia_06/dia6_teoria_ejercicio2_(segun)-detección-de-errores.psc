// Clase 6 - Teoría - Ejercicio 2 - página 4
// Fer V - jalmendra99@gmail.com
//
// DETECCIÓN DE ERRORES
// Copia y pega este código en tu programa. 
// Deberás corregir los errores hasta lograr el siguiente resultado esperado:
// Algoritmo PRACTICA_SEGUN 
// Definir num Como Caracter 
// Escribir "Ingrese un número entre 1 y 3" 
// Según  Hacer 
// 1
//  Escribir "Elegiste la opción 1" "Elegiste la opción 1"
// 2:
//  Escribir "Elegiste la opción 1"
// 3:
//  Escribir Elegiste la opción 1
// De Otro Mod 
// Escribir "No elegiste la opción 1, ni 2, ni 3 
// FinAlgoritmo 
//
// ¿Cuál es el resultado a lograr?
// Ingrese un número entre 1 y 3
// >3
// Elegiste la opción 3

Algoritmo PRACTICA_SEGUN 
	
	Definir num Como entero 
	
	Escribir "Ingrese un número entre 1 y 3" 
	leer num
	
	Segun num Hacer
		1:
			Escribir "Elegiste la opción 1"
		2:
			Escribir "Elegiste la opción 2"
		3:
			Escribir "Elegiste la opción 3"
		De Otro Modo
			Escribir "No elegiste la opción 1, ni 2, ni 3."
	FinSegun
	
FinAlgoritmo
