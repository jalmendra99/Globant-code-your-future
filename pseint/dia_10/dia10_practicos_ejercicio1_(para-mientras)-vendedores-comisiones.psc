// Clase 10 - Pr�cticos - Ejercicio 1 - p�gina 2
// 2023-04-13 - Fer V. - jalmendra99@gmail.com
// 
// Una compa��a de seguros tiene contratados a n vendedores. 
// Cada vendedor realiza m�ltiples ventas a la semana. 
// La pol�tica de pagos de la compa��a es que cada vendedor 
// recibe un sueldo base m�s un 10% extra por comisiones de sus ventas. 
// El gerente de la compa��a desea saber, por un lado, cu�nto dinero deber� 
// pagar en la semana a cada vendedor por concepto de comisiones de las ventas realizadas, 
// y por otro lado, cu�nto deber� pagar a cada vendedor como sueldo total (sueldo base + comisiones). 
// Para cada vendedor ingresar cuanto es su sueldo base, cuantas ventas realiz� 
// y cuanto cobr� por cada venta.

Algoritmo practicos_ejercicio1
	
	// Definici�n de variables.
	definir vendedores, ventas, nroVendedor, nroVenta como entero
	definir sueldo, importeVenta, sumaVentas, comisiones como real
	
	// Inicializaci�n de variables.	
	vendedores = 0
	ventas = 0
	sueldo = 0
	importeVenta = 0	
	comisiones = 0
	
	// Se informa premisa al usuario.
	escribir sin saltar "Se pedir� ingresar la cantidad de vendedores "
	escribir sin saltar "y se proceder� a solicitar por cada vendedor "
	escribir sin saltar "cuanto es su sueldo base, cuantas ventas realiz�, y "
	escribir            "cuales fueron los importes de cada una de esas ventas."
	escribir sin saltar "Luego se calcularan las comisiones de las ventas que realiz� "
	escribir            "y su sueldo total (sueldo base + comisiones)"
	
	// Se fuerza a que el n�mero que se v� a ingresar sea positivo.
	hacer
		//Se ingresa la cantidad de vendedores.
		escribir "Ingrese la cantidad de vendedores: "
		leer vendedores
	mientras que vendedores <= 0
	
	// Por cada vendedor...
	para nroVendedor = 1 hasta vendedores con paso 1 Hacer
		
		// Se inicializa la sumatoria de ventas para cada vendedor.
		sumaVentas = 0
		
		escribir "Para el vendedor ", nroVendedor, ", ingrese el sueldo base: "
		leer sueldo
		
		// Se fuerza a que la cantidad de ventas ingresada sea positiva.
		hacer
			escribir "Para el vendedor ", nroVendedor, " ingrese la cantidad de ventas realizadas: "
			leer ventas
		mientras que ventas <= 0
		
		// Por cada venta...
		para nroVenta = 1 hasta ventas con paso 1 Hacer
			
			escribir "Ingrese cuanto se cobr� por la venta ", nroVenta, ": "
			leer importeVenta
			
			sumaVentas = sumaVentas + importeVenta
		FinPara
		
		// Se calculan las comisiones para cada empleado (el 10% de la sumatoria de sus ventas).
		comisiones = sumaVentas * 0.1
		
		// Se presenta la informaci�n solicitada por pantalla.
		escribir sin saltar "El vendedor ", nroVendedor, " cobrar� $", comisiones , " de comisiones "
		escribir "y $", sueldo + comisiones, " de sueldo total."
	FinPara	
	
FinAlgoritmo
