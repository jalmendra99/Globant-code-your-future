// Clase 5 - Prácticos - Ejercicio 3 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que pida introducir solo frases o palabras de 6 caracteres. 
// Si el usuario ingresa una frase o palabra de 6 caracteres se deberá de imprimir 
// un mensaje por pantalla que diga "CORRECTO", en caso contrario, 
// se deberá imprimir "INCORRECTO".  Nota: investigar la función Longitud() de PseInt.

Algoritmo practicos_ejercicio3
	
	// Definición de variables.
	definir palabra como cadena
	definir tieneSeisCaracteres Como Logico
	
	// Inicialización de variables.
	palabra = ""
	tieneSeisCaracteres = Falso

	// Se informa premisa al usuario.
	escribir "Se pedira ingresar una palabra y se mostrará el mensaje CORRECTO si tiene 6 caracteres, o"	
	escribir "INCORRECTO si no tiene 6 caracteres."
	
	// Cargar palabra ingresada por el usuario en una variable.
	escribir "Ingrese una palabra de 6 caracteres (o no): "
	leer palabra
	
	// Se verifica la palabra ingresada.
	tieneSeisCaracteres = (longitud(palabra)==6)
	
	// Se muestra el mensaje correspondiente en pantalla.
	si tieneSeisCaracteres Entonces
		escribir "CORRECTO."
	SiNo
		escribir "INCORRECTO."
	FinSi	
	
FinAlgoritmo
