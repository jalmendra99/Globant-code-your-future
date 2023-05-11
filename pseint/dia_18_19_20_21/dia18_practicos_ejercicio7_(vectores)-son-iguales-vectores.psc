// Clase 18 - Prácticos - Ejercicio 7 - página 3
// Fer V - jalmendra99@gmail.com
//
// Crear un subproceso que rellene dos arreglos de tamaño n, 
// con números aleatorios. Después, hacer una función que reciba los dos arreglos 
// y diga si todos sus valores son iguales o no. 
// La función debe devolver el resultado de está validación, 
// para mostrar el mensaje en el algoritmo. 
// Nota: recordar el uso de las variables de tipo lógico.


// Principal.
Algoritmo clase18_practicos_ejercicio7
	
	// Definición de variables.
	definir vector1, vector2, posicion, n como entero	
	definir sonIguales Como Logico
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se solicitará ingresar un número n para crear dos vectores de tamaño n. "
	escribir sin saltar "Luego se rellenarn ambos vectores con números aleatorios y después se "
	escribir            "compararán para ver si todos sus valores son iguales o no."
	
	// Se solicita el número n al usuario...	
	// Se fuerza a que esté entre 1 y 10.
	Hacer
		escribir "Ingrese un número n para crear los vectores (de 1 a 10):"
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensionan los vectores al tamaño "n" ingresado por el usuario.
	dimension vector1[n]
	dimension vector2[n]
	
	// Se llenan ambos vectores con números aleatorios.
	llenarVector(vector1, n)
	llenarVector(vector2, n)
	
	// Se verifica si los vectores son iguales o no usando la función solicitada.
	sonIguales = compararVectores(vector1, vector2, n)
	
	si sonIguales Entonces
		escribir "¡Ambos vectores son iguales!"
	SiNo
		escribir "Los vectores son distintos."
	FinSi
	
	////////// DEBUG INFO.
	// Se muestran ambos vectores para que el usuario pueda confirmar visualmente el resultado.
	escribir "El vector 1 es:"
	muestraVector(vector1, n)
	escribir "El vector 2 es:"
	muestraVector(vector2, n)
	
FinAlgoritmo


// Subprograma llenarVector
// Rellena un "vector" de tamaño n con números aleatorios.
SubProceso llenarVector(vector por referencia, n)
	
	definir posicion Como Entero
	
	// Para cada posición del vector
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		// Se le asigna a la misma un número aleatorio entre 0 y 9 (para simplificar las comprobaciones).
		vector[posicion] = Aleatorio(0, 9) 
	FinPara
	
	// Se agrega un salto de línea para que la salida quede prolija.
	escribir ""
	
FinSubProceso


// Función compararVectores
// Devuelve Verdadero solo si los vectores son iguales. (sinó devuelve Falso).
funcion iguales = compararVectores(vector1 Por Referencia, vector2 Por Referencia, n)
	definir iguales Como Logico
	definir posicion Como Entero
	
	iguales = Verdadero
	posicion = 0	
	
	// Recorre todas las posiciones del vector para comparar sus equivalentes en vector2
	// y se detiene solamente cuando no haya mas posiciones por recorrer, 
	// o cuando encuentre algun valor que sea distinto en la misma posición para ambos vectores.
	Hacer
		
		// Si se encuentra una posición en la que los vectores no son iguales, se corta el ciclo
		// asignando Falso a "iguales"
		si vector1[posicion] <> vector2[posicion] Entonces
			iguales = Falso
		FinSi
		
		posicion = posicion + 1
	Mientras Que iguales == Verdadero y posicion < n - 1
	
FinFuncion


// Subprograma muestraVector
// Muestra un "vector" de n caracteres.
SubProceso muestraVector(vector por referencia, n)
	
	definir posicion Como Entero
	
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		escribir sin saltar vector[posicion] " "
	FinPara
	
	// Se agrega un salto de línea para que la salida quede prolija.
	escribir ""
	
FinSubProceso
