// Clase 12 - Extras - Ejercicio 3
// Fer V - jalmendra99@gmail.com
//
// 3. Diseñar una función que permita obtener el máximo común divisor 
// de dos números mediante el algoritmo de Euclides

////// Nota: Info de Internet:
////// Fuente: 
////// https://www.youtube.com/watch?v=zlNBABppxds
//
// Para calcular el MCM entre a y b - notación: MCM(a, b)
// a > b ; a <> 0 ; b <> 0
// se divide a / b. si el resto r1 es 0, entonces el MCM es b
// si el resto r1 es > 0 Entonces
// se divide b / r1, si el resto r2 es 0 ... etc


// Principal.
Algoritmo ejercicio3
	
	// Definición de variables.
	definir a, b Como entero
	
	// Inicialización de variables.
	a = 0
	b = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar dos números enteros a y b y se calculará el máximo común divisor MCM(a, b)."
	
	// Se solicita la información al usuario.	
	// Se fuerza a >= b ; a <> 0 ; b <> 0
	hacer
		escribir "Ingrese un número positivo para usar como dividendo: "
		leer a
		escribir "Ingrese otro número positivo para usar como divisor (tiene que ser menor al dividendo): "
		leer b
	mientras que a <= 0 o b <= 0 o b > a
	
	// Se calcula el MCM(a, b) usando una función.
	// Y se presenta el resultado por pantalla.
	escribir "El máximo común divisor entre ", a, " y ", b, " o MCM(", a, ", ", b, ") es ", mcm(a, b), "."
	
FinAlgoritmo


// Funcion mcm
// Retorna el máximo común divisor entre a y b - notación: MCM(a, b).
funcion retorno = mcm(a, b)
	definir retorno Como Entero
	
	// Para calcular el MCM entre a y b - notación: MCM(a, b)
	// a > b ; a <> 0 ; b <> 0
	// se divide a / b. si el resto r1 es 0, entonces el MCM es b
	// si el resto r1 es > 0 Entonces
	// se divide b / r1, si el resto r2 es 0, entonces el MCM es r1 ... etc
	
	definir dividendo, divisor, cociente, resto Como Entero
	
	dividendo = a
	divisor = b
	cociente = 0
	resto = 0
	
	Hacer
		
		retorno = divisor
		
		cociente = trunc(dividendo / divisor)
		resto = dividendo mod divisor
		
		dividendo = divisor
		divisor = resto
		
	Mientras Que resto > 0	
	
FinFuncion

// tests: 
// MCM(12, 3) = 3
// MCM(24, 16) = 8
// MCM(32, 15) = 1
	