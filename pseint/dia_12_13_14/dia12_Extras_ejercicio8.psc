// Clase 12 - Extras - Ejercicio 8
// Fer V - jalmendra99@gmail.com
//
// 8. Crea un programa que pida el nombre al usuario y lo escriba alternando may�sculas y min�sculas


////// Nota: Bastante similar al ejercicio anterior.

// Principal.
Algoritmo ejercicio8
	
	// Definici�n de variables.
	definir i como entero
	definir frase como cadena
	definir letra como caracter
	
	// Inicializaci�n de variables.	
	i = 0
	frase = ""
	letra = ""
	
	// Se informa premisa al usuario.
	escribir "Se pedir� ingresar el nombre al usuario y se mostrar� el mismo " Sin Saltar
	escribir "alternando caracteres en may�sculas y min�sculas."
	
	// Se ingresa la frase.
	escribir "Ingrese su nombre: "
	leer frase
	
	// Se presenta la informaci�n solicitada por pantalla.	
	para i = 0 hasta longitud(frase) -1 con paso 1 Hacer
		
		letra = subcadena(frase, i, i)
		
		// Si la posici�n es par, el caracter se escribir� en may�sculas.
		si i mod 2 == 0 Entonces
			escribir sin saltar mayusculas(letra)
		SiNo
			escribir sin saltar letra
		FinSi
		
	FinPara
	
	// Para que el programa finalice en la siguiente l�nea.
	escribir ""
	
FinAlgoritmo
