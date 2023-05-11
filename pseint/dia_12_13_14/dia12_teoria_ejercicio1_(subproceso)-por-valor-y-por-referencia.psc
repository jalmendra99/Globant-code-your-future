// Clase 12 - teor�a - Ejercicio 1 - p�gina 5
// Fer V - jalmendra99@gmail.com
//
// Copia, pega y ejecuta el c�digo. Analiza qu� est� sucediendo

Algoritmo valorVSreferencia 
	Definir num Como Entero 
	num = 2 
	Escribir num 
	Escribir "Ahora enviamos el n�mero a la funci�n por valor y el resultado es:" 
	elevarAlCuadradoPorValor(num) 
	Escribir num 
	Escribir "***********" 
	Escribir "Ahora enviamos el n�mero a la funci�n por referencia y el resultado es:" 
	elevarAlCuadradoPorReferencia(num) 
	Escribir num 
FinAlgoritmo


SubProceso elevarAlCuadradoPorValor(num Por Valor) 
	num = num * num 
FinSubProceso

SubProceso elevarAlCuadradoPorReferencia(num Por Referencia) 
	num = num * num 
FinSubProceso

// Cuando se env�a por referencia, se modifica el valor del argumento num en el algoritmo.
// Pero cuando num se env�a por valor, no cambia su valor en el algoritmo. Solo en el subproceso.