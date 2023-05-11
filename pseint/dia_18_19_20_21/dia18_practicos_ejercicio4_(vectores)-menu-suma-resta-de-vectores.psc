// Clase 18 - Prácticos - Ejercicio 4 - página 2
// Fer V - jalmendra99@gmail.com
//
// Realizar un programa con el siguiente menú y le pregunte al usuario
// que quiere hacer hasta que ingrese la opción Salir:
// A. Llenar Vector A. Este vector es de tamaño N y se debe llenar 
//    de manera aleatoria usando la función Aleatorio(valorMin, valorMax) de PseInt.
// B. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
// C. Llenar Vector C con la suma de los vectores A y B. 
//    La suma se debe realizar posicion a posicion. 
//    Ejemplo: C = A + B
// D. Llenar Vector C con la resta de los vectores B y A. 
//    La resta se debe realizar posicion a posicion. 
//    Ejemplo: C = B - A
// E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: 
//    Vector A, B, o C.
// F. Salir.
// NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. 
// La longitud para todos los vectores debe ser la misma, por lo tanto, 
// esa información sólo se solicitará una vez.



// Principal.
Algoritmo clase18_practicos_ejercicio4
	
	// Definición de variables.
	definir vectorA, vectorB, vectorC, posicion, n como entero	
	definir encontrado Como Logico
	definir eleccion, eleccion2 Como Caracter
	
	// Un vector no inicializado (sin valores asignados) dá errores al intentar imprimirlo
	// o al intentar realizar la suma y la resta.
	// Por eso antes de realizar cualquiera de esas operaciónes, se verificará 
	// si el mismo ha sido inicializado.
	definir vectorAInicializado, vectorBInicializado, vectorCInicializado Como Logico
	
	// Inicializadión de variables.
	vectorAInicializado = Falso
	vectorBInicializado = Falso
	vectorCInicializado = Falso
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se solicitará ingresar un número n para crear tres vectores de tamaño n, "
	escribir            "y luego se mostrará un menú con distintas opciones."
	
	// Se solicita el número n al usuario...	
	// Se fuerza a que esté entre 1 y 10.
	Hacer
		escribir "Ingrese un número n para crear los vectores (de 1 a 10):"
		leer n
	Mientras Que n < 1 o n > 10
	
	// Se dimensionan los vectores al tamaño "n" ingresado por el usuario.
	Dimension vectorA[n]
	dimension vectorB[n]
	dimension vectorC[n]
	
	// Se muestra el menú de opciones solicitado.
	Hacer
		
		escribir "------------------------------------------------------"
		escribir "A. Llenar Vector A de manera aleatoria."
		escribir "B. Llenar Vector B de manera aleatoria."
		escribir "C. Llenar Vector C con la suma de los vectores A + B."
		escribir "D. Llenar Vector C con la resta de los vectores B - A."
		escribir "E. Mostrar un vector."
		escribir "F. Salir."
		escribir "------------------------------------------------------"
		
		// Se fuerza a que la elección del usuario esté entre las letras A y F.
		// Funciona con mayúsculas y minusculas.
		Hacer			
			escribir Sin Saltar "Seleccione una opción: "
			leer eleccion
		Mientras Que Mayusculas(eleccion) < "A" o Mayusculas(eleccion) > "F"
		
		segun mayusculas(eleccion)
			"A" : // llenar vector a
				llenarVector(vectorA, n)
				vectorAInicializado = Verdadero
				escribir "Se llenó el vector A con valores aleatorios. Para verlo elija la opción E."
				
			"B" : // llenar vector b
				llenarVector(vectorB, n)
				vectorBInicializado = Verdadero
				escribir "Se llenó el vector B con valores aleatorios. Para verlo elija la opción E."
				
			"C" : // sumar a + b
				// Si los vectores A y B ya han sido inicializados se puede realizar la suma.
				// sinó se muestra un mensaje.
				si vectorAInicializado y vectorBInicializado entonces
					sumaVectores(vectorA, vectorB, vectorC, n)
					vectorCInicializado = Verdadero
					escribir "Se sumaron los vectores A + B. Para ver el resultado (en el vector C) elija la opción E."
				SiNo
					escribir sin saltar "No se puede realizar la operación porque al menos uno de los vectores (A/B) "
					escribir            "no ha sido inicializado."
				FinSi				
				
			"D" : // restar b - a				
				// Si los vectores A y B ya han sido inicializados se puede realizar la resta.
				// sinó se muestra un mensaje.
				si vectorAInicializado y vectorBInicializado entonces
					restaVectores(vectorB, vectorA, vectorC, n)
					vectorCInicializado = Verdadero
					escribir "Se restaron los vectores B - A. Para ver el resultado (en el vector C) elija la opción E."
				SiNo
					escribir sin saltar "No se puede realizar la operación porque al menos uno de los vectores (A/B) "
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
					
					"A": // Se muestra el vector A (si fué inicializado. sinó se muestra un mensaje).
						si vectorAInicializado Entonces
							imprimeVector(vectorA, n)
						SiNo
							escribir "El vector A todavía no fué inicializado. Nada para mostrar."
						FinSi
						
					"B": // Se muestra el vector B (si fué inicializado. sinó se muestra un mensaje). 
						si vectorBInicializado Entonces
							imprimeVector(vectorB, n)
						SiNo
							escribir "El vector B todavía no fué inicializado. Nada para mostrar."
						FinSi
						
					"C": // Se muestra el vector C (si fué inicializado. sinó se muestra un mensaje).
						si vectorCInicializado Entonces
							imprimeVector(vectorC, n)
						SiNo
							escribir "El vector C todavía no fué inicializado. Nada para mostrar."
						FinSi
						
				FinSegun
				
		FinSegun
		
	Mientras Que mayusculas(eleccion) <> "F"	 // Opcion F = Salir.
	
FinAlgoritmo


// Subprograma llenarVector.
// Llena el "vector" de tamaño "n" con números al azar entre -100 y 100.
SubProceso llenarVector(vector por referencia, n)
	
	definir posicion Como Entero
	
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		vector[posicion] = aleatorio(-100,100)	
	FinPara	
	
FinSubProceso


// Subprograma sumaVectores (todos de tamaño n)
// Suma el "vector1" más el "vector2" y guarda el resultado en "vector3".
SubProceso sumaVectores(vector1 por referencia, vector2 por referencia, vector3 por referencia, n)
	
	definir posicion Como Entero
	
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		vector3[posicion] = vector1[posicion] + vector2[posicion]
	FinPara	
	
FinSubProceso


// Subprograma restaVectores (todos de tamaño n)
// Resta "vector1" menos "vector2" y guarda el resultado en "vector3".
SubProceso restaVectores(vector1 por referencia, vector2 por referencia, vector3 por referencia, n)
	
	definir posicion Como Entero
	
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		vector3[posicion] = vector1[posicion] - vector2[posicion]
	FinPara	
	
FinSubProceso


// Subprograma imprimeVector
// Imprime los valores de un "vector" de tamaño "n".
SubProceso imprimeVector (vector por referencia, n)
	
	definir posicion como entero
	
	// Para cada posición del vector, se imprime el valor del vector en esa posición.
	para posicion = 0 hasta n - 1 con paso 1 Hacer
		// Imprime cada valor del vector.
		escribir Sin Saltar vector[posicion]		
		// Agrega un separador entre cada valor, a menos que sea la última posición
		si posicion <> n - 1 entonces
			escribir sin saltar " "
		finsi
		
	FinPara
	// Imprime un salto de línea para pasar a la siguiente línea en pantalla.
	escribir ""
	
FinSubProceso
