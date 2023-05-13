// Clase 8 - Prácticos - Ejercicio 3 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que solicite al usuario su código de usuario 
// (un número entero mayor que cero) y su contraseña numérica 
// (otro número entero positivo). El programa no le debe permitir continuar 
// hasta que introduzca como código 1024 y como contraseña 4567. 
// El programa finaliza cuando ingresa los datos correctos.

Algoritmo practicos_ejercicio3
	
	// Definición de variables.
	definir usuarioIngresado, claveIngresada, usuarioElegido, claveElegida como entero
	definir promedio como real
	
	// Inicialización de variables.	
	usuarioIngresado = 0
	claveIngresada = 0
	usuarioElegido = 1024	// Determinado por el planteo.
	claveElegida = 4567		// Determinado por el planteo.
	
	// Se informa premisa al usuario.
	escribir "Se solicitará ingresar usuario y clave (numéricos y enteros)"
	escribir "Y solo se finalizará cuando se haya elegido (usuario: 1024 y clave: 4567)."
	
	// Se continuará solicitando ingresar usuario y clave
	// mientras que los ingresados no sean 1024 / 4567.
	hacer 		
		escribir "Ingrese un usuario (número entero): " sin saltar
		leer usuarioIngresado
		escribir "Ingrese una clave (número entero): " sin saltar
		leer claveIngresada		
	mientras que (usuarioIngresado <> usuarioElegido) o (claveIngresada <> claveElegida)
	
	escribir "El usuario y la clave ingresados son correctos!"
	
FinAlgoritmo
