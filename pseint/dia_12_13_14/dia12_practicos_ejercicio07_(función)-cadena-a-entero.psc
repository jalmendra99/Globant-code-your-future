// Clase 12 - Pr�cticos - Ejercicio 7 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Dise�ar una funci�n que reciba un numero en forma de cadena y lo devuelva 
// como numero entero. El programa podr� recibir n�meros de hasta 3 d�gitos. 
// Nota: no poner n�meros con decimales ni letras. 
// Ejemplo: ingresando "100"(car�cter) debe convertirse en 100(entero).


// Principal.
Algoritmo ejercicio7
	
	// Definici�n de variables.
	Definir numeroCadena como cadena
	definir num Como Entero
	
	// Inicializaci�n de variables.
	numeroCadena = ""
	num = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero entero positivo de tres d�gitos, el mismo " sin saltar
	escribir "se ingresar� como una cadena, y luego se convertir� a entero usando " sin saltar
	escribir "la funci�n solicitada."
	
	// Se solicitan los datos al usuario.
	hacer
		escribir "Ingrese un n�mero entero de hasta tres c�fras: "
		leer num
	mientras que num > 999 o num < 0
	
	// Se convierte a cadena para poder probar la funci�n.
	numeroCadena = ConvertirATexto(num)
	
	// Se presenta la cadena al usuario
	// Se concatena con otra cadena para comprobar que es una cadena y no un n�mero.
	escribir "la cadena ingresada es ", concatenar(numeroCadena, ".")
	
	// Se usa la funci�n para volver a convert�r a n�mero.
	num = CadenaAEntero(numeroCadena)
	
	// y se presenta el n�mero en formato n�mero al usuario.
	// Se usa una suma para comprobar que es un n�mero y no un texto.
	escribir "El n�mero ingresado es ", num, ". Y ", num, " + 1 = ", num + 1, "."
	
FinAlgoritmo


// Funcion CadenaAEntero. 
// Retorna un n�mero entero, traducido de la frase ingresada.
Funcion retorno = CadenaAEntero (frase)
	definir retorno Como entero
	
	retorno = convertiranumero(frase)
	
fin funcion
