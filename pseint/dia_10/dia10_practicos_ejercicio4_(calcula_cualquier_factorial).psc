// Clase 10 - Prácticos - Ejercicio 4 - página 2
// 2023-04-13 - Fer V. - jalmendra99@gmail.com
//
// La función factorial se aplica a números enteros positivos. 
// El factorial de un número entero positivo (!n) es igual al producto 
// de los enteros positivos desde 1 hasta n:
// n! = 1 * 2 * 3 * 4 * 5 * (n-1) * n
// Escriba un programa que calcule las factoriales de todos los números 
// enteros desde el 1 hasta el 5. El programa deberá mostrar la siguiente salida:
// !1 = 1 
// !2 = 1*2 = 2 
// ...
// !5 = 1*2*3*4*5 = 120

Algoritmo practicos_ejercicio4
	
	// Definición de variables.
	definir n, num Como Entero
	definir factorial como real
	
	// Inicialización de variables.		
	n = 0
	
	// Se informa premisa al usuario.
	escribir sin saltar "Se calcularán las factoriales de todos los números enteros "
	escribir            "desde el 1 hasta el número ingresado."
	escribir            "Ingrese el factorial que desea calcular (máximo 170): "
	leer n	
	
	// Se inicializa factorial para cada entero.
	// Si se inicia en cero, todas las multiplicaciones serán cero,
	// por lo tanto se inicializa con el neutro de la multiplicación (1).
	factorial = 1
	
	// Se calcula el factorial de n (!n).
	para num = 1 hasta n con paso 1 Hacer
		factorial = factorial * num
	FinPara
	
	// Se presenta la información solicitada por pantalla.	
	escribir "!", n, " = ", factorial
	
FinAlgoritmo
