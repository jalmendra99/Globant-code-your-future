// Clase 15 - Prácticos - Ejercicio 2 - página 2
// Fer V - jalmendra99@gmail.com
//
// Crear un procedimiento que calcule la temperatura media de un día 
// a partir de la temperatura máxima y mínima. 
// Crear un programa principal, que, utilizando un procedimiento, 
// vaya pidiendo la temperatura máxima y mínima de n días 
// y vaya mostrando la media de cada día. 
// El programa pedirá el número de días que se van a introducir.


// Principal.
Algoritmo ejercicio2
	
	// Definición de variables.
	definir maxima, minima como real
	definir dias, i como entero
	
	// Inicialización de variables.
	maxima = 0	
	minima = 0
	dias = 0
	
	// Se informa la premisa al usuario.
	escribir sin saltar "Se solicitará ingresar la cantidad de dias para cada uno de los cuales "
	escribir            "se ingresarán las temperaturas máxima y mínima para luego calcular la media de cada día."
	
	// Se solicita la información al usuario...
	
	// Se fuerza a que la cantidad de días sea positiva o cero.
	Hacer
		escribir "Ingrese la cantidad de días a procesar: "
		leer dias
	Mientras Que dias < 0
	
	para i = 1 hasta dias con paso 1 Hacer
		ingresarTemperaturas(maxima, minima, i) // por referencia.
		MostrarTemperaturaMedia(maxima, minima) // por valor.
	FinPara	
	
FinAlgoritmo


// Procedimiento ingresarTemperaturas
// Calcula la el promedio entre las dos temperaturas ingresadas (máxima y mínima)
// Y muestra ese promedio por pantalla.
SubProceso ingresarTemperaturas (minima por referencia, maxima por referencia, dia)
	
	escribir "Para el día ", dia, ":"
	escribir "Ingrese la temperatura mínima: "
	leer minima
	
	escribir "Ingrese la temperatura máxima: "
	leer maxima	
	
FinSubProceso


// Procedimiento MostrarTemperaturaMedia
// Calcula la el promedio entre las dos temperaturas ingresadas (máxima y mínima)
// Y muestra ese promedio por pantalla.
SubProceso MostrarTemperaturaMedia (minima, maxima)
	
	definir media Como Real
	media = ((maxima - minima) / 2) + minima
	escribir "La temperatura media entre ", minima, " y ", maxima, " es ", media, "."
	
FinSubProceso
