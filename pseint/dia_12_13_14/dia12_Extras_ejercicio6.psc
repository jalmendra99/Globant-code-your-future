// Clase 12 - Extras - Ejercicio 6
// Fer V - jalmendra99@gmail.com
//
// 6. Diseñar un procedimiento que permita convertir coordenadas polares 
// (radio, ángulo) en cartesianas (x,y). 
// NOTA: x=radio*cos(ángulo) e y=radio*sen(ángulo).


// Principal.
Algoritmo ejercicio6
	
	// Definición de variables.
	definir coordX, coordY, radio, angulo como real
	
	// Inicialización de variables.
	coordX = 0
	coordY = 0
	radio = 0
	angulo = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un punto con coordenadas polares (radio, ángulo) " sin saltar
	escribir "y se convertirán en cartesianas (x, y)."
	
	// Se solicita la información al usuario.
	escribir "Ingrese un número para el radio: " sin saltar
	leer radio	
	escribir "Ingrese otro número para el ángulo: " sin saltar
	leer angulo
	
	// Se convierten las coordenadas polares a cartesianas usando el procedimiento solicitado.
	PolarACartesiana(radio, angulo, coordX, coordY) 
	
	// Y se presenta el resultado por pantalla.
	Escribir "Las coordenadas polares (", radio, ", ", angulo, ") equivalen a las cartesianas (", coordX, ", ", coordY, ")."
	
FinAlgoritmo


// Procedimiento SumaDeDivisores. 
// Convierte coordenadas polares (radio, ángulo) en cartesianas (x,y). 
SubProceso PolarACartesiana (radio, angulo, coordX por referencia, coordY por referencia) 
	
	coordX = radio * cos(angulo) 
	coordY = radio * sen(angulo)
	
FinSubProceso
