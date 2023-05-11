// Clase 12 - Prácticos - Ejercicio 5 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar una función que reciba un numero ingresado por el usuario 
// y averigüe si el número es primo o no. 
// Un número es primo cuando es divisible sólo por 1 y por sí mismo, 
// por ejemplo: 2, 3, 5, 7, 11, 13, 17, etc. 
// Nota: recordar el uso del MOD.


// Principal.
Algoritmo ejercicio5
	
	// Definición de variables.
	Definir num como entero
	
	// Inicialización de variables.
	num = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará un número entero y se verificará si el mismo es primo o no."
	
	// Se solicitan los datos al usuario.
	escribir "Ingrese un número entero: "
	leer num
	
	// Se verifica si el número ingresado es primo utilizando la función solicitada, y 
	// se presenta la información al usuario.
	si EsPrimo(num) Entonces
		escribir "El número ", num, " ES primo."
	SiNo
		escribir "El número ", num, " NO ES primo."
	FinSi	
	
FinAlgoritmo


// Funcion EsPrimo. 
// Retorna verdadero si num es primo. Falso si no.
Funcion retorno = EsPrimo (num) 
	definir retorno Como Logico
	
	definir i como entero
	
	retorno = Verdadero
	
	// Para descartar los casos en los que el número es múltiplo de 1 y de si mismo se usa un Para 
	// desde 'num' -1 (para no incluír num) hasta 2 (para no incluír 1).
	// Si se encuentra cualquier otro múltiplo en ese rango, el número no será primo.
	para i = num -1 hasta 2 con paso -1 Hacer		
		
		si num mod i == 0 Entonces
			retorno = Falso
////////			escribir "Se encontró otro múltiplo de ", num, ". ", i, "."
		FinSi
		
	fin para	
	
fin funcion
