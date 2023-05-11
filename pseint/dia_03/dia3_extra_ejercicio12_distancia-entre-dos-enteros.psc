// Clase 3 - Extra - Ejercicio 12 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Pide al usuario dos n�meros y muestra la "distancia" 
// entre ellos (el valor absoluto de su diferencia, de modo que el resultado sea siempre positivo).

// Se podr�a usar tambi�n la funci�n abs(n�mero)

Algoritmo extra_ejercicio12
	
	// Definici�n de variables.
	definir numero1, numero2, distancia Como real
	
	// Inicializaci�n de variables.
	numero1 = 0
	numero2 = 0
	distancia = 0
	
	// Se informa premisa al usuario
	escribir "Se calcular� la distancia entre dos n�meros ingresados."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el primer n�mero: "
	leer numero1
	escribir "Ingrese el segundo n�mero: "
	leer numero2
	
	// Calcular la distancia
	si numero1 > numero2 Entonces
		distancia = numero1 - numero2
	SiNo
		distancia = numero2 - numero1		
	FinSi
	
	// Mostrar en pantalla
	escribir "La distancia entre ", numero1, " y ", numero2, " es: ", distancia
	
	// Pruebas:
	// -10 y 5 = 15
	// 1 y 2 = 1
	// 10 y -10 = 20
	// 0 y 0 = 0
	
FinAlgoritmo
