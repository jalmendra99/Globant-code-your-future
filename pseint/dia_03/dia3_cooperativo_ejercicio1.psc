// Clase 3 - Cooperativo - Ejercicio 1 - página 3
// Fer V - jalmendra99@gmail.com
//
// Ingrese un número de tres cifras y muestre la unidad, decena y la centena. 
// Por ejemplo, si el número ingresado por pantalla es 123 el programa debe mostrar:
// CENTENA: 1 
// DECENA: 2 
// UNIDAD: 3

Algoritmo cooperativo_ejercicio1
	
	// Definición de variables.
	definir num Como Real
	definir unidad, decena, centena Como Entero
	
	// Inicialización de variables
	num = 0
	unidad = 0
	decena = 0
	centena = 0
	
	// Se informa premisa al usuario
	escribir "Se mostrará la unidad, decena y centena basados en el número de tres cifras ingresado."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese un número de tres cifras: " sin saltar
	leer num
	
	// Calculando la unidad, decena y centena del número ingresado...	
	
	// Unidad. es el resto de dividir por 10. Ejemplo: 123 / 10 = 12,3 <- el resto es 3.
	unidad = num % 10					
	
	// Decena. Ejemplo: 123 / 100 = 1,23. El resto es 23. Dividido 10 es 2,3. Truncado es 2.
	decena = trunc( (num % 100) / 10 )	
	
	// Centena. Ejemplo: 123 / 100 = 1,23. Truncado es 1.
	centena = trunc( num / 100 )
	
	// mostrar en pantalla
	escribir "Para el número ", num
	escribir "La centena es: ", centena
	escribir "La decena es: ", decena
	escribir "La unidad es: ", unidad
	
FinAlgoritmo
