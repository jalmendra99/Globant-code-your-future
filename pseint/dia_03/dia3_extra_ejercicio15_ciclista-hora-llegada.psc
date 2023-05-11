// Clase 3 - Extra - Ejercicio 15 - página 3
// Fer V - jalmendra99@gmail.com
//
// Un ciclista parte de una ciudad A a las HH horas, MM minutos y SS segundos. 
// El tiempo de viaje hasta llegar a otra ciudad B es de T segundos. 
// Escribir un algoritmo que determine la hora de llegada a la ciudad B.

Algoritmo extra_ejercicio15
	
	// Definición de variables.
	definir partidaHoras, partidaMinutos, partidaSegundos, tiempoViajeEnSegundos Como entero
	definir partidaEnSegundos, llegadaEnSegundos como entero
	definir llegadaHoras, llegadaMinutos, llegadaSegundos como entero
	
	// Inicialización de variables.
	partidaHoras = 0
	partidaMinutos = 0
	partidaSegundos = 0
	tiempoViajeEnSegundos = 0
	partidaEnSegundos = 0
	llegadaEnSegundos = 0
	llegadaHoras = 0
	llegadaMinutos = 0
	llegadaSegundos = 0
	
	// Se informa premisa al usuario
	escribir "Se calculará la hora de llegada de un ciclista, basado en los datos ingresados"
	escribir "que serán la hora, minutos y segundos, más el tiempo de viaje en segundos."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese la hora de salida (solo la hora, de 00 a 23): "
	leer partidaHoras
	escribir "Ingrese los minutos de salida (solo los minutos, de 00 a 59): "
	leer partidaMinutos
	escribir "Ingrese los segundos de salida (solo los segundos, de 00 a 59): "
	leer partidaSegundos
	escribir "Ingrese el tiempo de viaje hasta llegar a destino (en segundos): "
	leer tiempoViajeEnSegundos
	
	// Calcular horas, min y segundos del tiempo de viaje y sumarlos al tiempo de partida
	
	// Primero convierto el horario de partida a segundos:
	partidaEnSegundos = (partidaHoras * 60 * 60) + (partidaMinutos * 60) + partidaSegundos
	
	// Luego le sumo el tiempo de viaje en segundos:
	llegadaEnSegundos = partidaEnSegundos + tiempoViajeEnSegundos
	
	// Luego convierto llegadaEnSegundos a horas, minutos y segundos
	llegadaHoras = trunc(llegadaEnSegundos / 3600)
	si llegadaHoras > 23 Entonces
		llegadaHoras = llegadaHoras - 24
	FinSi
	llegadaMinutos = trunc(llegadaEnSegundos % 3600 / 60)
	llegadaSegundos = (llegadaEnSegundos % 3600) % 60
	
	// Mostrar en pantalla
	escribir "El ciclista llegará a las : ", llegadaHoras, " horas, ", llegadaMinutos, " minutos y ", llegadaSegundos, " segundos."
	
	// Tests:
	// ej 3661 (1 hora, 1 min, 1 seg)
	// ej 3662 (1 hora, 1 min, 2 seg)
	// ej 3721 (1 hora, 2 min, 1 seg)
	// ej 7261 (2 horas, 1 min, 1 seg)
	//
	
FinAlgoritmo
