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
	definir primeraLetraIgualAUltima Como Logico
	
	// Inicialización de variables.
	palabra = ""
	primeraLetraIgualAUltima = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedira ingresar una palabra y se validará si la primera letra es una A."
	
	// Cargar palabra ingresada por el usuario en una variable.
	escribir "Ingrese una palabra: "
	leer palabra	
	
//////////	imprimir subcadena(palabra, longitud(palabra)-1, longitud(palabra)-1)
	
	// Se verifica la palabra ingresada.
	///////// Hacer más legible esta línea horrible.
	primeraLetraIgualAUltima = mayusculas(subcadena(palabra, 0, 0)) == mayusculas(subcadena(palabra, longitud(palabra)-1, longitud(palabra)-1))
	
	// Se muestra el mensaje correspondiente en pantalla.
	si primeraLetraIgualAUltima Entonces
		escribir "CORRECTO."
	SiNo
		escribir "INCORRECTO."
	FinSi	
	
FinAlgoritmo
