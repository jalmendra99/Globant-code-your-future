// Clase 18 - Pr�cticos - Ejercicio 3 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que rellene un vector de tama�o N, 
// con valores ingresados por el usuario. 
// A continuaci�n, se debe buscar un elemento dentro del arreglo 
// (el n�mero a buscar tambi�n debe ser ingresado por el usuario). 
// El programa debe indicar la posici�n donde se encuentra el valor. 
// En caso que el n�mero se encuentre repetido dentro del arreglo 
// se deben imprimir todas las posiciones donde se encuentra ese valor.
// Finalmente, en caso que el n�mero a buscar no est� adentro del arreglo se debe mostrar un mensaje.


// Principal.
Algoritmo clase18_practicos_ejercicio3
	
	// Definici�n de variables.
	definir vector, posicion, n, x como entero	
	definir encontrado Como Logico
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero n para crear un vector con n valores, " sin saltar
	escribir "luego se solicitar� ingresar esos n valores y finalmente se solicitar� " sin saltar
	escribir "ingresar un n�mero para buscarlo en el vector. Si se encuentra se mostrar� " sin saltar
	escribir "la posici�n donde fu� encontrado."
	
	// Se solicita el n�mero n al usuario...	
	// Se fuerza a que est� entre 1 y 10 solamente para que el vector sea chico y se pueda verificar facilmente.
	Hacer
		escribir "Ingrese un n�mero n para crear el vector: " sin saltar
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona el vector al tama�o "n" ingresado por el usuario.
	Dimension vector[n]
	
	// se fuerza a que cada valor ingresado est� entre 1 y 10 (para poder verificar facilmente).
	para posicion = 0 hasta n - 1 con paso 1 hacer
		Hacer
			escribir "Ingrese un n�mero entero (entre 1 y 10) para vector[", posicion, "]: " sin saltar
			leer vector[posicion]
			
			// Si el n�mero ingresado no est� dentro del rango aceptado, se muestra un mensaje.
			si vector[posicion] < 1 o vector[posicion] > 10 Entonces
				escribir "Por favor ingrese un n�mero entre 1 y 10."
			FinSi
		Mientras Que vector[posicion] < 1 o vector[posicion] > 10
	finpara
	
	// Se pide al usuario un n�mero entre 1 y 10 para buscar en el vector.
	// Se fuerza a que el n�mero ingresado est� entre 1 y 10.
	Hacer
		escribir "Ingrese un n�mero x para buscar en el vector."
		leer x
	Mientras Que x < 1 o x > 10
	
	// se busca al elemento x en el vector[n].
	encontrado = Falso
	// Para todas las posiciones del vector..
	para posicion = 0 hasta n - 1 con paso 1 hacer
		// Si se encuentra el n�mero x en alguna posici�n.
		si vector[posicion] = x Entonces
			// Se muestra por pantlla la posici�n.
			escribir "Se encontr� el n�mero ", x, " en vector[", posicion, "]"
			encontrado = Verdadero
		finsi
	finpara
	
	// Si no se encontr� el elemento x en ninguna posici�n del vector.
	si no encontrado Entonces
		escribir "El n�mero ", x, " no se encontr� en el vector."
	FinSi
	
	// Se muestran todos los valores del vector para comprobar visualmente por pantalla.
	escribir "El vector ingresado originalmente fu�: "
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		escribir sin saltar vector[posicion], " "
	FinPara
	// Se imprime un salto de l�nea.
	escribir ""
FinAlgoritmo
