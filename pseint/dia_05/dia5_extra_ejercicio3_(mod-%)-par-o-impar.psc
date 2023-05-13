// Clase 5 - Extra - Ejercicio 3 - página 2
// Fer V - jalmendra99@gmail.com
//
// Solicitar al usuario que ingrese dos números enteros y determinar si ambos 
// son pares o impares. Mostrar en pantalla un mensaje que indique 
// "Ambos números son pares" siempre y cuando cumplan con la condición. 
// En caso contrario se deberá imprimir el siguiente mensaje 
// "Los números no son pares, o uno de ellos no es par".
// Nota: investigar la función mod de PseInt.

Algoritmo extra_ejercicio3

	// Definición de variables.
	definir nro1, nro2 como entero
	definir sonPar Como Logico
	
	// Inicialización de variables.
	nro1 = 0
	nro2 = 0
	sonPar = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedira ingresar dos números enteros y se calculará si ambos son pares o no."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el primer número: " sin saltar
	leer nro1
	escribir "Ingrese el segundo número: " sin saltar
	leer nro2
	
	// Se verifica si ambos números son par
	sonPar = (nro1 mod 2 == 0) y (nro2 mod 2 == 0)
	
	// Se muestra el mensaje correspondiente en pantalla.
	si sonPar Entonces		
		imprimir "Ambos números son pares."
	SiNo
		imprimir "Los números no son pares, o uno de ellos no es par."
	FinSi	

FinAlgoritmo
