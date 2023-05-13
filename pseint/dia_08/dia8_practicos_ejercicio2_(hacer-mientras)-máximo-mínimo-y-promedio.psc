// Clase 8 - Prácticos - Ejercicio 2 - página 2
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que lea números enteros hasta teclear 0 (cero).
// Al finalizar el programa se debe mostrar el máximo número ingresado,
// el mínimo, y el promedio de todos ellos.
// Para poder lograr, por ejemplo, el máximo inicializaremos una variable
// en cero llamada numeroMaximo. Luego iremos comparando cada número que
// se ingresa con esta variable. Si es mayor reemplazaremos el valor de
// numeroMaximo.
// Por ejemplo si 5>0 entonces el máximo entre estos números será 5.
// Si luego ingreso el número 2, se evalúa 2>5 lo que resultará falso
// y por lo tanto el valor 5 de numeroMaximo no se reemplaza.
// Una lógica similar tendrá el número menor.

Algoritmo practicos_ejercicio2
	
	// Definición de variables.
	definir num, numeroMaximo, numeroMinimo, contador, sumatoria como entero
	definir promedio como real
	
	// Inicialización de variables.	
	num = 0
	numeroMaximo = 0
	numeroMinimo = 0
	contador = 0
	sumatoria = 0
	promedio = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitará ingresar números enteros hasta teclear 0 (cero)."
	escribir "Al finalizar, se mostrará el máximo, mínimo y el promedio."
	
	// Se continuará solicitando ingresar números mientras que no sean 0 (cero).
	hacer 
		
		si num > numeroMaximo Entonces
			numeroMaximo = num			
		FinSi
		
		si num < numeroMinimo o numeroMinimo == 0 Entonces
			numeroMinimo = num
		FinSi
		
		sumatoria = sumatoria + num
		contador = contador + 1
		
		escribir "Ingrese un número entero (cero para finalizar): " sin saltar
		leer num		
		
	mientras que (num <> 0)
	
	// Se le resta 1 al contador, para descontar el último número ingresado
	// que fué 0 (cero).
	contador = contador - 1
	
	// Se calcula el promedio usando la sumatoria y el contador
	// siempre que el contador sea > 0 para no dividir por cero.
	si contador > 0
		promedio = sumatoria / contador		
	FinSi
	
	// Se presenta la información solicitada por pantalla.
	escribir "El máximo es ", numeroMaximo, "."
	escribir "El mínimo es ", numeroMinimo, "."
	escribir "Y el promedio es ", promedio, "."
	
FinAlgoritmo
