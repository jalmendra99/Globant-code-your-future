// Clase 4 - Pr�cticos - Ejercicio 5 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Crea una aplicaci�n que nos pida un d�a de la semana y que nos diga 
// si es un dia laboral o no.

Algoritmo extra_ejercicio5
	
	// Definici�n de variables.
	definir dia Como cadena
	definir diaLaboral Como Logico
	
	// Inicializaci�n de variables.
	dia = ""
	diaLaboral = Falso
	
	// Se informa premisa al usuario
	escribir "Se informar� si el d�a de la semana ingresado es laboral o no."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el d�a (en min�sculas y sin acentos): "
	leer dia
	
	diaLaboral = (dia == "lunes") o (dia == "martes") o (dia == "miercoles") o (dia == "jueves") o (dia == "viernes")
	
	// Si el n�mero ingresado no tiene tres cifras, se muestra un error.
	si diaLaboral Entonces
		escribir "El d�a ingresado es laboral"		
	SiNo
		escribir "El d�a ingresado NO es laboral (o se han ingresado may�sculas y/o acentos)."
	FinSi	
	
FinAlgoritmo