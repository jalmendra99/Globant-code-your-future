// Clase 7 - Teor�a - Ejercicio 2 - p�gina 4
// Fer V - jalmendra99@gmail.com
//
// DETECCI�N DE ERRORES Copia y pega este c�digo en tu programa. 
// Deber�s corregir los errores hasta lograr el siguiente resultado esperado: 
// Algoritmo Correccion_Mientras 
// Definir num Como Entero 
// //El programa ingresar� n�meros mientras sean PARES 
// Escribir "Ingrese un n�mero" 
// Leer num 
// Mientras num  2 == 0 Hacer 
// Escribir "Ingrese otro n�mero"
// FinAlgoritmo
//
// �Cu�l es el resultado a lograr?
// Ingrese un n�mero
// 2
// Ingrese otro n�mero
// 8
// Ingrese otro n�mero
// 10
// Ingrese otro n�mero
// 6
// Ingrese otro n�mero
// 9
// Ejecuci�n finalizada

Algoritmo Correccion_Mientras 
	
	Definir num Como Entero 
	
	//Se solicitar� ingresar n�meros mientras los ingresados sean pares.
	Escribir "Ingrese un n�mero" 
	Leer num 
	
	Mientras num mod 2 == 0 Hacer 
		Escribir "Ingrese otro n�mero"
		leer num
	fin mientras
	
FinAlgoritmo
