// Clase 12 - Pr�cticos - Ejercicio 5 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar una funci�n que reciba un numero ingresado por el usuario 
// y averig�e si el n�mero es primo o no. 
// Un n�mero es primo cuando es divisible s�lo por 1 y por s� mismo, 
// por ejemplo: 2, 3, 5, 7, 11, 13, 17, etc. 
// Nota: recordar el uso del MOD.


// Principal.
Algoritmo ejercicio5
	
	// Definici�n de variables.
	Definir num como entero
	
	// Inicializaci�n de variables.
	num = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� un n�mero entero y se verificar� si el mismo es primo o no."
	
	// Se solicitan los datos al usuario.
	escribir "Ingrese un n�mero entero: "
	leer num
	
	// Se verifica si el n�mero ingresado es primo utilizando la funci�n solicitada, y 
	// se presenta la informaci�n al usuario.
	si EsPrimo(num) Entonces
		escribir "El n�mero ", num, " ES primo."
	SiNo
		escribir "El n�mero ", num, " NO ES primo."
	FinSi	
	
FinAlgoritmo


// Funcion EsPrimo. 
// Retorna verdadero si num es primo. Falso si no.
Funcion retorno = EsPrimo (num) 
	definir retorno Como Logico
	
	definir i como entero
	
	retorno = Verdadero
	
	// Para descartar los casos en los que el n�mero es m�ltiplo de 1 y de si mismo se usa un Para 
	// desde 'num' -1 (para no inclu�r num) hasta 2 (para no inclu�r 1).
	// Si se encuentra cualquier otro m�ltiplo en ese rango, el n�mero no ser� primo.
	para i = num -1 hasta 2 con paso -1 Hacer		
		
		si num mod i == 0 Entonces
			retorno = Falso
////////			escribir "Se encontr� otro m�ltiplo de ", num, ". ", i, "."
		FinSi
		
	fin para	
	
fin funcion
