// Clase 18 - Extras - Ejercicio 3 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Crear dos vectores que tengan el mismo tama�o 
// (el tama�o se pedir� por teclado) y almacenar en uno de ellos 
// nombres de personas como cadenas. 
// En el segundo vector se debe almacenar la longitud de cada uno 
// de los nombres (para ello puedes usar la funci�n Longitud() de PseInt). 
// Mostrar por pantalla cada uno de los nombres junto con su longitud.


// Principal.
Algoritmo clase18_extras_ejercicio3
	
	// Definici�n de variables.
	definir vectorLongitudes, posicion, n, elemento como entero	
	definir vectorNombres, nombre como cadena	
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero n para crear dos vectores de tama�o n, y " sin saltar
	escribir "luego se solicitar�n ingresar n nombres para llenar el primer vector. Luego " sin saltar
	escribir "se calcular� el tama�o de cada nombre y se guardar� en el segundo vector. "
	escribir "Finalmente se mostrar�n los nombres y sus longitudes."
	
	// Se solicita el n�mero n al usuario...	
	// Se fuerza a que est� entre 1 y 10.
	Hacer
		escribir "Ingrese un n�mero n para crear los vectores (de 1 a 10): " sin saltar
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensionan los vectores al tama�o "n" ingresado por el usuario.
	Dimension vectorNombres[n]
	dimension vectorLongitudes[n]
	
	// Se llena el vector con los valores ingresados por el usuario
	para elemento = 0 hasta n - 1 con paso 1 Hacer		
		
		// Se fuerza a que el tama�o de los nombres no supere los 20 caracteres
		// y no sea cero, para facilitar las comprobaciones.
		hacer
			escribir sin saltar "Ingrese un nombre de hasta 20 caracteres: "
			leer nombre
			
			si longitud(nombre) < 1 o longitud(nombre) > 20 Entonces
				escribir "Por favor solo ingresar nombres que contengan entre 1 y 20 caracteres."
			SiNo
				// Si el nombre ingresado tiene una cantidad de caracteres entre 1 y 20
				// Se agrega el nombre ingresado al vectorNombres.
				vectorNombres[elemento] = nombre
			FinSi			
			
		mientras que longitud(nombre) < 1 o longitud(nombre) > 20
	FinPara	
	
	// Se calculan las longitudes de los nombres del "vectorNombres" y se guardan en el "vectorLongitudes"
	// usando la funci�n solicitada.
	calcularLongitudes(vectorNombres, vectorLongitudes, n)
	
	// Se muestra la informaci�n solicitada. 
	imprimeVectores(vectorNombres, vectorLongitudes, n)
	
finAlgoritmo


// Subprograma calcularLongitudes
// Calcula la longitud de los nombres guardados en "vectorNombres" y las guarda en "vectorLongitudes".
// Ambos vectores de tama�o "n".
SubProceso  calcularLongitudes(vectorNombres por referencia, vectorLongitudes por referencia, n)
	definir posicion Como Entero
	
	// Para cada posici�n en el "vectorNombres", se acumula el valor de la 
	// longitud del nombre que guarda en la misma posici�n del "vectorLongitudes".
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		vectorLongitudes[posicion] = longitud(vectorNombres[posicion])
	FinPara
	
FinSubProceso


// Subprograma imprimeVectores
// Imprime los valores dos vectores a la par cada posici�n al mismo tiempo para ambos.
// Ambos vectores son de tama�o "n".
SubProceso imprimeVectores (vectorNombres por referencia, vectorLongitudes por referencia, n)
	
	definir posicion como entero
	
	// Para cada posici�n de los vectores, se imprimen los valores de ambos al mismo tiempo.
	// O sea: Para la posici�n 0, se imprimen vectorNombres[0] y vectorLongitudes[0], etc...
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		// Imprime cada valor de los vectores.
		escribir "El vector ", posicion + 1, " es: ", vectorNombres[posicion], " y ocupa " sin saltar
		escribir vectorLongitudes[posicion], " caracteres."				
	FinPara
	
FinSubProceso
