// Clase 8 - Prácticos - Ejercicio 1 - página 2
// Fer V - jalmendra99@gmail.com
//
// Teniendo en cuenta que la clave es "eureka", escribir un programa 
// que nos pida ingresar una clave. Sólo se cuenta con 3 intentos para acertar, 
// si fallamos los 3 intentos se deberá mostrar un mensaje indicándonos 
// que hemos agotado esos 3 intentos.  
// Si acertamos la clave se deberá mostrar un mensaje que indique que se ha ingresado 
// al sistema correctamente.

Algoritmo practicos_ejercicio1
	
	// Definición de variables.
	definir claveElegida, claveIngresada como cadena
	definir intentos como entero
	
	// Inicialización de variables.	
	claveElegida = "eureka"
	claveIngresada = ""
	intentos = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitará ingresar una clave y se comparará con la que se conocía de antemano."
	escribir "Hint.. eureka."
	
	// Se continuará solicitando ingresar una clave al usuario mientras esta sea incorrecta, 
	// y los intentos sean <= 3.
	hacer 
		escribir "Ingrese una clave (restan ", 3 - intentos, " intentos): "
		leer claveIngresada
		intentos = intentos + 1
	mientras que (intentos < 3) y (claveIngresada <> claveElegida)
	
	// Se determina si la clave ingresada fué finalmente correcta o no
	// y se presenta la información solicitada por pantalla.
	si claveIngresada == claveElegida entonces
		escribir "Luego de ", intentos, " intentos, la clave ingresada es correcta!"
	SiNo
		escribir "No se ingresó la clave correcta luego de ", intentos, " intentos."
	fin si
	
FinAlgoritmo