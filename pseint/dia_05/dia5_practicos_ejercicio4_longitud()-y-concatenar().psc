// Clase 5 - Pr�cticos - Ejercicio 4 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que pida una frase o palabra y si la frase o palabra 
// es de 4 caracteres de largo, el programa le concatenara un signo de exclamaci�n 
// al final, y si no es de 4 caracteres el programa le concatenara un signo de 
// interrogaci�n al final. El programa mostrar� despu�s la frase final. 
// Nota: investigar la funci�n Longitud() y Concatenar() de PseInt.
	
Algoritmo practicos_ejercicio4
	
	// Definici�n de variables.
	definir palabra como cadena
	definir tieneCuatroCaracteres Como Logico
	
	// Inicializaci�n de variables.
	palabra = ""
	tieneCuatroCaracteres = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedira ingresar una palabra y se agregar� al final de la misma el caracter..."	
	escribir "! si la palabra es de 4 caracteres, o"
	escribir "? si la palabra NO es de 4 caracteres."
	
	// Cargar palabra ingresada por el usuario en una variable.
	escribir "Ingrese una palabra de 4 caracteres (o no): "
	leer palabra
	
	// Se verifica la palabra ingresada.
	tieneCuatroCaracteres = (longitud(palabra)==4)
	
	// Se muestra el mensaje correspondiente en pantalla.
	si tieneCuatroCaracteres Entonces
		escribir concatenar(palabra, "!")
	SiNo
		escribir concatenar(palabra, "?")
	FinSi	
	
FinAlgoritmo
