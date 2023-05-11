// Clase 15 - Pr�cticos - Ejercicio 7 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Crear un programa que dibuje una escalera de n�meros, 
// donde cada l�nea de n�meros comience en uno y termine 
// en el n�mero de la l�nea. 
// Solicitar la altura de la escalera al usuario al comenzar. 
// Ejemplo: si se ingresa el n�mero 3:
// 1 
// 12 
// 123


// Principal.
Algoritmo ejercicio7
	
	// Definici�n de variables.
	definir num como entero
	
	// Inicializaci�n de variables.
	num = 0
	
	// Se informa la premisa al usuario.
	escribir sin saltar "Se solicitar� ingresar un n�mero entero N y se proceder� a mostrar una escalera "
	escribir            "de n�meros con alto y ancho N."
	
	// Se solicita la informaci�n al usuario...	
	
	// Se fuerza a ingresar un n�mero positivo.
	hacer
		escribir "Ingrese un n�mero entero mayor a cero: "
		leer num
	mientras que num <= 0
	
	// Se calcula la escalera usando el procedimiento solicitado.
	// Y se presenta el resultado por pantalla.	
	EscaleraDeNumeros(num)
	
FinAlgoritmo


// Procedimiento EscaleraDeNumeros
// divide al dividendo por el divisor y muestra el cociente y el resto.
SubProceso EscaleraDeNumeros (num)
	
	definir fila, columna Como Entero
	
	// Para cada fila (de 1 hasta num)
	para fila = 1 hasta num con paso 1 Hacer
		// Para cada columna (de 1 hasta fila). 
		// ej: si la fila actual es la 1, columna va a ir de 1 hasta 1
		//     si la fila actual es la 2, columna va a ir de 1 hasta 2
		//     etc.
		para columna = 1 hasta fila con paso 1 Hacer
			// Escribe el n�mero en cada columna.
			escribir sin saltar columna
		FinPara
		// Salta de fila.
		escribir ""
	FinPara
	
FinSubProceso
