// Clase 7 - Pr�cticos - Ejercicio 8 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que calcule cu�ntos d�gitos tiene un n�mero entero 
// positivo sin convertirlo a cadena 
// (pista: se puede hacer dividiendo varias veces entre 10).  
// Nota: investigar la funci�n trunc().

Algoritmo practicos_ejercicio8
	
	// Definici�n de variables.
	definir num, digitos como entero
	definir temporal como real
	
	// Inicializaci�n de variables.	
	num = -1
	digitos = 1	// Se inicia con 1 para no dividir por cero al calcular la cantidad de d�gitos
	
	// Se informa premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero entero positivo y se calcular� " sin saltar
	escribir "la cantidad de d�gitos que el mismo tiene, sin convertirlo a una cadena."
	
	// Se solicita al usuario ingresar el n�mero
	// Y se contin�a pidiendo un n�mero mientras el ingresado no sea positivo. (Si es 30.001 o m�s, falla)
	mientras num <= 0 Hacer
		escribir "Por favor ingrese un n�mero entero positivo (de 1 a 30.000): " sin saltar
		leer num
	FinMientras	
	
	// No se puede usar num para calcular divisiones porque puede quedar con coma,
	// as� que se usa una variable "temporal" real que permite tomar valores con coma.
	temporal = num
	
	// Se calcula la cantidad de d�gitos usando trunc()
	mientras trunc(temporal / 10) > 0 hacer
		digitos = digitos + 1
		temporal = temporal / 10
	FinMientras	
	
	// Se presenta la informaci�n solicitada por pantalla.
	escribir "La cantidad de d�gitos que tiene el n�mero ingresado es ", digitos, "."
	
FinAlgoritmo
