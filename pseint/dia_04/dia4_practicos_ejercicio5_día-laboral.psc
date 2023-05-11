// Clase 4 - Prácticos - Ejercicio 5 - página 2
// Fer V - jalmendra99@gmail.com
//
// Crea una aplicación que nos pida un día de la semana y que nos diga 
// si es un dia laboral o no.

Algoritmo extra_ejercicio5
	
	// Definición de variables.
	definir dia Como cadena
	definir diaLaboral Como Logico
	
	// Inicialización de variables.
	dia = ""
	diaLaboral = Falso
	
	// Se informa premisa al usuario
	escribir "Se informará si el día de la semana ingresado es laboral o no."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el día (en minúsculas y sin acentos): "
	leer dia
	
	diaLaboral = (dia == "lunes") o (dia == "martes") o (dia == "miercoles") o (dia == "jueves") o (dia == "viernes")
	
	// Si el número ingresado no tiene tres cifras, se muestra un error.
	si diaLaboral Entonces
		escribir "El día ingresado es laboral"		
	SiNo
		escribir "El día ingresado NO es laboral (o se han ingresado mayúsculas y/o acentos)."
	FinSi	
	
FinAlgoritmo