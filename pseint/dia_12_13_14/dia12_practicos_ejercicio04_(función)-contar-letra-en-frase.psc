// Clase 12 - Pr�cticos - Ejercicio 4 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. 
// La funci�n debe devolver la cantidad de veces que encontr� la letra. 
// Nota: recordar el uso de la funci�n Subcadena().


// Principal.
Algoritmo ejercicio4
	
	// Definici�n de variables.
	Definir letraIngresada Como Caracter
	definir fraseIngresada Como cadena 	 
	definir cantidad como entero
	
	// Inicializaci�n de variables.
	letraIngresada = ""
	fraseIngresada = ""
	cantidad = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar�n una letra y una frase y se verificar� cuantas veces se repite la letra en la frase."	
	
	// Se solicitan los datos al usuario.
	escribir "Ingrese una letra: "
	leer letraIngresada
	escribir "Ingrese una frase: "
	leer fraseIngresada
	
	// Se calcula la cantidad de veces que la letra est� inclu�da en la frase.
	cantidad = LetraEnFrase(letraIngresada, fraseIngresada)
	
	// se presenta la informaci�n al usuario.
	escribir "La letra ", letraIngresada, " se repite ", cantidad , " veces."
	
FinAlgoritmo


// Funcion LetraEnFrase. 
// Retorna la cantidad de veces que una 'letra' est� inclu�da en una 'frase'.
Funcion retorno = LetraEnFrase (letra, frase) 
	definir retorno Como entero
	
	definir i como entero
	definir letraActual como caracter
	
	retorno = 0
	letraActual = ""
	
	// Para cada letra 'i' en la cadena 'frase'
	para i = 0 hasta Longitud(frase) - 1 con paso 1 Hacer
		
		// Se extrae la letra que est� en la posici�n 'i' de la frase
		letraActual = subcadena(frase, i, i)		
		
		// Si la letra de la posici�n 'i' es igual a la letra que se busca..
		si mayusculas(letraActual) == mayusculas(letra) Entonces
			// Se suma 1 a retorno, donde quedar� la cantidad de repeticiones de la letra en la frase.
			retorno = retorno + 1
		FinSi
	FinPara
	
fin funcion
