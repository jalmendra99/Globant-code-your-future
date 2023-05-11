// Clase 18 - Prácticos - Ejercicio 3 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa que rellene un vector de tamaño N, 
// con valores ingresados por el usuario. 
// A continuación, se debe buscar un elemento dentro del arreglo 
// (el número a buscar también debe ser ingresado por el usuario). 
// El programa debe indicar la posición donde se encuentra el valor. 
// En caso que el número se encuentre repetido dentro del arreglo 
// se deben imprimir todas las posiciones donde se encuentra ese valor.
// Finalmente, en caso que el número a buscar no está adentro del arreglo se debe mostrar un mensaje.


// Principal.
Algoritmo clase18_practicos_ejercicio3
	
	// Definición de variables.
	definir vector, posicion, n, x como entero	
	definir encontrado Como Logico
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se solicitará ingresar un número n para crear un vector con n valores, "
	escribir sin saltar "luego se solicitará ingresar esos n valores y finalmente se solicitará "
	escribir sin saltar "ingresar un número para buscarlo en el vector. Si se encuentra se mostrará "
	escribir            "la posición donde fué encontrado."
	
	// Se solicita el número n al usuario...	
	// Se fuerza a que esté entre 1 y 10 solamente para que el vector sea chico y se pueda verificar facilmente.
	Hacer
		escribir "Ingrese un número n para crear el vector."
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona el vector al tamaño "n" ingresado por el usuario.
	Dimension vector[n]
	
	// se fuerza a que cada valor ingresado esté entre 1 y 10 (para poder verificar facilmente).
	para posicion = 0 hasta n - 1 con paso 1 hacer
		Hacer
			escribir "Ingrese un número entero para vector[", posicion, "]: "
			leer vector[posicion]		
		Mientras Que vector[posicion] < 1 o vector[posicion] > 10
	finpara
	
	// Se pide al usuario un número entre 1 y 10 para buscar en el vector.
	// Se fuerza a que el número ingresado esté entre 1 y 10.
	Hacer
		escribir "Ingrese un número x para buscar en el vector."
		leer x
	Mientras Que x < 1 o x > 10
	
	// se busca al elemento x en el vector[n].
	encontrado = Falso
	// Para todas las posiciones del vector..
	para posicion = 0 hasta n - 1 con paso 1 hacer
		// Si se encuentra el número x en alguna posición.
		si vector[posicion] = x Entonces
			// Se muestra por pantlla la posición.
			escribir "Se encontró el número ", x, " en vector[", posicion, "]"
			encontrado = Verdadero
		finsi
	finpara
	
	// Si no se encontró el elemento x en ninguna posición del vector.
	si no encontrado Entonces
		escribir "El número ", x, " no se encontró en el vector."
	FinSi
	
	/////////// DEBUG INFO.
	// Se muestran todos los valores del vector para comprobar visualmente.
	escribir ""
	escribir sin saltar "El vector ingresado originalmente fué: "
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		escribir sin saltar vector[posicion], " "
	FinPara
	escribir ""
	
FinAlgoritmo
