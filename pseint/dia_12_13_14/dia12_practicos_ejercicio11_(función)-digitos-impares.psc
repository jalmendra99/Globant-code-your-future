// Clase 12 - Pr�cticos - Ejercicio 11 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e 
// si el n�mero tiene todos sus d�gitos impares (ejemplo: 333, 55, etc.). 
// Para esto vamos a tener que separar el numero en partes 
// (si es un numero de m�s de un digito) y ver si cada n�mero es par o impar. 
// Nota: recordar el uso de la funci�n Mod y Trunc(). 
// No podemos pasar el numero a cadena para realizar el ejercicio.


// Principal.
Algoritmo ejercicio11
	
	// Definici�n de variables.
	definir num Como entero
	
	// Inicializaci�n de variables.
	num = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar un n�mero entero y se verificar� si todos sus d�gitos son o no impares."
	
	// Se solicita la informaci�n al usuario.	
	// Se fuerza a que el n�mero ingresado sea mayor a cero.
	Hacer
		escribir "Ingrese un n�mero entero positivo de dos d�gitos: "
		leer num		
	Mientras Que num <= 0
		
	// Se verifica si todos los d�gitos del n�mero ingresado son impares usando la funci�n solicitada.
	// Y se presenta el resultado por pantalla.
	si TodosDigitosImpares(num) Entonces
		escribir "Todos los d�gitos de ", num, " son impares."
	SiNo
		escribir "NO Todos los d�gitos de ", num, " son impares."
	FinSi
	
FinAlgoritmo


// Funci�n TodosImpares
// Retorna Verdadero si todos los d�gitos de un Entero son impares.
// Retorna Falso sino.
Funcion digitoImpar = TodosDigitosImpares (num)
	definir digitoImpar Como Logico
	
	definir digito Como Entero
	
	digitoImpar = Verdadero
	digito = 0
	
	hacer
		
		// num mod 10 deja en d�gito el d�gito de m�s a la derecha de num.
		// en el ejemplo. Si num = 357, entonces d�gito quedar� como 7. Si num = 35, entonces digito = 5, etc
		// Pasada 1: num = 357 --> digito = 7
		// Pasada 2: num = 35  --> digito = 5
		// Pasada 3: num = 3   --> digito = 3
		digito = num mod 10
		
		// digito mod 2 == 0. Solo dar� cero si el digito es par. Si es as�, digitoImpar queda como Falso
		// porque se comprueba que al menos un d�gito de num es par.
		// Y en la siguiente pasada del mientras, como digitoImpar = Falso, ya no se ejecutar�a m�s el hacer..mientras.
		// Pasada 1: 7 mod 2 es el resto de dividir 7 / 2. Como 7 es impar, el resto no ser� cero.
		// Pasada 2: 5 mod 2 tampoco ser� cero porque 5 es impar.
		// Pasada 3: 3 mod 2 tampoco ser� cero porque 3 es impar.
		si digito mod 2 == 0 entonces
			digitoImpar = Falso
		FinSi
		
		// Le quita el �ltimo d�gito a num
		// ej: num = 357
		// Pasada 1: num = 357 --> num / 10 = 35.7 --> trunc(num/10) = 35
		// Pasada 2: num = 35  --> num / 10 = 3.5  --> trunc(num/10) = 3
		// Pasada 3: num = 3   --> num / 10 = 0,3  --> trunc(num/10) = 0  --> Se sale del hacer..mientras.		
		num = trunc(num / 10)
		
	mientras que num <> 0 y digitoImpar == Verdadero
	
fin funcion

// Pruebas:
// 357		<-- Todos los d�gitos son impares.
// 4357		<-- NO todos impares.
// 3574		<-- NO todos impares.
// 357951	<-- Todos impares.
