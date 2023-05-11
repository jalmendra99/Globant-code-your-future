// Clase 5 - Prácticos - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realiza un programa que sólo permita introducir los caracteres 'S' y 'N'. 
// Si el usuario ingresa alguno de esos dos caracteres se deberá de imprimir 
// un mensaje por pantalla que diga "CORRECTO", en caso contrario, se deberá imprimir "INCORRECTO".

Algoritmo practicos_ejercicio1

	// Definición de variables.
	definir caracterIngresado como caracter
	definir correcto Como Logico
	
	// Inicialización de variables.
	caracterIngresado = ""
	correcto = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedira ingresar el caracter S o N y se presentará un mensaje en caso correcto o incorrecto."
	
	// Cargar el caracter ingresado por el usuario en variables.
	escribir "Ingrese el caracter S o N (en mayúsculas o minúsculas): "
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
