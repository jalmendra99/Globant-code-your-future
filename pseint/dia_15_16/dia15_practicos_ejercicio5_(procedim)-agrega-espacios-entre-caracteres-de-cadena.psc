// Clase 15 - Prácticos - Ejercicio 5 - página 3
// Fer V - jalmendra99@gmail.com
//
// Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto 
// y muestra una cadena con un espacio adicional tras cada letra.
// Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". 
// Crea un programa principal donde se use dicho procedimiento.


// Principal.
Algoritmo ejercicio5
	
	// Definición de variables.
	definir frase como cadena
	
	// Inicialización de variables.
	frase = ""
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar una frase y se procederá a " sin saltar
	escribir "agregar espacios entre cada uno de sus caracteres."
	
	// Se solicita la información al usuario...	
	
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
