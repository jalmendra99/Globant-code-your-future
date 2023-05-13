// Clase 15 - Pr�cticos - Ejercicio 6 - p�gina 3
// Fer V - jalmendra99@gmail.com
//
// Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra 
// esta entre las letras "M" y "T". 
// Recordar que Pseint le da un valor num�rico a cada letra a trav�s del C�digo Ascii, 
// lo que nos deja usar operadores relacionales con letras y cadenas.


// Principal.
Algoritmo ejercicio6
	
	// Definici�n de variables.
	definir letra como caracter
	
	// Inicializaci�n de variables.
	letra = ""
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar� ingresar una letra y se proceder� a " sin saltar
	escribir "verificar si la misma est� o no entre las letras M y T."
	
	// Se solicita la informaci�n al usuario...	
	
	escribir "Ingrese una letra: " sin saltar
	leer letra
	
	// Se verifica si la letra est� entre M y T usando el procedimiento solicitado.
	// Y se presenta el resultado por pantalla.	
	EstaEntreMyT(letra)
	
FinAlgoritmo


// Procedimiento EstaEntreMyT
// divide al dividendo por el divisor y muestra el cociente y el resto.
SubProceso EstaEntreMyT (letra)
	
	si (letra >= "M" y letra <= "T") o (letra >= "m" y letra <= "t") Entonces
		escribir "La letra ", letra, " se encuentra entre las letras M y T."
	SiNo
		escribir "La letra ", letra, " NO se encuentra entre las letras M y T."
	FinSi
	
FinSubProceso
