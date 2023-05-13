// Clase 12 - Extras - Ejercicio 2
// Fer V - jalmendra99@gmail.com
//
// 2. Implementar una función que permita obtener el valor absoluto de un número 
// y otra que obtenga la raíz cuadrada. Para ello utilice las funciones abs() y rc() de PseInt.


// Principal.
Algoritmo ejercicio2
	
	// Definición de variables.
	definir num Como real
	
	// Inicialización de variables.
	num = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número y se calcularan su valor absoluto y su raíz cuadrada."
	
	// Se solicita la información al usuario.	
	escribir "Ingrese un número: " sin saltar
	leer num
	
	// Se calcula el valor absoluto del número num usando la función solicitada.
	// Y se presenta el resultado por pantalla.
	escribir "El valor absoluto de ", num, " es ", absoluto(num), "."
	
	// Se calcula la raíz cuadrada del número num usando la función solicitada.
	// Y se presenta el resultado por pantalla.
	escribir "La raíz cuadrada de ", absoluto(num), " es ", raizCuadrada(num), "."
	
FinAlgoritmo


// Función absoluto()
// Retorna el valor absoluto del número num.
Funcion retorno = absoluto (num)
	definir retorno Como real
	
	retorno = abs(num)
	
fin funcion


// Función raizCuadrada
// Retorna la raíz cuadrada del número num.
// No se puede calcular la raíz cuadrada de un número negativo, 
// por eso se usa la función absoluto()
Funcion retorno = raizCuadrada (num)
	definir retorno Como real
	
	retorno = rc(absoluto(num))
	
fin funcion
