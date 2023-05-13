// Clase 6 - Extra - Ejercicio 6 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Condicionales anidados
// Una verduler�a ofrece las manzanas con descuento seg�n la siguiente tabla:
// N� DE KILOS COMPRADOS  % DESCUENTO
// 0  0% 
// 2  10% 
// 2.01  15% 
// 5  20% 
// 5.01  ??  (asumo 25%)
// 10  ??    (asumo 30%)
// 10.01 en adelante  ??   (asumo 35%)
// Determinar cu�nto pagar�una persona que compre manzanas en esa verduler�a

Algoritmo extra_ejercicio6
	
	// Definici�n de variables.
	definir kilos, descuento Como real
	
	// Inicializaci�n de variables.
	kilos = 0
	descuento = 0
	
	// Se informa premisa al usuario.
	escribir "Se pedir� al usuario ingresar la cantidad de kilos de manzanas comprado " sin saltar
	escribir "y se calcular� el descuento correspondiente."
	
	// Cargando la cantidad de kilos de manzanas ingresado por el usuario.
	escribir "Ingrese la cantidad de kilos comprados: " sin saltar
	leer kilos
	
	// Se determina el descuento basado en los kilos ingresados.
	si kilos > 0 
		si kilos < 2
			descuento = 0
		sino // kilos >= 2
			si kilos < 2.01
				descuento = 10
			sino // kilos >= 2.01
				si kilos < 5
					descuento = 15
				sino // kilos >= 5
					si kilos < 5.01
						descuento = 20
					SiNo // kilos >= 5.01
						si kilos < 10
							descuento = 25
						SiNo // kilos >= 10
							si kilos < 10.01
								descuento = 30
							sino // kilos >= 10.01
								descuento = 35
							FinSi							
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	SiNo
		escribir "Ingrese una cantidad de kilos mayor a cero."
	FinSi
	
	// Se muestra la informaci�n solicitada
	imprimir "El descuento correspondiente a ", kilos, " kilos es de ", descuento, "%"
	
FinAlgoritmo
