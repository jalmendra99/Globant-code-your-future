// Clase 15 - Pr�cticos - Ejercicio 8 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla 
// la fecha anterior. Para ello se deber� utilizar un procedimiento llamado 
// diaAnterior que reciba una fecha representada a trav�s de tres enteros 
// dia, mes y anio, y retorne la fecha anterior. 
// Puede asumir que dia, mes y anio representan una fecha v�lida. 
// Realice pruebas de escritorio para los valores 
// dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.


// Principal.
Algoritmo ejercicio8
	
	// Definici�n de variables.
	definir dia, mes, anio como entero
	definir anioBisiesto, diaCorrecto Como Logico
	
	// Inicializaci�n de variables.
	dia = 0
	mes = 0
	anio = 0
	anioBisiesto = Falso
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar el d�a, mes y a�o de una fecha como n�meros " sin saltar
	escribir "enteros y se mostrar� la fecha correspondiente al d�a anterior."
	
	// Se solicita la informaci�n al usuario...	
	
	// Se fuerza a ingresar una fecha v�lida.
	
	// Se fuerza a ingresar el a�o (entre 1900 y 2900)
	Hacer
		escribir "Ingrese un n�mero entero correspondiente al a�o (de 1900 a 2900): " sin saltar
		leer anio
		
		// Se calcula para saber si es bisiesto
		anioBisiesto = ((anio mod 4 == 0) y (anio mod 100 <> 0)) o ((anio mod 100 == 0) y (anio mod 400 == 0))
		
	Mientras Que anio < 1900 o anio > 2900
	
	// Se fuerza a que el mes est� entre 1 y 12 
	Hacer
		escribir "Ingrese un n�mero entero correspondiente al mes (de 1 a 12): " sin saltar
		leer mes
		
	Mientras Que mes < 1 o mes > 12 
	
	// Se fuerza a que el d�a ingresado est� entre los l�mites correspondientes al mes y al a�o elegidos.	
	diaCorrecto = Falso
	hacer
		escribir "Ingrese un n�mero entero correspondiente al d�a del mes (de 1 a 31): " sin saltar
		leer dia		
		
		// Si el d�a ingresado no corresponde al mes. (ej 30 de febrero),
		// se invalida el d�a para volver a pedirlo
		segun mes
			1 o 3 o 5 o 7 o 8 o 10 o 12: // 31 d�as. No hay que validar nada.				
				diaCorrecto = Verdadero
				
			4 o 6 o 9 o 11: // 30 d�as. 
				// Si el d�a es mayor a 30, se invalida el d�a, para volver a ped�r ingresarlo.
				si dia > 30 Entonces
					dia = 0
					escribir "El mes ", mes, " solo puede tener entre 1 y 30 d�as."
				SiNo
					diaCorrecto = Verdadero
				FinSi
				
			2: // 29 d�as si a�o no bisiesto. O 28 d�as si a�o es bisiesto.
				si anioBisiesto entonces					
					si dia > 28 Entonces
						dia = 0
						escribir "En un a�o bisiesto, Febrero tiene solo 28 d�as."
					sino 
						diaCorrecto = Verdadero
					FinSi
					
				SiNo // 29 d�as si a�o es bisiesto.
					si dia > 29 Entonces
						dia = 0
						escribir "En un a�o no bisiesto, Febrero tiene solo 29 d�as."
					SiNo
						diaCorrecto = Verdadero
					FinSi
				FinSi
		FinSegun	
		
//	mientras que dia < 0 o dia > 31
	mientras que diaCorrecto == Falso
	
	// Se calcula la fecha anterior usando el procedimiento solicitado.
	diaAnterior(dia, mes, anio, anioBisiesto)
	
	// Y se presenta el resultado por pantalla.	
	escribir "El d�a anterior fu� ", dia, " del ", mes, ", de ", anio, "."
	
FinAlgoritmo


// Procedimiento diaAnterior
// divide al dividendo por el divisor y muestra el cociente y el resto.
SubProceso diaAnterior (dia por referencia, mes por referencia, anio Por Referencia, anioBisiesto)
	
	si dia == 1 Entonces
		
		segun mes hacer
			
			1:
				dia = 31
				mes = 12
				anio = anio - 1
				
			3:
				si anioBisiesto Entonces
					dia = 28
				sino 
					dia = 29
				FinSi					
				mes = 2				
				
			5 o 7 o 10 o 12: // meses de 31 d�as. junto con el mes 8
				dia = 30
				mes = mes - 1
				
			2 o 4 o 6 o 8 o 9 o 11: // Meses de 30 d�as. Junto con el 4.
				dia = 31
				mes = mes - 1
				
		FinSegun
		
	SiNo
		dia = dia -1
		
	FinSi	
	
FinSubProceso

// Pruebas:								Resultado correcto:
// dia=5, mes=10, anio=2012		-->		dia=4, mes=10, anio=2012
// dia=1, mes=3, anio=2004.		-->		dia=28, mes=2, anio=2004
// dia=1, mes=1, anio=2023		-->		dia=31, mes=12, anio=2022
// dia=1, mes=12, anio=2010		-->		dia=30, mes=11, anio=2010
// dia=1, mes=8, anio=2000		-->		dia=31, mes=7, anio=2000
// dia=1, mes=9, anio=2000		-->		dia=31, mes=8, anio=2000
// dia=1, mes=2, anio=1999		-->		dia=31, mes=1, anio=1999
// dia=1, mes=4, anio=1997		-->		dia=31, mes=3, anio=1997
