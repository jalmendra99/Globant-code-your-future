// Clase 6 - Teor�a - Ejercicio 4 - p�gina 7
// Fer V - jalmendra99@gmail.com
//
// DETECCI�N DE ERRORES 
// Copia y pega este c�digo, que muestra el mayor de 3 numeros en tu programa. 
// Deber�s corregir los errores hasta lograr el siguiente resultado esperado: 
// 	Algoritmo Correccion_SiAnidado 
// 		Definir n1, n2 Como Entero 
// 		Escribir "MOSTRAR EL MAYOR DE 3 N�MEROS" 
// 		Escribir "INGRESE N�MERO 01 : " n1 
// 		Escribir "INGRESE N�MERO 02 : "
// 		Escribir "INGRESE N�MERO 03 : " 
// 		Leer n3 
// 		Si (n1 > n2  n1  n3) Entonces 
// 			Escribir "MAYOR ES ", n1 
// 			No 
// 			Si (n2  n1  n2  n3) Entonces 
// 				Escribir "MAYOR ES ", n2
// 				Escribir "MAYOR ES ", n3
// 			FinSi 
// 		FinSi
// FinAlgoritmo


Algoritmo Correccion_SiAnidado 
	Definir n1, n2, n3 Como Entero 
	Escribir "MOSTRAR EL MAYOR DE 3 N�MEROS" 
	Escribir "INGRESE N�MERO 01 : " 
	leer n1 
	Escribir "INGRESE N�MERO 02 : "
	leer n2
	Escribir "INGRESE N�MERO 03 : " 
	Leer n3 
	Si (n1 > n2 y n1 > n3) Entonces 
		Escribir "MAYOR ES ", n1 
	siNo		
		Si (n2 > n1 y n2 > n3) Entonces 
			Escribir "MAYOR ES ", n2
		sino
			Escribir "MAYOR ES ", n3
		FinSi 
	FinSi
FinAlgoritmo
