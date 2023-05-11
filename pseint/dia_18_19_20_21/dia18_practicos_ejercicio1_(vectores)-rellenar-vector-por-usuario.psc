// Clase 18 - Prácticos - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que rellene un vector con 
// 5 valores ingresados por el usuario y los muestre por pantalla.


// Principal.
Algoritmo clase18_practicos_ejercicio1
	
	// Definición de variables.
	definir vector, elemento como entero
	Dimension  vector[5]
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar 5 números enteros para cargar un vector que luego se mostrará en pantalla."
	
	// Se solicita la información al usuario...	
	para elemento = 0 hasta 4 con paso 1 Hacer
		escribir "Ingrese un número entero para vector[", elemento, "]: "
		leer vector[elemento]			
	FinPara
	
	// Y se presenta el resultado por pantalla.	
	para elemento = 0 hasta 4 con paso 1 Hacer
		escribir "vector [", elemento, "] = ", vector[elemento]
	FinPara

FinAlgoritmo
