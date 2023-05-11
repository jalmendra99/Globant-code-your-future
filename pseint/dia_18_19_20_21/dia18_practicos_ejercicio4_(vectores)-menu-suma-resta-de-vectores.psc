// Clase 18 - Pr�cticos - Ejercicio 4 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa con el siguiente men� y le pregunte al usuario
// que quiere hacer hasta que ingrese la opci�n Salir:
// A. Llenar Vector A. Este vector es de tama�o N y se debe llenar 
//    de manera aleatoria usando la funci�n Aleatorio(valorMin, valorMax) de PseInt.
// B. Llenar Vector B. Este vector tambi�n es de tama�o N y se llena de manera aleatoria.
// C. Llenar Vector C con la suma de los vectores A y B. 
//    La suma se debe realizar posicion a posicion. 
//    Ejemplo: C = A + B
// D. Llenar Vector C con la resta de los vectores B y A. 
//    La resta se debe realizar posicion a posicion. 
//    Ejemplo: C = B - A
// E. Mostrar. Esta opci�n debe permitir al usuario decidir qu� vector quiere mostrar: 
//    Vector A, B, o C.
// F. Salir.
// NOTA: El rango de los n�meros aleatorios para los Vectores ser� de [-100 a 100]. 
// La longitud para todos los vectores debe ser la misma, por lo tanto, 
// esa informaci�n s�lo se solicitar� una vez.



