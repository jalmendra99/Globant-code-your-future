// Clase 15 - Prácticos - Ejercicio 8 - página 3
// Fer V - jalmendra99@gmail.com
//
// Diseñar un procedimiento que reciba una frase, y el programa remueva todas 
// las vocales repetidas. Al final el procedimiento mostrará la frase final.
// Por ejemplo:
// Entrada: "Habi<a> un<a> vez <u>n b<a>rco"
// Salida: "Habi un vez n brco"
// Se marcan en rojo las repetidas sólo para explicar la consigna. 
// Las vocales 'e', 'i'  y 'o' quedan al no estar repetidas.


// Principal.
Algoritmo ejercicio8
	
	// Definición de variables.
	definir frase como cadena
	
	// Inicialización de variables.
	frase = ""
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar una frase y se quitaran todas las vocales repetidas de la misma."
	
	// Se solicita la información al usuario...	
	escribir "Ingrese una frase: "
	leer frase
	
	// Se quitan las vocales repetidas usando el procedimiento solicitado.
	// Y se presenta el resultado por pantalla.	
	QuitaVocalesRepetidas(frase)
	
FinAlgoritmo


// Procedimiento QuitaVocalesRepetidas
// Elimina todas las vocales repetidas en la frase y muestra la frase.
SubProceso QuitaVocalesRepetidas (frase)
	
	definir i como entero
	definir letra Como Caracter
	definir nuevaFrase como cadena
	// Si alguna es Verdadera, su vocal correspondiente ya se vió al menos una vez.
	definir letraA, letraE, letraI, letraO, letraU Como Logico
	
	letra = ""
	nuevaFrase = ""
	letraA = Falso
	letraE = Falso
	letraI = Falso
	letraO = Falso
	letraU = Falso
	
	para i = 0 hasta (longitud(frase) -1 ) con paso 1 Hacer
		letra = Subcadena(frase, i, i)
		segun letra hacer
			"a" o "A": 				
				// Se verifica si ya se pasó antes por una letra A
				si letraA == Falso Entonces
					letraA = Verdadero
					nuevaFrase = Concatenar(nuevaFrase, letra)
				FinSi
				
			"e" o "E": 
				// Se verifica si ya se pasó antes por una letra A
				si letraE == Falso Entonces
					letraE = Verdadero
					nuevaFrase = Concatenar(nuevaFrase, letra)
				FinSi
				
			"i" o "I": 
				// Se verifica si ya se pasó antes por una letra A
				si letraI == Falso Entonces
					letraI = Verdadero
					nuevaFrase = Concatenar(nuevaFrase, letra)
				FinSi
				
			"o" o "O": 
				// Se verifica si ya se pasó antes por una letra A
				si letraO == Falso Entonces
					letraO = Verdadero
					nuevaFrase = Concatenar(nuevaFrase, letra)
				FinSi
				
			"u" o "U": 
				// Se verifica si ya se pasó antes por una letra A
				si letraU == Falso Entonces
					letraU = Verdadero
					nuevaFrase = Concatenar(nuevaFrase, letra)
				FinSi
				
			de otro modo: 
				nuevaFrase = Concatenar(nuevaFrase, letra)
		FinSegun
	FinPara
	
	frase = nuevaFrase
	
	escribir "La nueva frase es: "
	escribir nuevaFrase
	
FinSubProceso
