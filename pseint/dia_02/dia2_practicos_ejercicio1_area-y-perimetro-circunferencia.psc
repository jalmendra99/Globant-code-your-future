// Clase 2 - Prácticos - Ejercicio 1 - página 3
// Fer V - jalmendra99@gmail.com
//
// Conocido el número en matemática PI ?, 
// pedir al usuario que ingrese el valor del radio de una circunferencia 
// y calcular y mostrar por pantalla el área y perímetro. 
// Recuerde que para calcular el área y el perímetro se utilizan las siguientes fórmulas:
// area = PI * radio **2
// perimetro = 2 * PI * radio

Algoritmo practicos_ejercicio1
	
	definir numeroPi como real
	definir radio como real
	numeroPi = 3.14
	
	escribir "Ingrese el valor del radio de una circunferencia: "
	leer radio
	
	escribir "El área de la circumferencia es: ",  numeroPi * radio * radio
	escribir "El perímetro de la circumferencia es: ", 2 * numeroPi * radio
	
FinAlgoritmo
