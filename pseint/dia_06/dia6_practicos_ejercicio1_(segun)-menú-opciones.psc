// Clase 6 - Pr�cticos - Ejercicio 1 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Condicional m�ltiple
// Construir un programa que simule un men� de opciones para realizar 
// las cuatro operaciones aritm�ticas b�sicas 
// (suma, resta, multiplicaci�n y divisi�n) 
// con dos valores num�ricos enteros. 
// El usuario, adem�s, debe especificar la operaci�n 
// con el primer car�cter de la operaci�n que desea realizar: 
// 'S' o 's' para la suma, 'R' o 'r' para la resta, 
// 'M' o 'm' para la multiplicaci�n y 'D' o 'd' para la divisi�n.
	
Algoritmo practicos_ejercicio1

	// Definici�n de variables.
	definir operacion Como Caracter
	definir num1, num2 como entero

	// Inicializaci�n de variables.
	num1 = 0
	num2 = 0
	operacion = ""
	
	// Se informa premisa al usuario
	escribir "Se pedir� al usuario ingresar dos n�meros enteros y una letra para indicar"
	escribir "la operaci�n a realizar entre los mismos"
	escribir "([S]uma, [R]esta, [M]ultiplicaci�n o [D]ivisi�n."
	escribir "finalmente se presentar� el resultado de la operaci�n."
	
	// Preguntas al usuario para definir que prefiere tom�r.
	escribir "Ingrese el primer n�mero entero: "
	leer num1
	escribir "Ingrese el segundo n�mero entero: "
	leer num2
	escribir "Ingrese la operaci�n a realizar entre ambos n�meros."
	escribir "[S]uma, [R]esta, [M]ultiplicaci�n o [D]ivisi�n: "
	leer operacion
	
	segun operacion Hacer
		"S", "s": 
			escribir num1, " + ", num2, " = ", num1 + num2, "."
		"R", "r":
			escribir num1, " - ", num2, " = ", num1 - num2, "."
		"M", "m":
			escribir num1, " * ", num2, " = ", num1 * num2, "."
		"D", "d":
			si num2 <> 0 
				escribir num1, " / ", num2, " = ", num1 / num2, "."
			SiNo
				escribir "No se puede divid�r por cero."
			FinSi			
		de otro modo:
			escribir "La operaci�n no ha sido reconocida."
	FinSegun
	
FinAlgoritmo
