// Clase 12 - Pr�cticos - Ejercicio 10 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Realizar una funci�n que calcule la suma de los d�gitos de un n�mero.
// Ejemplo: 25 = 2 + 5 = 7
// Nota: Para obtener el �ltimo n�mero de un digito de 2 cifras o m�s 
// debemos pensar en el resto de una divisi�n entre 10. 
// Recordar el uso de la funci�n Mod y Trunc.


// Principal.
Algoritmo ejercicio10
	
	// Definici�n de variables.
	definir num, suma Como Entero
	
	// Inicializaci�n de variables.
	num = 0
	suma = 0
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se solicitar� ingresar un n�mero entero de dos d�gitos y "
	escribir            "se sumar�n los dos d�gitos que componen ese n�mero."
	
	// Se solicita la informaci�n al usuario.	
	// Se fuerza a que el n�mero ingresado contenga dos d�gitos.
	Hacer
		escribir "Ingrese un n�mero entero positivo de dos d�gitos: "
		leer num		
	Mientras Que num > 99 o num < 10
		
	// Se calcula la suma de los dos d�gitos del n�mero ingresado usando la funci�n solicitada.
	suma = SumarDigitos(num)
	
	// Y se presenta el resultado por pantalla.
	escribir "La suma de los dos d�gitos de ", num, " d� como resultado: ", suma, "."
	
FinAlgoritmo


// Funci�n SumarDigitos
// Retorna la suma de los dos d�gitos que componen un n�mero entero.
Funcion retorno = SumarDigitos (num)
	definir retorno Como entero
	
	definir unidad, decena Como Entero
	
	unidad = (num mod 10)
	decena = trunc(num / 10)
	
	escribir "Sumando ", decena, " + ", unidad, "..."
	retorno = decena + unidad
	
fin funcion
