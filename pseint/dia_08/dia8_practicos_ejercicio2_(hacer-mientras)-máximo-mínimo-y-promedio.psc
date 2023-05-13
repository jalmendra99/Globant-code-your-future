// Clase 8 - Pr�cticos - Ejercicio 2 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Escribir un programa que lea n�meros enteros hasta teclear 0 (cero).
// Al finalizar el programa se debe mostrar el m�ximo n�mero ingresado,
// el m�nimo, y el promedio de todos ellos.
// Para poder lograr, por ejemplo, el m�ximo inicializaremos una variable
// en cero llamada numeroMaximo. Luego iremos comparando cada n�mero que
// se ingresa con esta variable. Si es mayor reemplazaremos el valor de
// numeroMaximo.
// Por ejemplo si 5>0 entonces el m�ximo entre estos n�meros ser� 5.
// Si luego ingreso el n�mero 2, se eval�a 2>5 lo que resultar� falso
// y por lo tanto el valor 5 de numeroMaximo no se reemplaza.
// Una l�gica similar tendr� el n�mero menor.

Algoritmo practicos_ejercicio2
	
	// Definici�n de variables.
	definir num, numeroMaximo, numeroMinimo, contador, sumatoria como entero
	definir promedio como real
	
	// Inicializaci�n de variables.	
	num = 0
	numeroMaximo = 0
	numeroMinimo = 0
	contador = 0
	sumatoria = 0
	promedio = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitar� ingresar n�meros enteros hasta teclear 0 (cero)."
	escribir "Al finalizar, se mostrar� el m�ximo, m�nimo y el promedio."
	
	// Se continuar� solicitando ingresar n�meros mientras que no sean 0 (cero).
	hacer 
		
		si num > numeroMaximo Entonces
			numeroMaximo = num			
		FinSi
		
		si num < numeroMinimo o numeroMinimo == 0 Entonces
			numeroMinimo = num
		FinSi
		
		sumatoria = sumatoria + num
		contador = contador + 1
		
		escribir "Ingrese un n�mero entero (cero para finalizar): " sin saltar
		leer num		
		
	mientras que (num <> 0)
	
	// Se le resta 1 al contador, para descontar el �ltimo n�mero ingresado
	// que fu� 0 (cero).
	contador = contador - 1
	
	// Se calcula el promedio usando la sumatoria y el contador
	// siempre que el contador sea > 0 para no dividir por cero.
	si contador > 0
		promedio = sumatoria / contador		
	FinSi
	
	// Se presenta la informaci�n solicitada por pantalla.
	escribir "El m�ximo es ", numeroMaximo, "."
	escribir "El m�nimo es ", numeroMinimo, "."
	escribir "Y el promedio es ", promedio, "."
	
FinAlgoritmo
