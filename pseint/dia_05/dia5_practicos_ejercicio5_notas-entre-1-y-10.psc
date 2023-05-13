// Clase 5 - Pr�cticos - Ejercicio 5 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Escriba un programa que pida 3 notas y valide si esas notas est�n 
// entre 1 y 10. Si est�n entre esos par�metros se debe poner en verdadero 
// una variable de tipo l�gico y si no ponerla en falso. 
// Al final el programa debe decir si las 3 notas son correctas usando la variable de tipo l�gico.		

Algoritmo practicos_ejercicio5
	
	// Definici�n de variables.
	definir nota1, nota2, nota3 como real
	definir correctas Como Logico
	
	// Inicializaci�n de variables.
	nota1 = 0
	nota2 = 0
	nota3 = 0
	correctas = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedira ingresar tres notas entre 1 y 10 y luego se " sin saltar
	escribir "informar� si han sido ingresadas correctamente o no."
	
	// Cargar las tres notas ingresadas por el usuario en variables.
	escribir "Ingrese la primera nota (n�mero entre 1 y 10): " sin saltar
	leer nota1
	escribir "Ingrese la segunda nota (n�mero entre 1 y 10): " sin saltar
	leer nota2
	escribir "Ingrese la tercera nota (n�mero entre 1 y 10): " sin saltar
	leer nota3		
	
	// Se verifican las notas ingresadas.
	correctas = ((nota1 >= 1 y nota1 <= 10) y (nota2 >= 1 y nota2 <= 10) y (nota3 >= 1 y nota3 <= 10))
	
	// Se muestra el mensaje correspondiente en pantalla.
	si correctas Entonces
		escribir "Las tres notas ingresadas son correctas!"
	SiNo
		escribir "Alguna(s) o todas las notas ingresadas son incorrectas."
	FinSi	
	
FinAlgoritmo
