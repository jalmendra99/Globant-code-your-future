// Clase 21 - Extras Vectores - Ejercicio 1
// Fer V - jalmendra99@gmail.com
//
// Construir un programa que cree contrase�as de tama�o N, bajo las siguientes condiciones:
// 1.	El tama�o de la contrase�a se le debe pedir al usuario desde el programa principal
// 2.	La contrase�a debe tener combinaciones entre los siguientes tipos de caracter:
//	
// May�sculas: ABCDEFGHIJKLMNOPQRSTUVWXYZ
// Min�sculas:  abcdefghijklmnopqrstuvwxyz
// N�meros: 0123456789
// Caracteres especiales: !#$%*.:;&�+-,
//		
// Nota: Las combinaciones entre caracteres DEBEN ser aleatorias, por lo cual 
// no debe existir un orden entre cada uno; ejm: "1Lm!6Po$", 
// pues como se ve, la contrase�a sigue el orden n�mero, may�scula, min�scula, car�cter especial. 
// Recuerde la funci�n Aleatorio() de Pseint
//		
// 3.	Una funci�n debe devolver la contrase�a de tama�o N


// Principal.
Algoritmo clase21_extras_vectores_ejercicio1
	
	// Definicion de variables.
	definir password como cadena
	definir numCaracteres como entero
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero N para crear una contrase�a de ese tama�o."
	escribir "La misma contendr� combinaciones de los siguientes tipos de caracter:"
	escribir "May�sculas: ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	escribir "Min�sculas: abcdefghijklmnopqrstuvwxyz"
	escribir "N�meros: 0123456789"
	escribir "Caracteres especiales: !#$%*.:;&�+-,"
	
	// Se solicita al usuario ingresar el tama�o de la contrase�a.
	// Se fuerza a que el mismo est� entre 1 y 70 caracteres para simplificar comprobaciones.
	hacer
		escribir "Ingrese la cantidad de caracteres para la contrase�a (de 1 a 70):" sin saltar
		leer numCaracteres
	mientras que numCaracteres < 1 o numCaracteres > 70
		
	password = generaPassword(numCaracteres)
	
	// Se muestra la informaci�n solicitada por pantalla.
	escribir "La contrase�a generada es..."
	escribir password
	
FinAlgoritmo


// Funcion generaPassword(n)
// Retorna una contrase�a de tama�o "n"
funcion password = generaPassword (n)
	definir password como cadena
	
	definir posicion como entero	
	definir nroAzarCaracter, nroAzarCadena como entero
	definir caracterAzar como caracter
	
	definir caracteress como cadena
	Dimension caracteress[4]
	// Inicializaci�n de variables
	// (estas tendr�an que ser constantes)
	caracteress[0]="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	caracteress[1]="abcdefghijklmnopqrstuvwxyz"
	caracteress[2]="0123456789"
	caracteress[3]="!#$%*.:;&�+-,"	
	
	password = ""
	
	// Para las "n" posiciones de la password...
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		
		// Se elige al azar el n�mero de cadena (0=may�sculas, 1=min�sculas, 2=n�meros o 3=caracteres especiales).
		// Ej: nroAzarCadena=2 entonces la cadena elegida al azar es la de n�meros.
		nroAzarCadena = aleatorio(0,3)
		
		// Se elige un n�mero al azar entre 0 y la longit�d de la cadena previamente seleccionada al azar.
		// Ej: la cadena de n�meros tiene 10 caracteres, as� que 
		//   nroAzarCaracter ser� un n�mero elegido al azar entre 0 y 9.
		//   por ejemplo, nroAzarCaracter = 5   
		nroAzarCaracter = aleatorio(0, Longitud(caracteress[nroAzarCadena]) - 1 )
		
		// Se elige un caracter al azar, que forme parte de la cadena previamente 
		// seleccionada al azar (nroAzarCadena=2) y de la posici�n seleccionada 
		// al azar en esa cadena (nroAzarCaracter=5)
		// para el ejemplo. la cadena 2 es "0123456789", y en su posici�n 5
		// est� el caracter "5", as� que
		// en este ejemplo, caracterAzar = "5"
		caracterAzar = subcadena(caracteress[nroAzarCadena], nroAzarCaracter, nroAzarCaracter)
		
		// Agregar un caracter aleatorio a la password...
		// Ej: en el ejemplo, caracterAzar = "5"
		// as� que a lo que contenga la password, se le agrega el caracter "5".
		password = concatenar(password, caracterAzar)
	FinPara
	
FinFuncion
