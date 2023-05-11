// Clase 12 - Prácticos - Ejercicio 13 - página 3
// Fer V - jalmendra99@gmail.com
//
// Realizar una función que reciba un numero ingresado por el usuario 
// y averigüe si el número es capicúa o no (Por ejemplo: 12321). 
// Nota: recordar el uso del MOD y el Trunc. 
// No podemos transformar el numero a cadena para realizar el ejercicio.


// Principal.
Algoritmo ejercicio13
	
	// Definición de variables.
	definir num Como entero
	
	// Inicialización de variables.
	num = 0	
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número entero positivo y se verificará si el mismo es capicúa."
	
	// Se solicita la información al usuario.	
	// Se fuerza a que el número ingresado sea mayor o igual a cero.
	Hacer
		escribir "Ingrese un número entero positivo: "
		leer num		
	Mientras Que num < 0
	
	// Se verifica si el número ingresado es capicúa usando la función solicitada.
	// Y se presenta el resultado por pantalla.
	si EsCapicua(num) Entonces
		escribir "El número ", num, " ES capicúa."
	SiNo
		escribir "El número ", num, " NO ES capicúa."
	FinSi	
	
FinAlgoritmo


// Función Capicua
// Retorna Verdadero si el entero 'num' es capicúa.
// Retorna Falso sino.
Funcion retorno = EsCapicua (num)
	definir retorno Como logico	
	definir digitos, temporal, i Como Entero
	
	retorno = Falso
	
	digitos = 1
	
	// Se toma una copia temporal de num, para no modificar num.
	temporal = num
	
	// Se calcula la cantidad de dígitos que tiene num
	mientras trunc(temporal / 10) > 0 Hacer
		digitos = digitos + 1
		temporal = trunc(temporal / 10)
	FinMientras
	
	///////////////escribir num, " tiene ", digitos, " dígitos."
	
	// Volvemos a tomar una copia de num.
	temporal = num
	
	i = 1
	retorno = Verdadero
	mientras (i <= digitos / 2) y retorno == Verdadero Hacer
		/////////////escribir sin saltar "pasada ", i, " - "
		
		si Digito(num, i) <> digito(num, digitos - i + 1) Entonces
			retorno = Falso			
		SiNo
			retorno = Verdadero
		FinSi
		
		i = i + 1
		
		///////////////escribir retorno		
	FinMientras
	
fin funcion


// Función Digito
// Retorna el dígito de la posición 'n' perteneciente al entero 'num'.
// ej: Digito(2, 12342) retorna 4
//     Digito(3, 12342) retorna 3
//     Digito(1, 12342) retorna 2
funcion retorno = Digito (num, posicion)
	definir retorno Como Entero
	
	// ej: 2, 12342		3, 12342	1, 12342
	//           42		     342	       2
	retorno = num mod (10 ^	posicion)
	//           4		     3	           2
	retorno = trunc ( retorno / 10 ^ (posicion -1))	
	
FinFuncion
