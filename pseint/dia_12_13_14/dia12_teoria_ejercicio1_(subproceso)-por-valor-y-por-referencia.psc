// Clase 12 - teoría - Ejercicio 1 - página 5
// Fer V - jalmendra99@gmail.com
//
// Copia, pega y ejecuta el código. Analiza qué está sucediendo

Algoritmo valorVSreferencia 
	Definir num Como Entero 
	num = 2 
	Escribir num 
	Escribir "Ahora enviamos el número a la función por valor y el resultado es:" 
	elevarAlCuadradoPorValor(num) 
	Escribir num 
	Escribir "***********" 
	Escribir "Ahora enviamos el número a la función por referencia y el resultado es:" 
	elevarAlCuadradoPorReferencia(num) 
	Escribir num 
FinAlgoritmo


SubProceso elevarAlCuadradoPorValor(num Por Valor) 
	num = num * num 
FinSubProceso

SubProceso elevarAlCuadradoPorReferencia(num Por Referencia) 
	num = num * num 
FinSubProceso

// Cuando se envía por referencia, se modifica el valor del argumento num en el algoritmo.
// Pero cuando num se envía por valor, no cambia su valor en el algoritmo. Solo en el subproceso.