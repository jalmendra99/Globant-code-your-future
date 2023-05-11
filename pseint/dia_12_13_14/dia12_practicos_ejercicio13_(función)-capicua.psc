// Clase 12 - Pr�cticos - Ejercicio 13 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Realizar una funci�n que reciba un numero ingresado por el usuario 
// y averig�e si el n�mero es capic�a o no (Por ejemplo: 12321). 
// Nota: recordar el uso del MOD y el Trunc. 
// No podemos transformar el numero a cadena para realizar el ejercicio.


// Principal.
Algoritmo ejercicio13
	
	// Definici�n de variables.
	definir num Como entero
	
	// Inicializaci�n de variables.
	num = 0	
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero entero positivo y se verificar� si el mismo es capic�a."
	
	// Se solicita la informaci�n al usuario.	
	// Se fuerza a que el n�mero ingresado sea mayor o igual a cero.
	Hacer
		escribir "Ingrese un n�mero entero positivo: "
		leer num		
	Mientras Que num < 0
	
	// Se verifica si el n�mero ingresado es capic�a usando la funci�n solicitada.
	// Y se presenta el resultado por pantalla.
	si EsCapicua(num) Entonces
		escribir "El n�mero ", num, " ES capic�a."
	SiNo
		escribir "El n�mero ", num, " NO ES capic�a."
	FinSi	
	
FinAlgoritmo


// Funci�n Capicua
// Retorna Verdadero si el entero 'num' es capic�a.
// Retorna Falso sino.
Funcion retorno = EsCapicua (num)
	definir retorno Como logico	
	definir digitos, temporal, i Como Entero
	
	retorno = Falso
	
	digitos = 1
	
	// Se toma una copia temporal de num, para no modificar num.
	temporal = num
	
	// Se calcula la cantidad de d�gitos que tiene num
	mientras trunc(temporal / 10) > 0 Hacer
		digitos = digitos + 1
		temporal = trunc(temporal / 10)
	FinMientras
	
	///////////////escribir num, " tiene ", digitos, " d�gitos."
	
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


// Funci�n Digito
// Retorna el d�gito de la posici�n 'n' perteneciente al entero 'num'.
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
