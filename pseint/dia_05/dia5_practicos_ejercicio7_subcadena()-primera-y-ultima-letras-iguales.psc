// Clase 5 - Pr�cticos - Ejercicio 7 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Continuando el ejercicio anterior, ahora se pedir� una frase o palabra 
// y se validara si la primera letra de la frase es igual a la �ltima letra de la frase. 
// Se deber� de imprimir un mensaje por pantalla que diga "CORRECTO", 
// en caso contrario, se deber� imprimir "INCORRECTO".

Algoritmo practicos_ejercicio7

	// Definici�n de variables.
	definir palabra como cadena
	definir primeraLetraIgualAUltima Como Logico
	
	// Inicializaci�n de variables.
	palabra = ""
	primeraLetraIgualAUltima = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedira ingresar una palabra y se validar� si la primera letra es una A."
	
	// Cargar palabra ingresada por el usuario en una variable.
	escribir "Ingrese una palabra: "
	leer palabra	
	
//////////	imprimir subcadena(palabra, longitud(palabra)-1, longitud(palabra)-1)
	
	// Se verifica la palabra ingresada.
	///////// Hacer m�s legible esta l�nea horrible.
	primeraLetraIgualAUltima = mayusculas(subcadena(palabra, 0, 0)) == mayusculas(subcadena(palabra, longitud(palabra)-1, longitud(palabra)-1))
	
	// Se muestra el mensaje correspondiente en pantalla.
	si primeraLetraIgualAUltima Entonces
		escribir "CORRECTO."
	SiNo
		escribir "INCORRECTO."
	FinSi	
	
FinAlgoritmo
