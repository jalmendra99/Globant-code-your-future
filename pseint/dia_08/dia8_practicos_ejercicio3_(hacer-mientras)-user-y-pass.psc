// Clase 8 - Pr�cticos - Ejercicio 3 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que solicite al usuario su c�digo de usuario 
// (un n�mero entero mayor que cero) y su contrase�a num�rica 
// (otro n�mero entero positivo). El programa no le debe permitir continuar 
// hasta que introduzca como c�digo 1024 y como contrase�a 4567. 
// El programa finaliza cuando ingresa los datos correctos.

Algoritmo practicos_ejercicio3
	
	// Definici�n de variables.
	definir usuarioIngresado, claveIngresada, usuarioElegido, claveElegida como entero
	definir promedio como real
	
	// Inicializaci�n de variables.	
	usuarioIngresado = 0
	claveIngresada = 0
	usuarioElegido = 1024	// Determinado por el planteo.
	claveElegida = 4567		// Determinado por el planteo.
	
	// Se informa premisa al usuario.
	escribir "Se solicitar� ingresar usuario y clave (num�ricos y enteros)"
	escribir "Y solo se finalizar� cuando se haya elegido (usuario: 1024 y clave: 4567)."
	
	// Se continuar� solicitando ingresar usuario y clave
	// mientras que los ingresados no sean 1024 / 4567.
	hacer 		
		escribir "Ingrese un usuario (n�mero entero): " sin saltar
		leer usuarioIngresado
		escribir "Ingrese una clave (n�mero entero): " sin saltar
		leer claveIngresada		
	mientras que (usuarioIngresado <> usuarioElegido) o (claveIngresada <> claveElegida)
	
	escribir "El usuario y la clave ingresados son correctos!"
	
FinAlgoritmo
