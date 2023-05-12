// Clase 18 - Extras - Ejercicio 6 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Crear una funci�n que devuelva la diferencia que hay entre 
// el valor m�s chico de un arreglo y su valor m�s grande.


// Principal.
Algoritmo clase18_extras_ejercicio6
	
	// Definici�n de variables.
	definir vector, posicion, n, maximo, minimo, diferencia como entero		
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero n para crear un vector de tama�o n, y " sin saltar
	escribir "luego se llenar� al mismo con valores al azar. Luego se calcular� la " sin saltar
	escribir "diferencia entre su valor m�s chico y su valor m�s grande."
	
	// Se solicita el n�mero n al usuario...	
	// Se fuerza a que est� entre 1 y 10.
	Hacer
		escribir "Ingrese un n�mero n para crear el vector (de 1 a 10): " sin saltar
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensiona al vector usando el n�mero "n" ingresado por el usuario.
	Dimension vector[n]
	
	
	// Para todas las posiciones del vector...
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		
		// Se llena el vector con n n�meros aleatorios entre 0 y 9 (para que las comprobaciones sean sencillas).
		vector[posicion] = Aleatorio(0, 9)
		
		// Se usa el primer valor del vector para inicializar los valores del m�ximo y el m�nimo.
		si posicion = 0 Entonces
			minimo = vector[posicion]
			maximo = vector[posicion]
		FinSi
		
		si vector[posicion] > maximo Entonces
			maximo = vector[posicion]
		FinSi
		si vector[posicion] < minimo Entonces
			minimo = vector[posicion]
		FinSi
	FinPara
	
	// Se calcula la diferencia entre el m�ximo valor del vector y el m�nimo valor.
	diferencia = maximo - minimo
	
	// Se imprime la informaci�n solicitada.
	escribir "La diferencia entre el valor m�s chico y el m�s grande es de ", diferencia, "."
	
	// Se imprimen los valores del vector para poder verificar visualmente por pantalla.
	escribir Sin Saltar "El vector es: "
	imprimeVector(vector, n)
	escribir "El valor m�ximo es: ", maximo
	escribir "El valor m�nimo es: ", minimo	
	
finAlgoritmo


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
