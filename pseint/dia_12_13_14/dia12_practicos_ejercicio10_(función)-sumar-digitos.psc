// Clase 12 - Prácticos - Ejercicio 10 - página 3
// Fer V - jalmendra99@gmail.com
//
// Realizar una función que calcule la suma de los dígitos de un número.
// Ejemplo: 25 = 2 + 5 = 7
// Nota: Para obtener el último número de un digito de 2 cifras o más 
// debemos pensar en el resto de una división entre 10. 
// Recordar el uso de la función Mod y Trunc.


// Principal.
Algoritmo ejercicio10
	
	// Definición de variables.
	definir num, suma Como Entero
	
	// Inicialización de variables.
	num = 0
	suma = 0
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se solicitará ingresar un número entero de dos dígitos y "
	escribir            "se sumarán los dos dígitos que componen ese número."
	
	// Se solicita la información al usuario.	
	// Se fuerza a que el número ingresado contenga dos dígitos.
	Hacer
		escribir "Ingrese un número entero positivo de dos dígitos: "
		leer num		
	Mientras Que num > 99 o num < 10
		
	// Se calcula la suma de los dos dígitos del número ingresado usando la función solicitada.
	suma = SumarDigitos(num)
	
	// Y se presenta el resultado por pantalla.
	escribir "La suma de los dos dígitos de ", num, " dá como resultado: ", suma, "."
	
FinAlgoritmo


// Función SumarDigitos
// Retorna la suma de los dos dígitos que componen un número entero.
Funcion retorno = SumarDigitos (num)
	definir retorno Como entero
	
	definir unidad, decena Como Entero
	
	unidad = (num mod 10)
	decena = trunc(num / 10)
	
	escribir "Sumando ", decena, " + ", unidad, "..."
	retorno = decena + unidad
	
fin funcion
