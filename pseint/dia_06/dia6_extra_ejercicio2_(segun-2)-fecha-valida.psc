// Clase 6 - Extra - Ejercicio 2 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Condicional m�ltiple
// Leer tres n�meros que denoten una fecha (d�a, mes, a�o) 
// y comprobar que sea una fecha v�lida. 
// Si la fecha no es v�lida escribir un mensaje de error por pantalla. 
// Si la fecha es v�lida se debe imprimir la fecha cambiando 
// el n�mero que representa el mes por su nombre. 
// Por ejemplo: si se introduce 1 2 2006, se deber� imprimir "1 de febrero de 2006".
	
Algoritmo extra_ejercicio2
	
	// Definici�n de variables.
	definir dia, mes, anio Como entero
	definir mesCadena como cadena
	definir datosValidos, fechaValida, anioBisiesto Como Logico

	// Inicializaci�n de variables.
	dia = 0
	mes = 0
	anio = 0
	mesCadena = ""
	datosValidos = Falso
	fechaValida = Falso
	anioBisiesto = Falso
	
	// Se informa premisa al usuario
	escribir "Se pedir� al usuario ingresar una fecha (d�a, mes, a�o), " sin saltar
	escribir "luego se comprobar� que la misma es una fecha v�lida " sin saltar
	escribir "y finalmente se imprimir� la misma cambiando el n�mero del mes por su nombre."
	
	// Cargando la fecha ingresada por el usuario.
	escribir "Ingrese un n�mero correspondiente al d�a (1 a 31): "
	leer dia
	escribir "Ingrese un n�mero correspondiente al mes (1 a 12): "
	leer mes
	escribir "Ingrese un n�mero correspondiente al a�o (1900 al 2900): "
	leer anio
	
	datosValidos = (dia >= 1) y (dia <= 31) y (mes >= 1) y (mes <= 12) y (anio >= 1900) y (anio <= 2900)
	
	// F�rmula tomada del ejercicio "extras #5"
	anioBisiesto = ((anio mod 4 == 0) y (anio mod 100 <> 0)) o ((anio mod 100 == 0) y (anio mod 400 == 0))
	
	si datosValidos
		
		segun mes
			1, 3, 5, 7, 8, 10, 12: fechaValida = Verdadero
			4, 6, 9, 11: fechaValida = dia <= 30
			2:
				si anioBisiesto
					fechaValida = dia <= 29
				SiNo
					fechaValida = dia <= 28
				FinSi
			De Otro Modo: fechaValida = Falso
		FinSegun
		
		si fechaValida
			Segun mes Hacer
				1: mesCadena = "Enero"
				2: mesCadena = "Febrero"
				3: mesCadena = "Marzo"
				4: mesCadena = "Abril"
				5: mesCadena = "Mayo"
				6: mesCadena = "Junio"
				7: mesCadena = "Julio"
				8: mesCadena = "Agosto"
				9: mesCadena = "Septiembre"
				10: mesCadena = "Octubre"
				11: mesCadena = "Noviembre"
				12: mesCadena = "Diciembre"
				de otro modo: escribir "No se reconoce el mes ingresado."
			FinSegun
			Escribir "La fecha es ", dia, " de ", mesCadena, " de ", anio, "."
		SiNo // fecha no es valida
			escribir "Error. La fecha ingresada no es v�lida."
		FinSi
	SiNo // datos no son validos
		escribir "Los datos ingresados no son v�lidos."
	FinSi

FinAlgoritmo
