// Clase 15 - Pr�cticos - Ejercicio 4 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que procese una secuencia de caracteres ingresada por teclado 
// y terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera: 
// cada vocal se reemplaza por el car�cter que se indica en la tabla y el resto de los caracteres 
// (incluyendo a las vocales acentuadas) se mantienen sin cambios.
// a @
// e #
// i $
// o %
// u *
// Realice un subprograma que reciba una secuencia de caracteres y retorne 
// la codificaci�n correspondiente. Utilice la estructura "seg�n" para la transformaci�n.
// Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
// La salida del programa deber�a ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10. 
// NOTA: investigue el uso de la funci�n concatenar de PSeInt para armar la palabra/frase.


// Principal.
Algoritmo ejercicio4
	
	// Definici�n de variables.
	definir frase como cadena
	definir ultimaLetra Como Caracter
	
	// Inicializaci�n de variables.
	frase = ""
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar una frase terminada en punto y se proceder� " sin saltar
	escribir "a reemplazar a las vocales por caracteres seleccionados en el planteo.."
	
	// Se solicita la informaci�n al usuario...	
	
	// Se fuerza a que la frase ingresada finalice con un punto.
	Hacer
		escribir "Ingrese una frase terminada en punto: "
		leer frase
		ultimaLetra = Subcadena(frase, Longitud(frase)-1, Longitud(frase)-1)
	Mientras Que ultimaLetra <> "."
	
	// Se reemplazan las vocales por caracteres usando el procedimiento solicitado.
	// Y se presenta el resultado por pantalla.	
	escribir "La frase original es: "
	escribir frase
	escribir "La frase nueva es: "
	
	ReemplazaVocales(frase)
	
	escribir frase
	
FinAlgoritmo


// Procedimiento ReemplazaVocales
// divide al dividendo por el divisor y muestra el cociente y el resto.
SubProceso ReemplazaVocales (frase por referencia)
	
	definir i como entero
	definir letra Como Caracter
	definir nuevaFrase como cadena
	
	letra = ""
	nuevaFrase = ""
	
	para i = 0 hasta (longitud(frase) -1 ) con paso 1 Hacer
		letra = Subcadena(frase, i, i)
		segun letra hacer
			"a" o "A": // reemplazar por @
				letra = "@"
			"e" o "E": // reemplazar por #
				letra = "#"
			"i" o "I": // reemplazar por $
				letra = "$"
			"o" o "O": // reemplazar por %
				letra = "%"
			"u" o "U": // reemplazar por *
				letra = "*"				
		FinSegun
		nuevaFrase = Concatenar(nuevaFrase, letra)
	FinPara
	
	frase = nuevaFrase
FinSubProceso
