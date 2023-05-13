// Clase 15 - Prácticos - Ejercicio 6 - página 3
// Fer V - jalmendra99@gmail.com
//
// Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra 
// esta entre las letras "M" y "T". 
// Recordar que Pseint le da un valor numérico a cada letra a través del Código Ascii, 
// lo que nos deja usar operadores relacionales con letras y cadenas.


// Principal.
Algoritmo ejercicio6
	
	// Definición de variables.
	definir letra como caracter
	
	// Inicialización de variables.
	letra = ""
	
	// Se informa la premisa al usuario.
	escribir "Se solicitará ingresar una letra y se procederá a " sin saltar
	escribir "verificar si la misma está o no entre las letras M y T."
	
	// Se solicita la información al usuario...	
	
	escribir "Ingrese una letra: " sin saltar
	leer letra
	
	// Se verifica si la letra está entre M y T usando el procedimiento solicitado.
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
