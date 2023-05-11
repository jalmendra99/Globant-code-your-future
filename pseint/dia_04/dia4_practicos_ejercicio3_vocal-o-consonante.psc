// Clase 4 - Pr�cticos - Ejercicio 3 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Se pide ingresar una letra del alfabeto y mostrar si dicha letra es vocal o consonante.

Algoritmo extra_ejercicio3
	
	// Definici�n de variables.
	definir letra Como Caracter
	definir esVocal Como Logico
	
	// Inicializaci�n de variables.
	letra = ""
	esVocal = Falso
	
	// Se informa premisa al usuario
	escribir "Se informar� si la letra ingresada es vocal o consonante."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese la letra: "
	leer letra
	
	// Habr�a que verificar que el caracter ingresado sea uno solo
	// y que sea un caracter y no un n�mero o simbolo, por ejemplo
	
	esVocal = ((letra == "a") o (letra == "A") o (letra == "e") o (letra == "E") o (letra == "i") o (letra == "I") o (letra == "o") o (letra == "O") o (letra == "u") o (letra == "U"))
	
	// Se informa por pantalla si sueldo actual es mayor a sueldo m�nimo
	si esVocal Entonces
		escribir "La letra ingresada es vocal."
	SiNo
		escribir "La letra ingresada es consonante."
	FinSi
	
	// Pruebas:
	// a
	// x
	// 80		<-- falla
	// gato		<-- falla
	
FinAlgoritmo