// Clase 6 - Teoría - Ejercicio 1 - página 4
// Fer V - jalmendra99@gmail.com
//
// EJERCICIO MESES
// Ingresar un número del 1 - 12 y mostrar el mes del año que corresponde, 
// si el número ingresado no es correcto mostrar un "mensaje de error".
	
Algoritmo teoria_ejercicio1

	// Definición de variables.
	definir mes como entero
	definir nombreMes como cadena

	// Inicialización de variables.
	mes = 0
	nombreMes = ""
	
	// Se informa premisa al usuario
	escribir "Se pedira ingresar un nú?ero y se mostrará el mes correspondiente al mismo."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese un número de mes (de 1 a 12): "
	leer mes

	// Se valida que el número esté entre 1 y 12
	si mes >= 1 y mes <= 12 Entonces
		segun mes Hacer
			1: nombreMes = "Enero"
			2: nombreMes = "Febrero"
			3: nombreMes = "Marzo"
			4: nombreMes = "Abril"
			5: nombreMes = "Mayo"
			6: nombreMes = "Junio"
			7: nombreMes = "Julio"
			8: nombreMes = "Agosto"
			9: nombreMes = "Septiembre"
			10: nombreMes = "Octubre"
			11: nombreMes = "Noviembre"
			12: nombreMes = "Diciembre"
			De Otro Modo:
				escribir "No se reconose el valor ingresado."
		FinSegun
		escribir "El mes correspondiente al número ", mes, " es ", nombreMes
	SiNo
		escribir "El número ingresado no corresponde a un mes."
	FinSi	

FinAlgoritmo
