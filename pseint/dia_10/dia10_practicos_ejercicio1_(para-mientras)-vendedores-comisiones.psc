// Clase 10 - Prácticos - Ejercicio 1 - página 2
// 2023-04-13 - Fer V. - jalmendra99@gmail.com
// 
// Una compañía de seguros tiene contratados a n vendedores. 
// Cada vendedor realiza múltiples ventas a la semana. 
// La política de pagos de la compañía es que cada vendedor 
// recibe un sueldo base más un 10% extra por comisiones de sus ventas. 
// El gerente de la compañía desea saber, por un lado, cuánto dinero deberá 
// pagar en la semana a cada vendedor por concepto de comisiones de las ventas realizadas, 
// y por otro lado, cuánto deberá pagar a cada vendedor como sueldo total (sueldo base + comisiones). 
// Para cada vendedor ingresar cuanto es su sueldo base, cuantas ventas realizó 
// y cuanto cobró por cada venta.

Algoritmo practicos_ejercicio1
	
	// Definición de variables.
	definir vendedores, ventas, nroVendedor, nroVenta como entero
	definir sueldo, importeVenta, sumaVentas, comisiones como real
	
	// Inicialización de variables.	
	vendedores = 0
	ventas = 0
	sueldo = 0
	importeVenta = 0	
	comisiones = 0
	
	// Se informa premisa al usuario.
	escribir sin saltar "Se pedirá ingresar la cantidad de vendedores "
	escribir sin saltar "y se procederá a solicitar por cada vendedor "
	escribir sin saltar "cuanto es su sueldo base, cuantas ventas realizó, y "
	escribir            "cuales fueron los importes de cada una de esas ventas."
	escribir sin saltar "Luego se calcularan las comisiones de las ventas que realizó "
	escribir            "y su sueldo total (sueldo base + comisiones)"
	
	// Se fuerza a que el número que se vá a ingresar sea positivo.
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
			
			escribir "Ingrese cuanto se cobró por la venta ", nroVenta, ": "
			leer importeVenta
			
			sumaVentas = sumaVentas + importeVenta
		FinPara
		
		// Se calculan las comisiones para cada empleado (el 10% de la sumatoria de sus ventas).
		comisiones = sumaVentas * 0.1
		
		// Se presenta la información solicitada por pantalla.
		escribir sin saltar "El vendedor ", nroVendedor, " cobrará $", comisiones , " de comisiones "
		escribir "y $", sueldo + comisiones, " de sueldo total."
	FinPara	
	
FinAlgoritmo
