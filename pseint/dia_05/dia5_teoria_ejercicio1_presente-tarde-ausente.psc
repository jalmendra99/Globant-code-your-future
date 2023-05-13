// Clase 5 - Teoría - Ejercicio 1 - página 3
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que pida al usuario el horario en el que se conectó al zoom. 
// Si ese horario está entre la hora de ingreso y la hora de ingreso + los 15' de tardanza, 
// mostrará un mensaje por pantalla que diga "Llegaste a tiempo, tienes presente". 
// Si el horario de ingreso supera ese límite, se mostrará un mensaje por pantalla que diga 
// "Hoy tendrás tardanza. Recuerda avisarle a tus coaches cuando llegarás tarde. 
// Mañana te esperamos a tiempo, tu participación en el equipo es VITAL"

Algoritmo teoria_ejercicio1

	// Definición de variables.
	definir horaPactada, minutoPactado, horaIngreso, minutoIngreso como entero	
	definir horarioPactadoEnMinutos, horarioIngresoEnMinutos, DiferenciaEnMinutos como entero
	
	// Se informa premisa al usuario
	escribir "Se pedira ingresar el horario de ingreso a clases en zoom " sin saltar
	escribir "y el horario en el que el usuario se conectó al zoom."
	escribir "Se informará si corresponde tardanza o ausente."
	
	// Cargar datos ingresados por el usuario en variables.
	hacer
		escribir "Ingrese el horario pactado de ingreso al zoom."
		escribir "Hora (de 0 a 23): " sin saltar
		leer horaPactada
	mientras que horaPactada < 0 o horaPactada > 23
	
	hacer
		escribir "Minutos (de 0 a 59): " sin saltar
		leer minutoPactado
	mientras que minutoPactado < 0 o minutoPactado > 59
	
	hacer
		escribir "Ingrese del horario en que el usuario se conectó al zoom."
		escribir "Hora (de 0 a 23): " sin saltar	
		leer horaIngreso
	mientras que horaIngreso < 0 o horaIngreso > 23
	
	hacer
		escribir "Minutos (de 0 a 59): " sin saltar
		leer minutoIngreso
	mientras que minutoIngreso < 0 o minutoIngreso > 59
	
	// Inicialización de variables.
	horarioPactadoEnMinutos = 0
	horarioIngresoEnMinutos = 0
	horarioDiferenciaEnMinutos = 0

	// convierte horario pactado a minutos:
	horarioPactadoEnMinutos = (horaPactada * 60) + minutoPactado
	
	// convierte horario de ingreso a minutos:
	horarioIngresoEnMinutos = (horaIngreso * 60) + minutoIngreso
	
	// Se asume que si la HORA de ingreso es menor a la horaPactada
	// entonces cambió el día, y se toma la diferencia hacia adelante y no hacia atrás.
	// ej: horaPactada: 23:59 ; hora de ingreso 00:00 
	//    (resulta en 1 minuto de diferencia, y no en 23:59 horas)
	// Por lo tanto, se suma un día al horario de ingreso, para poder calcular bien las diferencias.
	si horarioIngresoEnMinutos < horarioPactadoEnMinutos Entonces
		horarioIngresoEnMinutos = horarioIngresoEnMinutos + (24 * 60)
	FinSi
	
	// Se calcula la diferencia en minutos entre el horario de ingreso y el horario pactado.
	DiferenciaEnMinutos = horarioIngresoEnMinutos - horarioPactadoEnMinutos
	
//////	//////// INFO.
//////	escribir "minutos de diferencia: ", horarioDiferenciaEnMinutos
	
	si DiferenciaEnMinutos > 15 Entonces
		escribir "Hoy tendrás tardanza. Recuerda avisarle a tus coaches cuando llegarás tarde."
	SiNo
		escribir "Llegaste a tiempo, tienes presente."			
	FinSi	

FinAlgoritmo

// Pruebas:
// 22 00 y 22 00	-> 0 hs 0 min. Presente.
// 23 59 y 00 01	-> 0 hs 2 min. Presente.
// 22 59 y 23 01	-> 0 hs 2 min. Presente.	
// 10 10 y 10 11	-> 0 hs 1 min. Presente.
// 10 10 y 11 09	-> 0 hs 59 min. Ausente.	
// 20 00 y 22 05	-> 2 hs 5 min. Ausente.    (125 min)
// 20 05 y 22 00	-> 1 hs 55 min. Ausente.   (115 min)
