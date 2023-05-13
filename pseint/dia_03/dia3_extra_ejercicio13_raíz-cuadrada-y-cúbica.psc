// Clase 3 - Extra - Ejercicio 13 - página 3
// Fer V - jalmendra99@gmail.com
//
// Realizar un algoritmo que lea un número y que muestre su raíz cuadrada
// y su raíz cúbica. PSeInt no tiene ninguna función predefinida que permita
// calcular la raíz cúbica, ¿Cómo se puede calcular?

Algoritmo extra_ejercicio13
	
	// Definición de variables.
	definir numero1, raiz_cuad, raiz_cub Como real
	
	// Inicialización de variables.
	numero1 = 0
	raiz_cuad = 0
	raiz_cub = 0
	
	// Se informa premisa al usuario
	escribir "Se calculará la raíz cuadrada y la raíz cúbica del número ingresado."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el número: " sin saltar
	leer numero1
	
	// Calcular la raíz cuadrada
	raiz_cuad = raiz(numero1)
	
	// Calcular la raíz cúbica
	raiz_cub = numero1 ^ (1 / 3)
	
	// Mostrar en pantalla
	escribir "La raíz cuadrada de ", numero1, " es: ", raiz_cuad
	escribir "La raíz cúbica de ", numero1, " es: ", raiz_cub
	
	// Pruebas:
	// 20 -> 4.47 y 2.71
	// 9 -> 3 y 2.08
	// 27 -> 5.19 y 3	
	
	// Checks cubica: 
	// https://es.calcuworld.com/calculadoras-matematicas/raiz-cubica/
	
	// Checks cuadrada:
	// https://es.calcuworld.com/calculadoras-matematicas/raiz-cuadrada/
	
FinAlgoritmo
