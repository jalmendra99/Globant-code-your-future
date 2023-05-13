// Clase 5 - Extra - Ejercicio 2 - página 2
// Fer V - jalmendra99@gmail.com
//
// Una tienda ofrece para los meses de septiembre, octubre y noviembre un descuento 
// del 10% sobre el total de la compra que realiza un cliente. 
// Solicitar al usuario que ingrese un mes y el importe de la compra. 
// El programa debe calcular cuál es el monto total que se debe cobrar al cliente e imprimirlo por pantalla.

Algoritmo extra_ejercicio2
	
	// Definición de variables.
	definir mes como cadena
	definir importe, total Como Real
	definir mesConDescuento Como Logico
	
	// Inicialización de variables.
	mes = ""
	importe = 0
	total = 0
	mesConDescuento = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedira ingresar el importe de una compra y el mes en el que fué realizada."
	escribir "Se calculará un descuento del 10% si la misma se realizó en los meses de " sin saltar
	escribir "septiembre, octubre o noviembre."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el importe de la compra: " sin saltar
	leer importe
	escribir "Ingrese el mes de la compra: " sin saltar
	leer mes
	
	// Se verifica si corresponde descuento al mes ingresado
	mesConDescuento = (mayusculas(mes) == "SEPTIEMBRE") o (mayusculas(mes) == "OCTUBRE") o (mayusculas(mes) == "NOVIEMBRE")
	
	// Se muestra el mensaje correspondiente en pantalla.
	si mesConDescuento Entonces
		total = importe * 0.9
		imprimir "La compra tiene descuento."
	SiNo
		total = importe
		imprimir "La compra no tiene descuento."
	FinSi	
	
	escribir "El importe es de ", total
	
FinAlgoritmo