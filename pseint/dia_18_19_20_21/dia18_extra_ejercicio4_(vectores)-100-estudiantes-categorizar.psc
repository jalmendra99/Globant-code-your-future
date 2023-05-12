// Clase 18 - Extras - Ejercicio 4 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Crear un vector que contenga 100 notas de 100 supuestos estudiantes, 
// con valores entre 0 y 20 generadas aleatoriamente mediante el uso de la funci�n 
// azar() o aleatorio() de PseInt. 
// Luego, de acuerdo a las notas contenidas, el programa debe indicar cu�ntos estudiantes son:
// a)! Deficientes 0-5 
// b)! Regulares 6-10 
// c)! Buenos 11-15 
// d)! Excelentes 16-20


// Principal.
Algoritmo clase18_extras_ejercicio4
	
	// Definici�n de variables.
	definir vector, posicion como entero
	
	Dimension vector[100]
	
	// Para contabilizar las distintas categor�as de alumnos.
	definir deficientes, regulares, buenos, excelentes como entero	
	
	// Inicializaci�n de variables.
	deficientes = 0
	regulares = 0
	buenos = 0
	excelentes = 0
	
	// Se informa la premisa al usuario.
	escribir "Se crear� un vector de tama�o 100 y se llenar� de numeros generados " sin saltar
	escribir "al azar entre 0 y 20 que representar�n las notas de 100 alumnos. Luego " sin saltar
	escribir "se mostrar�, de acuerdo a esas notas, cuantos alumnos son deficientes (0-5), " sin saltar
	escribir "regulares (6-10), buenos (11-15) o excelentes (16-20)."
	
	// Se llena el vector con 100 notas aleatorias entre 0 y 20.
	para posicion = 0 hasta 100 - 1 con paso 1 Hacer
		vector[posicion] = Aleatorio(0, 20)
		
		segun vector[posicion]
			0 o 1 o 2 o 3 o 4 o 5 :  deficientes = deficientes + 1
			6 o 7 o 8 o 9 o 10 :     regulares = regulares + 1
			11 o 12 o 13 o 14 o 15 : buenos = buenos + 1
			16 o 17 o 18 o 19 o 20 : excelentes = excelentes + 1
			de otro modo: escribir "Hubo un error."				
		FinSegun
	FinPara
	
	// Se muestra la informaci�n solicitada. 
	Escribir "La cantidad de alumnos..."
	escribir "- Deficientes: ", deficientes, "."
	escribir "- Regulares:   ", regulares,   "."
	escribir "- Buenos:      ", buenos,      "."
	escribir "- Excelentes:  ", excelentes,  "."
	
	// Se muestra la informaci�n del vector para poder verificar visualmente por pantalla.
	escribir "El vector de notas es:"
	imprimeVector(vector, 100)
	
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

