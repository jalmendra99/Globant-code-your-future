// Clase 8 - Pr�cticos - Ejercicio 1 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Teniendo en cuenta que la clave es "eureka", escribir un programa 
// que nos pida ingresar una clave. S�lo se cuenta con 3 intentos para acertar, 
// si fallamos los 3 intentos se deber� mostrar un mensaje indic�ndonos 
// que hemos agotado esos 3 intentos.  
// Si acertamos la clave se deber� mostrar un mensaje que indique que se ha ingresado 
// al sistema correctamente.

Algoritmo practicos_ejercicio1
	
	// Definici�n de variables.
	definir claveElegida, claveIngresada como cadena
	definir intentos como entero
	
	// Inicializaci�n de variables.	
	claveElegida = "eureka"
	claveIngresada = ""
	intentos = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitar� ingresar una clave y se comparar� con la que se conoc�a de antemano."
	escribir "Hint.. eureka."
	
	// Se continuar� solicitando ingresar una clave al usuario mientras esta sea incorrecta, 
	// y los intentos sean <= 3.
	hacer 
		escribir "Ingrese una clave (restan ", 3 - intentos, " intentos): "
		leer claveIngresada
		intentos = intentos + 1
	mientras que (intentos < 3) y (claveIngresada <> claveElegida)
	
	// Se determina si la clave ingresada fu� finalmente correcta o no
	// y se presenta la informaci�n solicitada por pantalla.
	si claveIngresada == claveElegida entonces
		escribir "Luego de ", intentos, " intentos, la clave ingresada es correcta!"
	SiNo
		escribir "No se ingres� la clave correcta luego de ", intentos, " intentos."
	fin si
	
FinAlgoritmo