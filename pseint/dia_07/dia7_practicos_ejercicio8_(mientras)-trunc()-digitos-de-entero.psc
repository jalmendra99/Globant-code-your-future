// Clase 7 - Prácticos - Ejercicio 8 - página 3
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que calcule cuántos dígitos tiene un número entero 
// positivo sin convertirlo a cadena 
// (pista: se puede hacer dividiendo varias veces entre 10).  
// Nota: investigar la función trunc().

Algoritmo practicos_ejercicio8
	
	// Definición de variables.
	definir num, digitos como entero
	
	// Inicialización de variables.	
	num = -1
	digitos = 1	// Se inicia con 1 para no dividir por cero al calcular la cantidad de dígitos
	
	// Se informa premisa al usuario.
	escribir "Se solicitará ingresar un número entero positivo y se calculará la cantidad"
	escribir "de dígitos que el mismo tiene, sin convertirlo a una cadena."
	
	// Se solicita al usuario ingresar el número
	// Y se continúa pidiendo un número mientras el ingresado no sea positivo. (Si es 30.001 o más, falla)
	mientras num <= 0 Hacer
		escribir "Por favor ingrese un número entero positivo (de 1 a 30.000): "
		leer num
	FinMientras	
	
	// Se calcula la cantidad de dígitos usando trunc()
	mientras trunc(num / 10) > 0 hacer
		digitos = digitos + 1
		num = num / 10
	FinMientras	
	
	// Se presenta la información solicitada por pantalla.
	escribir "La cantidad de dígitos que tiene el número ingresado es ", digitos, "."
	
FinAlgoritmo
