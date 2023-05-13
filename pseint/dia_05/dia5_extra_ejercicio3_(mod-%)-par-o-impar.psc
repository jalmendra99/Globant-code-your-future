// Clase 5 - Extra - Ejercicio 3 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Solicitar al usuario que ingrese dos n�meros enteros y determinar si ambos 
// son pares o impares. Mostrar en pantalla un mensaje que indique 
// "Ambos n�meros son pares" siempre y cuando cumplan con la condici�n. 
// En caso contrario se deber� imprimir el siguiente mensaje 
// "Los n�meros no son pares, o uno de ellos no es par".
// Nota: investigar la funci�n mod de PseInt.

Algoritmo extra_ejercicio3

	// Definici�n de variables.
	definir nro1, nro2 como entero
	definir sonPar Como Logico
	
	// Inicializaci�n de variables.
	nro1 = 0
	nro2 = 0
	sonPar = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedira ingresar dos n�meros enteros y se calcular� si ambos son pares o no."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese el primer n�mero: " sin saltar
	leer nro1
	escribir "Ingrese el segundo n�mero: " sin saltar
	leer nro2
	
	// Se verifica si ambos n�meros son par
	sonPar = (nro1 mod 2 == 0) y (nro2 mod 2 == 0)
	
	// Se muestra el mensaje correspondiente en pantalla.
	si sonPar Entonces		
		imprimir "Ambos n�meros son pares."
	SiNo
		imprimir "Los n�meros no son pares, o uno de ellos no es par."
	FinSi	

FinAlgoritmo
