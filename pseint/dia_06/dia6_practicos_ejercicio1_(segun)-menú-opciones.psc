// Clase 6 - Prácticos - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Condicional múltiple
// Construir un programa que simule un menú de opciones para realizar 
// las cuatro operaciones aritméticas básicas 
// (suma, resta, multiplicación y división) 
// con dos valores numéricos enteros. 
// El usuario, además, debe especificar la operación 
// con el primer carácter de la operación que desea realizar: 
// 'S' o 's' para la suma, 'R' o 'r' para la resta, 
// 'M' o 'm' para la multiplicación y 'D' o 'd' para la división.
	
Algoritmo practicos_ejercicio1

	// Definición de variables.
	definir operacion Como Caracter
	definir num1, num2 como entero

	// Inicialización de variables.
	num1 = 0
	num2 = 0
	operacion = ""
	
	// Se informa premisa al usuario
	escribir "Se pedirá al usuario ingresar dos números enteros y una letra para indicar"
	escribir "la operación a realizar entre los mismos"
	escribir "([S]uma, [R]esta, [M]ultiplicación o [D]ivisión."
	escribir "finalmente se presentará el resultado de la operación."
	
	// Preguntas al usuario para definir que prefiere tomár.
	escribir "Ingrese el primer número entero: "
	leer num1
	escribir "Ingrese el segundo número entero: "
	leer num2
	escribir "Ingrese la operación a realizar entre ambos números."
	escribir "[S]uma, [R]esta, [M]ultiplicación o [D]ivisión: "
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
				escribir "No se puede dividír por cero."
			FinSi			
		de otro modo:
			escribir "La operación no ha sido reconocida."
	FinSegun
	
FinAlgoritmo
