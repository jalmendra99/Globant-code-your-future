// Clase 12 - Extras - Ejercicio 8
// Fer V - jalmendra99@gmail.com
//
// 8. Crea un programa que pida el nombre al usuario y lo escriba alternando mayúsculas y minúsculas


////// Nota: Bastante similar al ejercicio anterior.

// Principal.
Algoritmo ejercicio8
	
	// Definición de variables.
	definir i como entero
	definir frase como cadena
	definir letra como caracter
	
	// Inicialización de variables.	
	i = 0
	frase = ""
	letra = ""
	
	// Se informa premisa al usuario.
	escribir "Se pedirá ingresar el nombre al usuario y se mostrará el mismo " Sin Saltar
	escribir "alternando caracteres en mayúsculas y minúsculas."
	
	// Se ingresa la frase.
	escribir "Ingrese su nombre: "
	leer frase
	
	// Se presenta la información solicitada por pantalla.	
	para i = 0 hasta longitud(frase) -1 con paso 1 Hacer
		
		letra = subcadena(frase, i, i)
		
		// Si la posición es par, el caracter se escribirá en mayúsculas.
		si i mod 2 == 0 Entonces
			escribir sin saltar mayusculas(letra)
		SiNo
			escribir sin saltar letra
		FinSi
		
	FinPara
	
	// Para que el programa finalice en la siguiente línea.
	escribir ""
	
FinAlgoritmo
