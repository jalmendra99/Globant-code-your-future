// Clase 15 - Prácticos - Ejercicio 4 - página 2
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que procese una secuencia de caracteres ingresada por teclado 
// y terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera: 
// cada vocal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres 
// (incluyendo a las vocales acentuadas) se mantienen sin cambios.
// a @
// e #
// i $
// o %
// u *
// Realice un subprograma que reciba una secuencia de caracteres y retorne 
// la codificación correspondiente. Utilice la estructura "según" para la transformación.
// Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
// La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10. 
// NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.


// Principal.
Algoritmo ejercicio4
	
	// Definición de variables.
	definir frase como cadena
	definir ultimaLetra Como Caracter
	
	// Inicialización de variables.
	frase = ""
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar una frase terminada en punto y se procederá " sin saltar
	escribir "a reemplazar a las vocales por caracteres seleccionados en el planteo.."
	
	// Se solicita la información al usuario...	
	
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
