// Clase 5 - Extra - Ejercicio 4 - página 2
// Fer V - jalmendra99@gmail.com
//
// La empresa "Te llevo a todos lados" está destinada al alquiler de autos 
// y tiene un sistema de tarifa que consiste en cobrar el alquiler por hora. 
// Si el cliente devuelve el auto dentro de las 2 horas de uso el valor 
// que corresponde pagar es de $400 pesos y la nafta va de regalo. 
// Cuando el cliente regresa a la empresa pasadas las 2 horas, 
// se ingresan la cantidad de litros de nafta gastados y el tiempo transcurrido en horas. 
// Luego, se le cobra 40 pesos por litro de nafta gastado, y la hora se fracciona en minutos, 
// cobrando un total de $5,20 el minuto de uso. 
// Realice un programa que permita registrar esa información y el total a pagar por el cliente.

/////// rehacer usando formato de hora y minuto HH:MM (con funciones de conversión de texto a número)

Algoritmo extra_ejercicio4
	
	// Definición de variables.
	definir litros, minutos Como Entero
	definir importe como real
	definir horas como cadena
	
	// Inicialización de variables.
	horas = ""
	minutos = 0
	litros = 0
	importe = 0
	
	// Se informa premisa al usuario.
	escribir "Se pedira ingresar la cantidad de horas que se usó el auto alquilado y se calculará el importe a abonar."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese la cantidad de horas que se usó el auto alquilado (formato HH:MM): "
	leer horas
	
	// Se convierte horas a minutos.
	minutos = (ConvertirANumero(Subcadena(horas, 0, 1)) * 60 ) + ConvertirANumero(subcadena(horas, Longitud(horas) - 2, Longitud(horas) - 1) )
	
	// Se calcula el importe a abonar.
	// si la cantidad de horas es 2 o menos...
	si minutos <= 120 Entonces
		importe = 400
	SiNo
		// Se solicita ingresar la cantidad de litros de nafta gastados
		escribir "Ingrese la cantidad de litros de nafta gastados con el auto alquilado: "
		leer litros
		importe = (40 * litros) + (minutos * 5.20)
	FinSi
	
	// Se muestra el mensaje correspondiente en pantalla.
	
	imprimir "El importe a abonar es ", importe
	
FinAlgoritmo
