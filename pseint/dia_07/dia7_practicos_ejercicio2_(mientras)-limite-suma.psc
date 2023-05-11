// Clase 7 - Prácticos - Ejercicio 2 - página 2
// Fer V - jalmendra99@gmail.com
//
// Escriba un programa en el cual se ingrese un valor límite positivo, 
// y a continuación solicite números al usuario hasta que la suma 
// de los números introducidos supere el límite inicial.

Algoritmo practicos_ejercicio2
	
	// Definición de variables.
	definir limite, num, suma como entero
	
	// Inicialización de variables.
	limite = 0
	num = 0
	suma = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitará un número entero para usar como límite"
	escribir "Y luego se solicitarán ingresar números que se irán sumando"
	escribir "hasta llegar al límite ingresado."
	
	// Se solicita al usuario ingresar el límite.
	escribir "Por favor ingrese número entero para usar como límite: "
	leer limite
	
	// Se suman los números ingresados hasta que la suma supere el límite inicial.
	mientras suma <= limite Hacer
		Escribir "Ingrese un número entero: "
		leer num
		suma = suma + num
		escribir "Suma: ", suma, " - Límite: ", limite, "."
	FinMientras	
	
FinAlgoritmo
