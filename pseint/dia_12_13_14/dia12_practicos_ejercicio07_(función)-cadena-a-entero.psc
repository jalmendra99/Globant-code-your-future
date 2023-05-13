// Clase 12 - Prácticos - Ejercicio 7 - página 2
// Fer V - jalmendra99@gmail.com
//
// Diseñar una función que reciba un numero en forma de cadena y lo devuelva 
// como numero entero. El programa podrá recibir números de hasta 3 dígitos. 
// Nota: no poner números con decimales ni letras. 
// Ejemplo: ingresando "100"(carácter) debe convertirse en 100(entero).


// Principal.
Algoritmo ejercicio7
	
	// Definición de variables.
	Definir numeroCadena como cadena
	definir num Como Entero
	
	// Inicialización de variables.
	numeroCadena = ""
	num = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número entero positivo de tres dígitos, el mismo " sin saltar
	escribir "se ingresará como una cadena, y luego se convertirá a entero usando " sin saltar
	escribir "la función solicitada."
	
	// Se solicitan los datos al usuario.
	hacer
		escribir "Ingrese un número entero de hasta tres cífras: "
		leer num
	mientras que num > 999 o num < 0
	
	// Se convierte a cadena para poder probar la función.
	numeroCadena = ConvertirATexto(num)
	
	// Se presenta la cadena al usuario
	// Se concatena con otra cadena para comprobar que es una cadena y no un número.
	escribir "la cadena ingresada es ", concatenar(numeroCadena, ".")
	
	// Se usa la función para volver a convertír a número.
	num = CadenaAEntero(numeroCadena)
	
	// y se presenta el número en formato número al usuario.
	// Se usa una suma para comprobar que es un número y no un texto.
	escribir "El número ingresado es ", num, ". Y ", num, " + 1 = ", num + 1, "."
	
FinAlgoritmo


// Funcion CadenaAEntero. 
// Retorna un número entero, traducido de la frase ingresada.
Funcion retorno = CadenaAEntero (frase)
	definir retorno Como entero
	
	retorno = convertiranumero(frase)
	
fin funcion
