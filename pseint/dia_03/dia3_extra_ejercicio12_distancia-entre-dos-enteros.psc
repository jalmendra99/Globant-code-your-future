// Clase 3 - Extra - Ejercicio 12 - página 2
// Fer V - jalmendra99@gmail.com
//
// Pide al usuario dos números y muestra la "distancia" 
// entre ellos (el valor absoluto de su diferencia, de modo que el resultado sea siempre positivo).

// Se podría usar también la función abs(número)

Algoritmo extra_ejercicio12
	
	// Definición de variables.
	definir numero1, numero2, distancia Como real
	
	// Inicialización de variables.
	numero1 = 0
	numero2 = 0
	distancia = 0
	
	// Se informa premisa al usuario
	escribir "Se calculará la distancia entre dos números ingresados."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el primer número: "
	leer numero1
	escribir "Ingrese el segundo número: "
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
