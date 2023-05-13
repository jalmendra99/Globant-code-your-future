// Clase 12 - Extras - Ejercicio 2
// Fer V - jalmendra99@gmail.com
//
// 2. Implementar una funci�n que permita obtener el valor absoluto de un n�mero 
// y otra que obtenga la ra�z cuadrada. Para ello utilice las funciones abs() y rc() de PseInt.


// Principal.
Algoritmo ejercicio2
	
	// Definici�n de variables.
	definir num Como real
	
	// Inicializaci�n de variables.
	num = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero y se calcularan su valor absoluto y su ra�z cuadrada."
	
	// Se solicita la informaci�n al usuario.	
	escribir "Ingrese un n�mero: " sin saltar
	leer num
	
	// Se calcula el valor absoluto del n�mero num usando la funci�n solicitada.
	// Y se presenta el resultado por pantalla.
	escribir "El valor absoluto de ", num, " es ", absoluto(num), "."
	
	// Se calcula la ra�z cuadrada del n�mero num usando la funci�n solicitada.
	// Y se presenta el resultado por pantalla.
	escribir "La ra�z cuadrada de ", absoluto(num), " es ", raizCuadrada(num), "."
	
FinAlgoritmo


// Funci�n absoluto()
// Retorna el valor absoluto del n�mero num.
Funcion retorno = absoluto (num)
	definir retorno Como real
	
	retorno = abs(num)
	
fin funcion


// Funci�n raizCuadrada
// Retorna la ra�z cuadrada del n�mero num.
// No se puede calcular la ra�z cuadrada de un n�mero negativo, 
// por eso se usa la funci�n absoluto()
Funcion retorno = raizCuadrada (num)
	definir retorno Como real
	
	retorno = rc(absoluto(num))
	
fin funcion
