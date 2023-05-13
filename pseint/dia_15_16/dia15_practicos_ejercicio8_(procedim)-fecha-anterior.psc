// Clase 15 - Prácticos - Ejercicio 8 - página 3
// Fer V - jalmendra99@gmail.com
//
// Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla 
// la fecha anterior. Para ello se deberá utilizar un procedimiento llamado 
// diaAnterior que reciba una fecha representada a través de tres enteros 
// dia, mes y anio, y retorne la fecha anterior. 
// Puede asumir que dia, mes y anio representan una fecha válida. 
// Realice pruebas de escritorio para los valores 
// dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.


// Principal.
Algoritmo ejercicio8
	
	// Definición de variables.
	definir dia, mes, anio como entero
	definir anioBisiesto, diaCorrecto Como Logico
	
	// Inicialización de variables.
	dia = 0
	mes = 0
	anio = 0
	anioBisiesto = Falso
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar el día, mes y año de una fecha como números " sin saltar
	escribir "enteros y se mostrará la fecha correspondiente al día anterior."
	
	// Se solicita la información al usuario...	
	
	// Se fuerza a ingresar una fecha válida.
	
	// Se fuerza a ingresar el año (entre 1900 y 2900)
	Hacer
		escribir "Ingrese un número entero correspondiente al año (de 1900 a 2900): " sin saltar
		leer anio
		
		// Se calcula para saber si es bisiesto
		anioBisiesto = ((anio mod 4 == 0) y (anio mod 100 <> 0)) o ((anio mod 100 == 0) y (anio mod 400 == 0))
		
	Mientras Que anio < 1900 o anio > 2900
	
	// Se fuerza a que el mes esté entre 1 y 12 
	Hacer
		escribir "Ingrese un número entero correspondiente al mes (de 1 a 12): " sin saltar
		leer mes
		
	Mientras Que mes < 1 o mes > 12 
	
	// Se fuerza a que el día ingresado esté entre los límites correspondientes al mes y al año elegidos.	
	diaCorrecto = Falso
	hacer
		escribir "Ingrese un número entero correspondiente al día del mes (de 1 a 31): " sin saltar
		leer dia		
		
		// Si el día ingresado no corresponde al mes. (ej 30 de febrero),
		// se invalida el día para volver a pedirlo
		segun mes
			1 o 3 o 5 o 7 o 8 o 10 o 12: // 31 días. No hay que validar nada.				
				diaCorrecto = Verdadero
				
			4 o 6 o 9 o 11: // 30 días. 
				// Si el día es mayor a 30, se invalida el día, para volver a pedír ingresarlo.
				si dia > 30 Entonces
					dia = 0
					escribir "El mes ", mes, " solo puede tener entre 1 y 30 días."
				SiNo
					diaCorrecto = Verdadero
				FinSi
				
			2: // 29 días si año no bisiesto. O 28 días si año es bisiesto.
				si anioBisiesto entonces					
					si dia > 28 Entonces
						dia = 0
						escribir "En un año bisiesto, Febrero tiene solo 28 días."
					sino 
						diaCorrecto = Verdadero
					FinSi
					
				SiNo // 29 días si año es bisiesto.
					si dia > 29 Entonces
						dia = 0
						escribir "En un año no bisiesto, Febrero tiene solo 29 días."
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
	escribir "El día anterior fué ", dia, " del ", mes, ", de ", anio, "."
	
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
				
			5 o 7 o 10 o 12: // meses de 31 días. junto con el mes 8
				dia = 30
				mes = mes - 1
				
			2 o 4 o 6 o 8 o 9 o 11: // Meses de 30 días. Junto con el 4.
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
