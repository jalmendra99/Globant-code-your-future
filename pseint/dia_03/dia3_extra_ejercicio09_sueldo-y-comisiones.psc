// Clase 3 - Extra - Ejercicio 9 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Un vendedor recibe un sueldo base m�s un 10% extra por comisi�n de sus ventas, 
// el vendedor desea saber cu�nto dinero obtendr� por concepto de comisiones 
// por las tres ventas que realiza en el mes y el total que recibir� 
// en el mes tomando en cuenta su sueldo base y comisiones.

Algoritmo extra_ejercicio9
	
	// Definici�n de variables.
	definir sueldo, venta1, venta2, venta3, comisiones Como real
	
	// Inicializaci�n de variables.
	sueldo = 0
	venta1 = 0		// Se podr�a usar un array para venta
	venta2 = 0
	venta3 = 0
	comisiones = 0
	
	// Se informa premisa al usuario
	escribir "Se calcular� el dinero obtenido por comisiones y el total " sin saltar
	escribir "incluyendo sueldo+comisiones basado en los datos ingresados."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el salario: "		// Se podr�a usar un loop con el array de venta
	leer sueldo
	escribir "Ingrese el importe de la primera venta: " sin saltar
	leer venta1
	escribir "Ingrese el importe de la segunda venta: " sin saltar
	leer venta2
	escribir "Ingrese el importe de la tercera venta: " sin saltar
	leer venta3
	
	// Calcular comisiones
	// comisiones = (venta1 * 0.1) + (venta2 * 0.1) + (venta3 * 0.1)	// Se podr�a calcular con un lup usando el array de venta
	comisiones = (venta1 + venta2 + venta3) * 0.1
	
	// mostrar en pantalla
	escribir "El dinero obtenido por comisiones es de: ", comisiones
	escribir "Y el total del mes incluyendo sueldo y comisiones es de: ", sueldo + comisiones
	
FinAlgoritmo
