// Clase 5 - Teor�a - Ejercicio 1 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que pida al usuario el horario en el que se conect� al zoom. 
// Si ese horario est� entre la hora de ingreso y la hora de ingreso + los 15' de tardanza, 
// mostrar� un mensaje por pantalla que diga "Llegaste a tiempo, tienes presente". 
// Si el horario de ingreso supera ese l�mite, se mostrar� un mensaje por pantalla que diga 
// "Hoy tendr�s tardanza. Recuerda avisarle a tus coaches cuando llegar�s tarde. 
// Ma�ana te esperamos a tiempo, tu participaci�n en el equipo es VITAL"

Algoritmo teoria_ejercicio1

	// Definici�n de variables.
	definir hora, minuto, horaIngreso, minutoIngreso, horaDiferencia, minutoDiferencia como entero	
	definir horaValida, minutosValidos Como Logico
	
	// Inicializaci�n de variables.
	hora = 0
	minuto = 0
	horaIngreso = 0
	minutoIngreso = 0
	horaDiferencia = 0
	minutoDiferencia = 0
	horaValida = Falso
	minutosValidos = Falso
	
	// Se informa premisa al usuario
	escribir "Se pedira ingresar el horario de ingreso a clases en zoom"
	escribir "y el horario en el que el usuario se conect� al zoom."
	escribir "Se informar� si corresponde tardanza o ausente."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese la hora del horario pactado de ingreso al zoom (solo hora, de 0 a 23): "
	leer hora
	escribir "Ingrese los minutos del horario pactado de ingreso al zoom (solo los minutos, de 0 a 59): "
	leer minuto
	
	escribir "Ingrese la hora del horario que el usuario se conect� al zoom (solo hora, de 0 a 23): "
	leer horaIngreso
	escribir "Ingrese los minutos del horario que el usuario se conect� al zoom (solo los minutos, de 0 a 59): "
	leer minutoIngreso
	
	// Se calcula la respuesta correspondiente y se muestra por pantalla
	// valida que el horario est� entre 0 y 23
	horaValida = hora >= 0 y hora <= 23
	minutosValidos = minuto >=0 y minuto <= 59
	
	si no horaValida o no minutosValidos Entonces
		escribir "Error al ingresar datos."
	SiNo
		// Calcula que el horario de entrada est� entre los primeros 15 minutos..
		si (horaIngreso < hora ) entonces 
			horaDiferencia = 24 - hora + horaIngreso - 1
		SiNo
			horaDiferencia = horaIngreso - hora
		FinSi
		
		si (minutoIngreso < minuto) Entonces
			minutoDiferencia = 60 - minuto + minutoIngreso
		SiNo
			minutoDiferencia = minutoIngreso - minuto
		FinSi
		
		escribir "debug horaDiferencia: ", horaDiferencia, " y minutoDiferencia: ", minutoDiferencia
		
		si horaDiferencia > 0 Entonces
			escribir "Hoy tendr�s tardanza. Recuerda avisarle a tus coaches cuando llegar�s tarde."
		SiNo
			si minutoDiferencia <= 15 Entonces
				escribir "Llegaste a tiempo, tienes presente."
			FinSi
		FinSi
		
	FinSi
	
	// Pruebas:
	// 23 59 y 00 01	-> 2 min. Presente.
	// 10 10 y 11 11	-> 1 hs y 1 min. Ausente.
	// 10 10 y 10 11	-> 1 min. Presente.

FinAlgoritmo
