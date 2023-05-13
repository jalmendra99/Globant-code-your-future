// Clase 12 - Extras - Ejercicio 6
// Fer V - jalmendra99@gmail.com
//
// 6. Dise�ar un procedimiento que permita convertir coordenadas polares 
// (radio, �ngulo) en cartesianas (x,y). 
// NOTA: x=radio*cos(�ngulo) e y=radio*sen(�ngulo).


// Principal.
Algoritmo ejercicio6
	
	// Definici�n de variables.
	definir coordX, coordY, radio, angulo como real
	
	// Inicializaci�n de variables.
	coordX = 0
	coordY = 0
	radio = 0
	angulo = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un punto con coordenadas polares (radio, �ngulo) " sin saltar
	escribir "y se convertir�n en cartesianas (x, y)."
	
	// Se solicita la informaci�n al usuario.
	escribir "Ingrese un n�mero para el radio: " sin saltar
	leer radio	
	escribir "Ingrese otro n�mero para el �ngulo: " sin saltar
	leer angulo
	
	// Se convierten las coordenadas polares a cartesianas usando el procedimiento solicitado.
	PolarACartesiana(radio, angulo, coordX, coordY) 
	
	// Y se presenta el resultado por pantalla.
	Escribir "Las coordenadas polares (", radio, ", ", angulo, ") equivalen a las cartesianas (", coordX, ", ", coordY, ")."
	
FinAlgoritmo


// Procedimiento SumaDeDivisores. 
// Convierte coordenadas polares (radio, �ngulo) en cartesianas (x,y). 
SubProceso PolarACartesiana (radio, angulo, coordX por referencia, coordY por referencia) 
	
	coordX = radio * cos(angulo) 
	coordY = radio * sen(angulo)
	
FinSubProceso
