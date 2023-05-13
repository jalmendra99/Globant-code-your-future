// Clase 9 - Prácticos - Ejercicio 5 - página 2
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que calcule la suma de los N primeros números naturales. 
// El valor de N se leerá por teclado.

Algoritmo practicos_ejercicio5
	
	// Definición de variables.
	definir n, suma como entero
	
	// Inicialización de variables.		
	suma = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitará ingresár un número natural positivo (N) y se mostrará " sin saltar
	escribir " la suma de los primeros N números naturales"
	
	// Se solicita ingresar el número "N"
	// y se verifica que sea positivo
	repetir 
		escribir "Ingrese un número natural positivo: " sin saltar
		leer n
	Mientras Que (n <= 0)
	
	// Se calcula la sumatoria.
	para n = 1 hasta n con paso 1 hacer
		suma = suma + n
	FinPara
	
	// Se presenta la información solicitada por pantalla.
	escribir "La suma de los números enteros entre 1 y ", n - 1, " es ", suma, "."
	
FinAlgoritmo
