// Clase 5 - Pr�cticos - Ejercicio 1 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realiza un programa que s�lo permita introducir los caracteres 'S' y 'N'. 
// Si el usuario ingresa alguno de esos dos caracteres se deber� de imprimir 
// un mensaje por pantalla que diga "CORRECTO", en caso contrario, se deber� imprimir "INCORRECTO".

Algoritmo practicos_ejercicio1

	// Definici�n de variables.
	definir caracterIngresado como caracter
	definir correcto Como Logico
	
	// Inicializaci�n de variables.
	caracterIngresado = ""
	correcto = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedira ingresar el caracter S o N y se presentar� un mensaje en caso correcto o incorrecto."
	
	// Cargar el caracter ingresado por el usuario en variables.
	escribir "Ingrese el caracter S o N (en may�sculas o min�sculas): "
	leer caracterIngresado
	
	// Se verifica el caracter ingresado.
	correcto = ((mayusculas(caracterIngresado) == "S") o (mayusculas(caracterIngresado) == "N"))
	
	// Se muestra el mensaje correspondiente en pantalla.
	si correcto Entonces
		escribir "CORRECTO."
	SiNo
		escribir "INCORRECTO."
	FinSi	
	
FinAlgoritmo
