// Clase 12 - Extras - Ejercicio 5
// Fer V - jalmendra99@gmail.com
//
// 5. Realizar un procedimiento que permita obtener la división entera 
// y el resto de esta utilizando únicamente los operadores suma y resta. 
// NOTA: La división se considera como una sucesión de restas. 
// El algoritmo cuenta cuántas veces se puede restar el divisor al dividendo, 
// siendo dicho contador el cociente. Cuando ya no se pueda restar más sin obtener 
// un número positivo, se obtendrá el resto


///// Nota: Es igual a...

// Clase 15 - Prácticos - Ejercicio 3 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un procedimiento que permita realizar la división entre dos números 
// y muestre el cociente y el resto utilizando el método de restas sucesivas.
// El método de división por restas sucesivas consiste en restar el dividendo 
// con el divisor hasta obtener un resultado menor que el divisor, 
// este resultado es el residuo, y el número de restas realizadas es el cociente. 
// Por ejemplo: 50 / 13:
// 50 ? 13 = 37 una resta realizada
// 37 ? 13 = 24 dos restas realizadas
// 24 ? 13 = 11 tres restas realizadas
// dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.


// Principal.
Algoritmo ejercicio3
	
	// Definición de variables.
	definir dividendo, divisor como entero
	
	// Inicialización de variables.
	dividendo = 0
	divisor = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar dos números enteros y se procederá a dividir el " sin saltar
	escribir "primero por el segundo utilizando el método de división por restas sucesivas."
	
	// Se solicita la información al usuario...		
	// Se fuerza a que el dividendo sea mayor o igual a cero.
	Hacer
		escribir "Ingrese un número entero positivo para el dividendo: " sin saltar
		leer dividendo
	Mientras Que dividendo < 0 
	
	// Se fuerza a que el divisor sea mayor a cero.
	Hacer
		escribir "Ingrese otro número entero positivo para el divisor: " sin saltar
		leer divisor
	Mientras Que divisor <= 0 
	
	// Se calcula la división usando el procedimiento solicitado.
	// Y se presenta el resultado por pantalla.	
	Division(dividendo, divisor)	
	
FinAlgoritmo


// Procedimiento Division
// divide al dividendo por el divisor y muestra el cociente y el resto.
SubProceso Division (dividendo, divisor)	
	
	definir cociente, resto Como Entero
	
	cociente = 0
	resto = dividendo
	
	mientras resto - divisor >= 0 Hacer
		
		resto = resto - divisor
		cociente = cociente + 1
	FinMientras
	
	escribir "El cociente entre ", dividendo, " y ", divisor, " es ", cociente, " y el resto es ", resto, "."
	
FinSubProceso