// Principal.
Algoritmo clase18_practicos_ejercicio4
	
	// Definici�n de variables.
	definir vectorA, vectorB, vectorC, posicion, n como entero	
	definir encontrado Como Logico
	definir eleccion, eleccion2 Como Caracter
	
	// Un vector no inicializado (sin valores asignados) d� errores al intentar imprimirlo
	// o al intentar realizar la suma y la resta.
	// Por eso antes de realizar cualquiera de esas operaci�nes, se verificar� 
	// si el mismo ha sido inicializado.
	definir vectorAInicializado, vectorBInicializado, vectorCInicializado Como Logico
	
	// Inicializadi�n de variables.
	vectorAInicializado = Falso
	vectorBInicializado = Falso
	vectorCInicializado = Falso
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se solicitar� ingresar un n�mero n para crear tres vectores de tama�o n, "
	escribir            "y luego se mostrar� un men� con distintas opciones."
	
	// Se solicita el n�mero n al usuario...	
	// Se fuerza a que est� entre 1 y 10.
	Hacer
		escribir "Ingrese un n�mero n para crear los vectores (de 1 a 10):"
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensionan los vectores al tama�o "n" ingresado por el usuario.
	Dimension vectorA[n]
	dimension vectorB[n]
	dimension vectorC[n]
	
	// Se muestra el men� de opciones solicitado.
	Hacer
		
		escribir "------------------------------------------------------"
		escribir "A. Llenar Vector A de manera aleatoria."
		escribir "B. Llenar Vector B de manera aleatoria."
		escribir "C. Llenar Vector C con la suma de los vectores A + B."
		escribir "D. Llenar Vector C con la resta de los vectores B - A."
		escribir "E. Mostrar un vector."
		escribir "F. Salir."
		escribir "------------------------------------------------------"
		
		// Se fuerza a que la elecci�n del usuario est� entre las letras A y F.
		// Funciona con may�sculas y minusculas.
		Hacer			
			escribir Sin Saltar "Seleccione una opci�n: "
			leer eleccion
		Mientras Que Mayusculas(eleccion) < "A" o Mayusculas(eleccion) > "F"
		
		segun mayusculas(eleccion)
			"A" : // llenar vector a
				llenarVector(vectorA, n)
				vectorAInicializado = Verdadero
				escribir "Se llen� el vector A con valores aleatorios. Para verlo elija la opci�n E."
				
			"B" : // llenar vector b
				llenarVector(vectorB, n)
				vectorBInicializado = Verdadero
				escribir "Se llen� el vector B con valores aleatorios. Para verlo elija la opci�n E."
				
			"C" : // sumar a + b
				// Si los vectores A y B ya han sido inicializados se puede realizar la suma.
				// sin� se muestra un mensaje.
				si vectorAInicializado y vectorBInicializado entonces
					sumaVectores(vectorA, vectorB, vectorC, n)
					vectorCInicializado = Verdadero
					escribir "Se sumaron los vectores A + B. Para ver el resultado (en el vector C) elija la opci�n E."
				SiNo
					escribir sin saltar "No se puede realizar la operaci�n porque al menos uno de los vectores (A/B) "
					escribir            "no ha sido inicializado."
				FinSi				
				
			"D" : // restar b - a				
				// Si los vectores A y B ya han sido inicializados se puede realizar la resta.
				// sin� se muestra un mensaje.
				si vectorAInicializado y vectorBInicializado entonces
					restaVectores(vectorB, vectorA, vectorC, n)
					vectorCInicializado = Verdadero
					escribir "Se restaron los vectores B - A. Para ver el resultado (en el vector C) elija la opci�n E."
				SiNo
					escribir sin saltar "No se puede realizar la operaci�n porque al menos uno de los vectores (A/B) "
					escribir            "no ha sido inicializado."
				FinSi
				
			"E" : // mostrar vector			
				hacer
					escribir "Elija el vector a mostrar (A, B o C): "
					leer eleccion2
				mientras que Mayusculas(eleccion2) < "A" o Mayusculas(eleccion2) > "C"
				
				escribir "Mostrando el vector ", eleccion2, "."
				
				// Muestra el vector correspondiente a la letra elegida. (a, b, c, A, B, C).
				segun mayusculas(eleccion2) Hacer
					
					"A": // Se muestra el vector A (si fu� inicializado. sin� se muestra un mensaje).
						si vectorAInicializado Entonces
							imprimeVector(vectorA, n)
						SiNo
							escribir "El vector A todav�a no fu� inicializado. Nada para mostrar."
						FinSi
						
					"B": // Se muestra el vector B (si fu� inicializado. sin� se muestra un mensaje). 
						si vectorBInicializado Entonces
							imprimeVector(vectorB, n)
						SiNo
							escribir "El vector B todav�a no fu� inicializado. Nada para mostrar."
						FinSi
						
					"C": // Se muestra el vector C (si fu� inicializado. sin� se muestra un mensaje).
						si vectorCInicializado Entonces
							imprimeVector(vectorC, n)
						SiNo
							escribir "El vector C todav�a no fu� inicializado. Nada para mostrar."
						FinSi
						
				FinSegun
				
		FinSegun
		
	Mientras Que mayusculas(eleccion) <> "F"	 // Opcion F = Salir.
	
FinAlgoritmo


// Subprograma llenarVector.
// Llena el "vector" de tama�o "n" con n�meros al azar entre -100 y 100.
SubProceso llenarVector(vector por referencia, n)
	
	definir posicion Como Entero
	
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		vector[posicion] = aleatorio(-100,100)	
	FinPara	
	
FinSubProceso


// Subprograma sumaVectores (todos de tama�o n)
// Suma el "vector1" m�s el "vector2" y guarda el resultado en "vector3".
SubProceso sumaVectores(vector1 por referencia, vector2 por referencia, vector3 por referencia, n)
	
	definir posicion Como Entero
	
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		vector3[posicion] = vector1[posicion] + vector2[posicion]
	FinPara	
	
FinSubProceso


// Subprograma restaVectores (todos de tama�o n)
// Resta "vector1" menos "vector2" y guarda el resultado en "vector3".
SubProceso restaVectores(vector1 por referencia, vector2 por referencia, vector3 por referencia, n)
	
	definir posicion Como Entero
	
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		vector3[posicion] = vector1[posicion] - vector2[posicion]
	FinPara	
	
FinSubProceso


// Subprograma imprimeVector
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
