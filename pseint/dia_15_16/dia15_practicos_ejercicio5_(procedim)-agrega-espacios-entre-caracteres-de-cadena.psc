// Clase 15 - Pr�cticos - Ejercicio 5 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto 
// y muestra una cadena con un espacio adicional tras cada letra.
// Por ejemplo, "Hola, t�" devolver� "H o l a , t � ". 
// Crea un programa principal donde se use dicho procedimiento.


// Principal.
Algoritmo ejercicio5
	
	// Definici�n de variables.
	definir frase como cadena
	
	// Inicializaci�n de variables.
	frase = ""
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar una frase y se proceder� a " sin saltar
	escribir "agregar espacios entre cada uno de sus caracteres."
	
	// Se solicita la informaci�n al usuario...	
	
	escribir "Ingrese una frase: "
	leer frase		
	
	// Se agregan los espacios usando el procedimiento solicitado.
	// Y se presenta el resultado por pantalla.	
	convertirEspaciado(frase)
	
FinAlgoritmo


// Procedimiento convertirEspaciado
// divide al dividendo por el divisor y muestra el cociente y el resto.
SubProceso convertirEspaciado (frase)
	
	definir i como entero
	definir letra Como Caracter
	definir nuevaFrase como cadena
	
	letra = ""
	nuevaFrase = ""
	
	para i = 0 hasta (longitud(frase) -1 ) con paso 1 Hacer
		letra = Subcadena(frase, i, i)
		nuevaFrase = Concatenar(nuevaFrase, letra)
		nuevaFrase = Concatenar(nuevaFrase, " ")
	FinPara
	
	frase = nuevaFrase
	
	escribir nuevaFrase
	
FinSubProceso
