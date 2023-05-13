// Clase 3 - Extra - Ejercicio 13 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Realizar un algoritmo que lea un n�mero y que muestre su ra�z cuadrada
// y su ra�z c�bica. PSeInt no tiene ninguna funci�n predefinida que permita
// calcular la ra�z c�bica, �C�mo se puede calcular?

Algoritmo extra_ejercicio13
	
	// Definici�n de variables.
	definir numero1, raiz_cuad, raiz_cub Como real
	
	// Inicializaci�n de variables.
	numero1 = 0
	raiz_cuad = 0
	raiz_cub = 0
	
	// Se informa premisa al usuario
	escribir "Se calcular� la ra�z cuadrada y la ra�z c�bica del n�mero ingresado."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el n�mero: " sin saltar
	leer numero1
	
	// Calcular la ra�z cuadrada
	raiz_cuad = raiz(numero1)
	
	// Calcular la ra�z c�bica
	raiz_cub = numero1 ^ (1 / 3)
	
	// Mostrar en pantalla
	escribir "La ra�z cuadrada de ", numero1, " es: ", raiz_cuad
	escribir "La ra�z c�bica de ", numero1, " es: ", raiz_cub
	
	// Pruebas:
	// 20 -> 4.47 y 2.71
	// 9 -> 3 y 2.08
	// 27 -> 5.19 y 3	
	
	// Checks cubica: 
	// https://es.calcuworld.com/calculadoras-matematicas/raiz-cubica/
	
	// Checks cuadrada:
	// https://es.calcuworld.com/calculadoras-matematicas/raiz-cuadrada/
	
FinAlgoritmo
