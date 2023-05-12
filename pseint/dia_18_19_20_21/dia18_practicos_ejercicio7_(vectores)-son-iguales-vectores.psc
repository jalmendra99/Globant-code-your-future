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
	escribir "Se solicitar� ingresar un n�mero n para crear dos vectores de tama�o n. " sin saltar
	escribir "Luego se rellenarn ambos vectores con n�meros aleatorios y despu�s se " sin saltar
	escribir "comparar�n para ver si todos sus valores son iguales o no."
	
	// Se solicita el n�mero n al usuario...	
	// Se fuerza a que est� entre 1 y 10.
	Hacer
		escribir "Ingrese un n�mero n para crear los vectores (de 1 a 10): " sin saltar
		leer n
		
		// Si el n�mero ingresado no est� en el rango aceptado, se muestra un mensaje.
		si n < 1 o n > 10 Entonces
			escribir "Por favor ingrese un n�mero entre 1 y 10."
		FinSi
		
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
	
	// Se muestran ambos vectores para que el usuario pueda confirmar visualmente el resultado por pantalla.
	escribir "El vector 1 es:"
	imprimeVector(vector1, n)
	escribir "El vector 2 es:"
	imprimeVector(vector2, n)
	
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



// Subprograma imprimeVector(n)
// Imprime los valores de un "vector" de tama�o "n".
SubProceso imprimeVector (vector por referencia, n)
	
	definir posicion como entero
	
	// Para cada posici�n del vector, se imprime el valor del vector en esa posici�n.
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		// Imprime cada valor del vector.
		escribir Sin Saltar vector[posicion]
		// Agrega un separador entre cada valor, a menos que sea la �ltima posici�n
		si posicion <> n - 1 entonces
			escribir sin saltar " "
		finsi	
		
	FinPara
	// Imprime un salto de l�nea para pasar a la siguiente l�nea en pantalla.
	escribir ""
	
FinSubProceso
