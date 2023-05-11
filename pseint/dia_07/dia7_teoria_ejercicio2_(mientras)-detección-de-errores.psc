// Clase 7 - Teoría - Ejercicio 2 - página 4
// Fer V - jalmendra99@gmail.com
//
// DETECCIÓN DE ERRORES Copia y pega este código en tu programa. 
// Deberás corregir los errores hasta lograr el siguiente resultado esperado: 
// Algoritmo Correccion_Mientras 
// Definir num Como Entero 
// //El programa ingresará números mientras sean PARES 
// Escribir "Ingrese un número" 
// Leer num 
// Mientras num  2 == 0 Hacer 
// Escribir "Ingrese otro número"
// FinAlgoritmo
//
// ¿Cuál es el resultado a lograr?
// Ingrese un número
// 2
// Ingrese otro número
// 8
// Ingrese otro número
// 10
// Ingrese otro número
// 6
// Ingrese otro número
// 9
// Ejecución finalizada

Algoritmo Correccion_Mientras 
	
	Definir num Como Entero 
	
	//Se solicitará ingresar números mientras los ingresados sean pares.
	Escribir "Ingrese un número" 
	Leer num 
	
	Mientras num mod 2 == 0 Hacer 
		Escribir "Ingrese otro número"
		leer num
	fin mientras
	
FinAlgoritmo
