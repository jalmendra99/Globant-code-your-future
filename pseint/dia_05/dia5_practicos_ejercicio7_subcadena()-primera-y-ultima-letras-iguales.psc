// Clase 5 - Prácticos - Ejercicio 7 - página 2
// Fer V - jalmendra99@gmail.com
//
// Continuando el ejercicio anterior, ahora se pedirá una frase o palabra 
// y se validara si la primera letra de la frase es igual a la última letra de la frase. 
// Se deberá de imprimir un mensaje por pantalla que diga "CORRECTO", 
// en caso contrario, se deberá imprimir "INCORRECTO".

Algoritmo practicos_ejercicio7

	// Definición de variables.
	definir palabra como cadena
	definir primeraLetra, ultimaLetra Como Caracter
	definir primeraLetraIgualAUltima Como Logico
	
	// Inicialización de variables.
	palabra = ""
	primeraLetraIgualAUltima = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedira ingresar una palabra y se validará si la primera letra es una A."
	
	// Cargar palabra ingresada por el usuario en una variable.
	escribir "Ingrese una palabra: "
	leer palabra	
	
///////////////// INFO.	
//////////	imprimir subcadena(palabra, longitud(palabra)-1, longitud(palabra)-1)
	
	// Se toma la primera letra de la cadena "palabra".
	// De la "palabra" se toma una subcadena que va desde la posición 0 hasta la 0.
	// O sea la primera letra de la cadena "palabra".
	primeraLetra = mayusculas(subcadena(palabra, 0, 0)) 
	
	// Se toma la última letra de la cadena "palabra".
	// De la "palabra" se toma una subcadena que va desde su última posición, 
	// hasta su última posición - longitud(palabra) -1
	// o sea la última letra de la cadena "palabra".
	ultimaLetra = mayusculas(subcadena(palabra, longitud(palabra)-1, longitud(palabra)-1))
	
	// Se verifica si la primeraLetra y la ultimaLetra son iguales o no.
	primeraLetraIgualAUltima = primeraLetra == ultimaLetra
	
	// Se muestra el mensaje correspondiente en pantalla.
	si primeraLetraIgualAUltima Entonces
		escribir "CORRECTO."
	SiNo
		escribir "INCORRECTO."
	FinSi	
	
FinAlgoritmo
