// Clase 6 - Extra - Ejercicio 8 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Condicionales anidados
// Una empresa tiene personal de distintas �reas 
// con distintas condiciones de contrataci�n y formas de pago. 
// El departamento de contabilidad necesita calcular los sueldos semanales 
// (lunes a viernes) en base a las 3 modalidades de sueldo:
// a) comisi�n 
// b) salario fijo + comisi�n, y 
// c) salario fijo 
// 
// a) Para la modalidad salario por comisi�n se debe ingresar 
// el monto total de las ventas realizadas en la semana, 
// y el 40% de ese monto total corresponde al salario del empleado. 
// 
// b) Para la condici�n de salario fijo + comisi�n, se debe ingresar 
// el valor que se paga por hora, la cantidad de horas trabajadas semanalmente 
// y el monto total de las ventas en esa semana. En este tipo de contrato 
// las horas extras no est�n contempladas y se fija como m�ximo 40 horas por semana. 
// La comisi�n por las ventas se calcula como 25% del valor de venta total. 
// 
// c) Finalmente, para la modalidad de salario fijo se debe ingresar 
// el valor que se paga por hora y la cantidad de horas trabajadas en la semana. 
// En el caso de exceder las 40 horas semanales, las horas extras se deben pagar 
// con un extra del 50% del valor de la hora. 
// 
// Realizar un men� de opciones para poder elegir el tipo de contrato que tiene un empleado.

Algoritmo extra_ejercicio8
	
	// Definici�n de variables.
	definir tipoDeSueldo Como Caracter
	definir ventas, salario, valorHora, horasSemana, horasExtra como real
	definir tipoCorrecto Como Logico
	
	// Inicializaci�n de variables.
	tipoDeSueldo = ""
	ventas = 0
	salario = 0
	valorHora = 0
	horasSemana = 0
	horasExtra = 0
	
	// Se informa premisa al usuario.
	escribir "Se pedir� ingresar el tipo de sueldo que tiene un empleado " sin saltar
	escribir "y dependiendo del tipo de sueldo, se solicitar�n m�s datos. " sin saltar
	escribir "Finalmente se calcular� el sueldo del empleado usando los datos ingresados."
	
	// Preguntando el tipo de sueldo
	escribir "Ingrese el tipo de sueldo que corresponde al empleado."
	escribir "Opciones: (a)Comisi�n, (b) Salario fijo + comisi�n, (c) Salario fijo."
	leer tipoDeSueldo
	
	// Se fuerza el caracter ingresado a may�sculas
	// para permitir al usuario ingresar las opciones: a, b, c, A, B, C.
	tipoDeSueldo = mayusculas(tipoDeSueldo)
	
	tipoCorrecto = Verdadero
	
	// Se valida la modalidad ingresada
	segun tipoDeSueldo
		"A":
			// a) Para la modalidad salario por comisi�n se debe ingresar 
			// el monto total de las ventas realizadas en la semana, 
			// y el 40% de ese monto total corresponde al salario del empleado. 
			imprimir "Ingrese el monto total de las ventas realizadas en la semana: "
			leer ventas
			salario = ventas * 0.4			
			
		"B":
			// b) Para la condici�n de salario fijo + comisi�n, se debe ingresar 
			// el valor que se paga por hora, la cantidad de horas trabajadas semanalmente 
			// y el monto total de las ventas en esa semana. En este tipo de contrato 
			// las horas extras no est�n contempladas y se fija como m�ximo 40 horas por semana. 
			// La comisi�n por las ventas se calcula como 25% del valor de venta total. 
			imprimir "Ingrese el valor que se paga por hora."
			leer valorHora
			imprimir "Ingrese la cantidad de horas trabajadas semanalmente."
			leer horasSemana
			imprimir "Ingrese el monto total de las ventas realizadas en la semana."
			leer ventas
			
			// se fija el m�ximo de horas a 40.
			si horasSemana > 40
				horasSemana = 40
			FinSi
			
			salario = (valorHora * horasSemana) + (ventas * 0.25)
			
		"C":
			// c) Finalmente, para la modalidad de salario fijo se debe ingresar 
			// el valor que se paga por hora y la cantidad de horas trabajadas en la semana. 
			// En el caso de exceder las 40 horas semanales, las horas extras se deben pagar 
			// con un extra del 50% del valor de la hora. 
			imprimir "Ingrese el valor que se paga por hora."
			leer valorHora
			imprimir "Ingrese la cantidad de horas trabajadas semanalmente."
			leer horasSemana
			
			// se calcula la cantidad de horas extra (las que superen 40).
			// y se fija el m�ximo de horas a 40.
			si horasSemana > 40
				horasExtra = horasSemana - 40
				horasSemana = 40
			FinSi
			
			salario = (valorHora * horasSemana) + (horasExtra * 0.5)
			
		de otro Modo: 
			escribir "No se reconoce la opci�n ingresada."	
			tipoCorrecto = Falso // Se usa para saber si el tipo de sueldo ingresado fu� correcto.
	fin segun
	
	// Se muestra el salario solo si el tipo de sueldo ingresado fu� correcto (a, b, c, A, B, C)
	si tipoCorrecto
		Imprimir "El salario es de ", salario, "."
	FinSi
	
FinAlgoritmo
