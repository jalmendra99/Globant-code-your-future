// Clase 12 - Prácticos - Ejercicio 11 - página 3
// Fer V - jalmendra99@gmail.com
//
// Realizar una función que reciba un numero ingresado por el usuario y averigüe 
// si el número tiene todos sus dígitos impares (ejemplo: 333, 55, etc.). 
// Para esto vamos a tener que separar el numero en partes 
// (si es un numero de más de un digito) y ver si cada número es par o impar. 
// Nota: recordar el uso de la función Mod y Trunc(). 
// No podemos pasar el numero a cadena para realizar el ejercicio.


// Principal.
Algoritmo ejercicio11
	
	// Definición de variables.
	definir num Como entero
	
	// Inicialización de variables.
	num = 0
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar un número entero y se verificará si todos sus dígitos son o no impares."
	
	// Se solicita la información al usuario.	
	// Se fuerza a que el número ingresado sea mayor a cero.
	Hacer
		escribir "Ingrese un número entero positivo de dos dígitos: "
		leer num		
	Mientras Que num <= 0
		
	// Se verifica si todos los dígitos del número ingresado son impares usando la función solicitada.
	// Y se presenta el resultado por pantalla.
	si TodosDigitosImpares(num) Entonces
		escribir "Todos los dígitos de ", num, " son impares."
	SiNo
		escribir "NO Todos los dígitos de ", num, " son impares."
	FinSi
	
FinAlgoritmo


// Función TodosImpares
// Retorna Verdadero si todos los dígitos de un Entero son impares.
// Retorna Falso sino.
Funcion digitoImpar = TodosDigitosImpares (num)
	definir digitoImpar Como Logico
	
	definir digito Como Entero
	
	digitoImpar = Verdadero
	digito = 0
	
	hacer
		
		// num mod 10 deja en dígito el dígito de más a la derecha de num.
		// en el ejemplo. Si num = 357, entonces dígito quedará como 7. Si num = 35, entonces digito = 5, etc
		// Pasada 1: num = 357 --> digito = 7
		// Pasada 2: num = 35  --> digito = 5
		// Pasada 3: num = 3   --> digito = 3
		digito = num mod 10
		
		// digito mod 2 == 0. Solo dará cero si el digito es par. Si es así, digitoImpar queda como Falso
		// porque se comprueba que al menos un dígito de num es par.
		// Y en la siguiente pasada del mientras, como digitoImpar = Falso, ya no se ejecutaría más el hacer..mientras.
		// Pasada 1: 7 mod 2 es el resto de dividir 7 / 2. Como 7 es impar, el resto no será cero.
		// Pasada 2: 5 mod 2 tampoco será cero porque 5 es impar.
		// Pasada 3: 3 mod 2 tampoco será cero porque 3 es impar.
		si digito mod 2 == 0 entonces
			digitoImpar = Falso
		FinSi
		
		// Le quita el último dígito a num
		// ej: num = 357
		// Pasada 1: num = 357 --> num / 10 = 35.7 --> trunc(num/10) = 35
		// Pasada 2: num = 35  --> num / 10 = 3.5  --> trunc(num/10) = 3
		// Pasada 3: num = 3   --> num / 10 = 0,3  --> trunc(num/10) = 0  --> Se sale del hacer..mientras.		
		num = trunc(num / 10)
		
	mientras que num <> 0 y digitoImpar == Verdadero
	
fin funcion

// Pruebas:
// 357		<-- Todos los dígitos son impares.
// 4357		<-- NO todos impares.
// 3574		<-- NO todos impares.
// 357951	<-- Todos impares.
