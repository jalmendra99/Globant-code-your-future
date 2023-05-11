// Clase 18 - Pr�cticos - Ejercicio 7 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Crear un subproceso que rellene dos arreglos de tama�o n, 
// con n�meros aleatorios. Despu�s, hacer una funci�n que reciba los dos arreglos 
// y diga si todos sus valores son iguales o no. 
// La funci�n debe devolver el resultado de est� validaci�n, 
// para mostrar el mensaje en el algoritmo. 
// Nota: recordar el uso de las variables de tipo l�gico.


// Principal.
Algoritmo clase18_practicos_ejercicio7
	
	// Definici�n de variables.
	definir vector1, vector2, posicion, n como entero	
	definir sonIguales Como Logico
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se solicitar� ingresar un n�mero n para crear dos vectores de tama�o n. "
	escribir sin saltar "Luego se rellenarn ambos vectores con n�meros aleatorios y despu�s se "
	escribir            "comparar�n para ver si todos sus valores son iguales o no."
	
	// Se solicita el n�mero n al usuario...	
	// Se fuerza a que est� entre 1 y 10.
	Hacer
		escribir "Ingrese un n�mero n para crear los vectores (de 1 a 10):"
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensionan los vectores al tama�o "n" ingresado por el usuario.
	dimension vector1[n]
	dimension vector2[n]
	
	// Se llenan ambos vectores con n�meros aleatorios.
	llenarVector(vector1, n)
	llenarVector(vector2, n)
	
	// Se verifica si los vectores son iguales o no usando la funci�n solicitada.
	sonIguales = compararVectores(vector1, vector2, n)
	
	si sonIguales Entonces
		escribir "�Ambos vectores son iguales!"
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
// Rellena un "vector" de tama�o n con n�meros aleatorios.
SubProceso llenarVector(vector por referencia, n)
	
	definir posicion Como Entero
	
	// Para cada posici�n del vector
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		// Se le asigna a la misma un n�mero aleatorio entre 0 y 9 (para simplificar las comprobaciones).
		vector[posicion] = Aleatorio(0, 9) 
	FinPara
	
	// Se agrega un salto de l�nea para que la salida quede prolija.
	escribir ""
	
FinSubProceso


// Funci�n compararVectores
// Devuelve Verdadero solo si los vectores son iguales. (sin� devuelve Falso).
funcion iguales = compararVectores(vector1 Por Referencia, vector2 Por Referencia, n)
	definir iguales Como Logico
	definir posicion Como Entero
	
	iguales = Verdadero
	posicion = 0	
	
	// Recorre todas las posiciones del vector para comparar sus equivalentes en vector2
	// y se detiene solamente cuando no haya mas posiciones por recorrer, 
	// o cuando encuentre algun valor que sea distinto en la misma posici�n para ambos vectores.
	Hacer
		
		// Si se encuentra una posici�n en la que los vectores no son iguales, se corta el ciclo
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
	
	// Se agrega un salto de l�nea para que la salida quede prolija.
	escribir ""
	
FinSubProceso
