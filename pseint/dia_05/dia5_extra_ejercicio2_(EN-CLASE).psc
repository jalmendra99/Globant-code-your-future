// Clase 5 - Extra - Ejercicio 2 - página 2
// Fer V - jalmendra99@gmail.com

//Una tienda ofrece para los meses de septiembre, octubre y noviembre 
// un descuento del 10% sobre el total de la compra que realiza un cliente. 
// Solicitar al usuario que ingrese un mes y el importe de la compra. 
// El programa debe calcular cuál es el monto total que se debe cobrar al cliente e imprimirlo por pantalla.

Algoritmo sin_titulo
	
	Definir importe, total Como Real
	definir mes Como Caracter
	definir mesConDescuento Como Logico
	
	importe = 0
	total = 0
	mes = ""
	
	escribir "Ingrese el importe de la compra: " sin saltar
	leer importe
	
	escribir "Ingrese el mes de la compra: " sin saltar
	leer mes
	
	mesConDescuento = minusculas(mes)=="septiembre" o minusculas(mes)=="octubre" o minusculas(mes) == "noviembre"
	
	si mesConDescuento entonces
		Escribir "El mes tiene descuento."
		total = importe * 0.9
	SiNo
		Escribir "El mes no tiene descuento."
		total = importe
	FinSi
	
	escribir "El monto toal que se debe cobrar al cliente es de ", total
	
FinAlgoritmo
