// Clase 2 - Pr�cticos - Ejercicio 1 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Conocido el n�mero en matem�tica PI ?, 
// pedir al usuario que ingrese el valor del radio de una circunferencia 
// y calcular y mostrar por pantalla el �rea y per�metro. 
// Recuerde que para calcular el �rea y el per�metro se utilizan las siguientes f�rmulas:
// area = PI * radio **2
// perimetro = 2 * PI * radio

Algoritmo practicos_ejercicio1
	
	definir numeroPi como real
	definir radio como real
	numeroPi = 3.14
	
	escribir "Ingrese el valor del radio de una circunferencia: "
	leer radio
	
	escribir "El �rea de la circumferencia es: ",  numeroPi * radio * radio
	escribir "El per�metro de la circumferencia es: ", 2 * numeroPi * radio
	
FinAlgoritmo
