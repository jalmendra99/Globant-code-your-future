// Clase 4 - Teor�a - Ejercicio 2 - p�gina 10
// Fer V - jalmendra99@gmail.com
//
// Escriba un programa en donde se le pregunte al estudiante 
// si el d�a de hoy le toca ser el facilitador de tu equipo. 
// En caso de que sea, que muestre por pantalla el siguiente mensaje: 
// "�Felicidades! Eres el facilitador de tu equipo."

Algoritmo ejercicio2
	
	// Definici�n de variables.
	definir respuesta como caracter
	
	// Inicializaci�n de variables.
	respuesta = ""
	
	// Se informa premisa al usuario
	escribir "Se preguntar� al usuario si hoy le toc� ser facilitador de su equipo " sin saltar
	escribir "y se mostrar� un mensaje de felicidades si le toc�."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "�Hoy le toc� ser facilitador de su equipo? (responda si o no): "
	leer respuesta
	
	// Si la respuesta ingresada es Si, se muestra un mensaje de felicitaciones
	si respuesta == "si" o respuesta == "Si" o respuesta == "SI" Entonces
		escribir "�Felicidades! Eres el facilitador de tu equipo."	
	FinSi	
	
FinAlgoritmo