// Clase 3 - Extra - Ejercicio 10 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Una tienda ofrece un descuento del 15% sobre el total de la compra 
// y un cliente desea saber cu�nto deber� pagar finalmente por su compra.

Algoritmo extra_ejercicio10
	
	// Definici�n de variables.
	definir importe Como real
	
	// Inicializaci�n de variables.
	importe = 0
	
	// Se informa premisa al usuario
	escribir "Se calcular� el 15% de descuento sobre el importe ingresado."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el importe: " sin saltar
	leer importe
	
	// Calcular importe y mostrar en pantalla
	escribir "Por su compra de ", importe, " deber� abonar ", importe - (importe * 0.15)
	
FinAlgoritmo
