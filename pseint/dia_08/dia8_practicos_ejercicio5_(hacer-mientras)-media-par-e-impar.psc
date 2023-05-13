// Clase 8 - Prácticos - Ejercicio 5 - página 2
// Fer V - jalmendra99@gmail.com
//
// Hacer un algoritmo para calcular la media de los números pares e impares, 
// sólo se ingresará diez números.

Algoritmo practicos_ejercicio5
	
	// Definición de variables.
	definir num, cantPar, cantImpar, sumPar, sumImpar, contador como entero
	definir mediaPar, mediaImpar como real
	
	// Inicialización de variables.	
	num = 0
	cantPar = 0
	cantImpar = 0
	sumPar = 0
	sumImpar = 0
	mediaPar = 0
	mediaImpar = 0
	contador = 0
	
	// Se informa premisa al usuario.
	escribir "Se solicitará ingresar diez números enteros"
	escribir "y se calculará la media de los pares y de los impares."
	
	// Se continuará solicitando ingresar números enteros 10 veces
	hacer 		
		
		escribir "Ingrese un número entero (restan ", 10 - contador, ") : " sin saltar
		leer num
		
		contador = contador + 1
		
		// Si el número es par
		si num mod 2 == 0 Entonces
			sumPar = sumPar + num
			cantPar = cantPar + 1
		SiNo
			sumImpar = sumImpar + num
			cantImpar = cantImpar + 1
		FinSi		
		
	mientras que (contador < 10)
	
	// Se calcula la media para los pares y los impares.
	// verificando no dividir por cero (cantPar y cantImpar tienen que ser <> 0)
	si cantPar <> 0 entonces
		mediaPar = sumPar / cantPar
	FinSi
	si cantImpar <> 0 Entonces
		mediaImpar = sumImpar / cantImpar	
	FinSi	
	
	// Se presenta la información solicitada por pantalla.
	escribir "La media para los números pares es: ", mediaPar, "."
	escribir "La media para los números impares es: ", mediaImpar, "."
	
FinAlgoritmo
