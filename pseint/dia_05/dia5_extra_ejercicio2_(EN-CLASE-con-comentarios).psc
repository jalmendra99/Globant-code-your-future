// Clase 5 - Extra - Ejercicio 2 - p�gina 2
// Fer V - jalmendra99@gmail.com

//Una tienda ofrece para los meses de septiembre, octubre y noviembre 
// un descuento del 10% sobre el total de la compra que realiza un cliente. 
// Solicitar al usuario que ingrese un mes y el importe de la compra. 
// El programa debe calcular cu�l es el monto total que se debe cobrar al cliente e imprimirlo por pantalla.

Algoritmo sin_titulo
	
	// Definici�n de variables.
	Definir importe, total Como Real
	definir mes Como Caracter
	definir mesConDescuento Como Logico
	
	// Inicializaci�n de variables.
	importe = 0
	total = 0
	mes = ""
	
	// Ingreso de valores por el usuario.
	escribir "Ingrese el importe de la compra: "
	leer importe	
	escribir "Ingrese el mes de la compra: "
	leer mes
	
	// Se calcula si corresponde descuento o no.
	mesConDescuento = minusculas(mes)=="septiembre" o minusculas(mes)=="octubre" o minusculas(mes) == "noviembre"
	
	si mesConDescuento entonces
		Escribir "El mes tiene descuento."
		total = importe * 0.9
	SiNo
		Escribir "El mes no tiene descuento."
		total = importe
	FinSi
	
	// Se muestra la informaci�n solicitada por pantalla.
	escribir "El monto toal que se debe cobrar al cliente es de ", total
	
FinAlgoritmo
