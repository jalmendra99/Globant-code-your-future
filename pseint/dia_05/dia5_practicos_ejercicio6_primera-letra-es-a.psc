// Clase 5 - Prácticos - Ejercicio 6 - página 2
// Fer V - jalmendra99@gmail.com
//
// Escriba un programa que pida una frase o palabra y valide si la primera letra 
// de esa frase es una 'A'.  Si la primera letra es una 'A', se deberá de imprimir
// un mensaje por pantalla que diga "CORRECTO", en caso contrario, se deberá 
// imprimir "INCORRECTO". Nota: investigar la función Subcadena de PseInt.

Algoritmo practicos_ejercicio6

	// Definición de variables.
	definir palabra como cadena
	definir primeraLetraEsA Como Logico
	
	// Inicialización de variables.
	palabra = ""
	primeraLetraEsA = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedira ingresar una palabra y se validará si la primera letra es una A."
	
	// Cargar la palabra ingresada por el usuario en una variable.
	escribir "Ingrese una palabra: "
	leer palabra	
	
	// Se verifica la palabra ingresada.
	primeraLetraEsA = mayusculas(subcadena(palabra, 0, 0)) == "A"
	
	// Se muestra el mensaje correspondiente en pantalla.
	si primeraLetraEsA Entonces
		escribir "CORRECTO."
	SiNo
		escribir "INCORRECTO."
	FinSi	
	
FinAlgoritmo