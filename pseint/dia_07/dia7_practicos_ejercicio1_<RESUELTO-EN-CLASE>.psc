// Clase 7 - Pr�cticos - Ejercicio 1 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Ejercicio 1 p�gina 2
//
// Teniendo en cuenta que la clave es "eureka", escribir un programa 
// que nos pida ingresar una clave. S�lo se cuenta con 3 intentos para acertar, 
// si fallamos los 3 intentos se deber� mostrar un mensaje indic�ndonos 
// que hemos agotado esos 3 intentos.  
// Si acertamos la clave se deber� mostrar un mensaje que indique que se ha ingresado 
// al sistema correctamente

Algoritmo ejercicio1
	
	Definir clave Como Caracter
	Definir intentos Como Entero
	
	intentos = 0	
	
	Repetir
		intentos = intentos + 1
		
		Escribir  "Ingrese su clave"
		Leer clave
		
	Mientras Que intentos < 3 Y clave <> "eureka"
	
	si clave == "eureka"
		Escribir "La clave ingresada es correcta"
	SiNo
		Escribir "Agot� sus tres intentos para ingresar su clave"
	fin si
	
	
FinAlgoritmo