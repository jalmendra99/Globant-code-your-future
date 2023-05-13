// Clase 12 - Extras - Ejercicio 5
// Fer V - jalmendra99@gmail.com
//
// 5. Realizar un procedimiento que permita obtener la divisi�n entera 
// y el resto de esta utilizando �nicamente los operadores suma y resta. 
// NOTA: La divisi�n se considera como una sucesi�n de restas. 
// El algoritmo cuenta cu�ntas veces se puede restar el divisor al dividendo, 
// siendo dicho contador el cociente. Cuando ya no se pueda restar m�s sin obtener 
// un n�mero positivo, se obtendr� el resto


///// Nota: Es igual a...

// Clase 15 - Pr�cticos - Ejercicio 3 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un procedimiento que permita realizar la divisi�n entre dos n�meros 
// y muestre el cociente y el resto utilizando el m�todo de restas sucesivas.
// El m�todo de divisi�n por restas sucesivas consiste en restar el dividendo 
// con el divisor hasta obtener un resultado menor que el divisor, 
// este resultado es el residuo, y el n�mero de restas realizadas es el cociente. 
// Por ejemplo: 50 / 13:
// 50 ? 13 = 37 una resta realizada
// 37 ? 13 = 24 dos restas realizadas
// 24 ? 13 = 11 tres restas realizadas
// dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.


// Principal.
Algoritmo ejercicio3
	
	// Definici�n de variables.
	definir dividendo, divisor como entero
	
	// Inicializaci�n de variables.
	dividendo = 0
	divisor = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar dos n�meros enteros y se proceder� a dividir el " sin saltar
	escribir "primero por el segundo utilizando el m�todo de divisi�n por restas sucesivas."
	
	// Se solicita la informaci�n al usuario...		
	// Se fuerza a que el dividendo sea mayor o igual a cero.
	Hacer
		escribir "Ingrese un n�mero entero positivo para el dividendo: " sin saltar
		leer dividendo
	Mientras Que dividendo < 0 
	
	// Se fuerza a que el divisor sea mayor a cero.
	Hacer
		escribir "Ingrese otro n�mero entero positivo para el divisor: " sin saltar
		leer divisor
	Mientras Que divisor <= 0 
	
	// Se calcula la divisi�n usando el procedimiento solicitado.
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
