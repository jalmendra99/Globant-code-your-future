// Clase 3 - Extra - Ejercicio 6 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Mostrar el �rea y per�metro de un hex�gono.

// Se asume que el hex�gono es regular
// (calcular para un irregular ser�a algo m�s complejo).

Algoritmo extra_ejercicio6
	
	// Definici�n de variables.
	definir lado, apotema Como real
	
	// Inicializaci�n de variables.
	lado = 0	
	apotema = 0
	
	// Se informa premisa al usuario
	escribir "Se calcular� el �rea y per�metro de un hex�gono usando el largo de su lado y apotema ingresados."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el largo de un lado: "
	leer lado
	escribir "Ingrese el largo del apotema: "
	leer apotema
	
	// Calcular �rea y per�metro y mostrar al usuario
	escribir "El �rea del hex�gono es ", lado * 6 * apotema / 2, " y el per�metro es ", lado * 6
	
	// La soluci�n para hex�gonos irregulares consiste en
	// dividir en cinco tri�ngulos y calcular el �rea de cada uno, 
	// y posteriormente realizar la suma del �rea de cada tri�ngulo 
	
FinAlgoritmo
