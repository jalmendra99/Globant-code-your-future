// Clase 21 - Extras Vectores - Ejercicio 1
// Fer V - jalmendra99@gmail.com
//
// Construir un programa que cree contraseñas de tamaño N, bajo las siguientes condiciones:
// 1.	El tamaño de la contraseña se le debe pedir al usuario desde el programa principal
// 2.	La contraseña debe tener combinaciones entre los siguientes tipos de caracter:
//	
// Mayúsculas: ABCDEFGHIJKLMNOPQRSTUVWXYZ
// Minúsculas:  abcdefghijklmnopqrstuvwxyz
// Números: 0123456789
// Caracteres especiales: !#$%*.:;&¡+-,
//		
// Nota: Las combinaciones entre caracteres DEBEN ser aleatorias, por lo cual 
// no debe existir un orden entre cada uno; ejm: "1Lm!6Po$", 
// pues como se ve, la contraseña sigue el orden número, mayúscula, minúscula, carácter especial. 
// Recuerde la función Aleatorio() de Pseint
//		
// 3.	Una función debe devolver la contraseña de tamaño N


// Principal.
Algoritmo clase21_extras_vectores_ejercicio1
	
	// Definicion de variables.
	definir password como cadena
	definir numCaracteres como entero
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número N para crear una contraseña de ese tamaño."
	escribir "La misma contendrá combinaciones de los siguientes tipos de caracter:"
	escribir "Mayúsculas: ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	escribir "Minúsculas: abcdefghijklmnopqrstuvwxyz"
	escribir "Números: 0123456789"
	escribir "Caracteres especiales: !#$%*.:;&¡+-,"
	
	// Se solicita al usuario ingresar el tamaño de la contraseña.
	// Se fuerza a que el mismo esté entre 1 y 70 caracteres para simplificar comprobaciones.
	hacer
		escribir "Ingrese la cantidad de caracteres para la contraseña (de 1 a 70):" sin saltar
		leer numCaracteres
	mientras que numCaracteres < 1 o numCaracteres > 70
		
	password = generaPassword(numCaracteres)
	
	// Se muestra la información solicitada por pantalla.
	escribir "La contraseña generada es..."
	escribir password
	
FinAlgoritmo


// Funcion generaPassword(n)
// Retorna una contraseña de tamaño "n"
funcion password = generaPassword (n)
	definir password como cadena
	
	definir posicion como entero	
	definir nroAzarCaracter, nroAzarCadena como entero
	definir caracterAzar como caracter
	
	definir caracteress como cadena
	Dimension caracteress[4]
	// Inicialización de variables
	// (estas tendrían que ser constantes)
	caracteress[0]="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	caracteress[1]="abcdefghijklmnopqrstuvwxyz"
	caracteress[2]="0123456789"
	caracteress[3]="!#$%*.:;&¡+-,"	
	
	password = ""
	
	// Para las "n" posiciones de la password...
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		
		// Se elige al azar el número de cadena (0=mayúsculas, 1=minúsculas, 2=números o 3=caracteres especiales).
		// Ej: nroAzarCadena=2 entonces la cadena elegida al azar es la de números.
		nroAzarCadena = aleatorio(0,3)
		
		// Se elige un número al azar entre 0 y la longitúd de la cadena previamente seleccionada al azar.
		// Ej: la cadena de números tiene 10 caracteres, así que 
		//   nroAzarCaracter será un número elegido al azar entre 0 y 9.
		//   por ejemplo, nroAzarCaracter = 5   
		nroAzarCaracter = aleatorio(0, Longitud(caracteress[nroAzarCadena]) - 1 )
		
		// Se elige un caracter al azar, que forme parte de la cadena previamente 
		// seleccionada al azar (nroAzarCadena=2) y de la posición seleccionada 
		// al azar en esa cadena (nroAzarCaracter=5)
		// para el ejemplo. la cadena 2 es "0123456789", y en su posición 5
		// está el caracter "5", así que
		// en este ejemplo, caracterAzar = "5"
		caracterAzar = subcadena(caracteress[nroAzarCadena], nroAzarCaracter, nroAzarCaracter)
		
		// Agregar un caracter aleatorio a la password...
		// Ej: en el ejemplo, caracterAzar = "5"
		// así que a lo que contenga la password, se le agrega el caracter "5".
		password = concatenar(password, caracterAzar)
	FinPara
	
FinFuncion
