// Clase 12 - Pr�cticos - Ejercicio 8 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Crear una funci�n llamada "Login", que recibe un nombre de usuario y una contrase�a 
// y que devuelve Verdadero si el nombre de usuario es "usuario1" 
// y si la contrase�a es "asdasd". Adem�s, la funci�n calculara el n�mero de intentos 
// que se ha usado para loguearse, tenemos solo 3 intentos, 
// si nos quedamos sin intentos la funci�n devolver� Falso.


// Principal.
Algoritmo ejercicio8
	
	// Definici�n de variables.
	definir resultado Como Logico
	
	// Inicializaci�n de variables.
	resultado = Falso
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se solicitar� loguearse con un usuario y contrase�a. "
	escribir            "Se verificar� si los ingresados son correctos"
	
	// Se verifica usuario y contrase�a usando la funci�n solicitada.
	resultado = Login()
	
	// Y se presenta el resultado por pantalla.
	escribir "La funci�n de validaci�n de usuario y contrase�a devolvi� ", resultado, "."	
	
FinAlgoritmo


// Funcion Login. 
// Retorna Verdadero si user y pass son los correctos 
// pre-definidos como "usuario1" / "asdasd"
// Retorna Falso despu�s de 3 intentos fallidos.
Funcion retorno = Login ()
	definir retorno Como Logico
	
	definir user, pass como cadena
	definir intentos Como Entero
	
	intentos = 0
	retorno = Falso
	
	Hacer
		
		// Se solicita al usuario ingresar usuario y contrase�a.
		escribir "Intento #", intentos + 1, " (restan ", 3 - intentos, "):"
		escribir "Ingrese el nombre de usuario (hint: usuario1): "
		leer user
		escribir "Ingrese la contrase�a (hint: asdasd): "
		leer pass
		
		intentos = intentos + 1
	Mientras Que (user <> "usuario1" o pass <> "asdasd") y intentos < 3	
	
	si user == "usuario1" y pass == "asdasd" Entonces
		retorno = Verdadero
	FinSi
	
fin funcion
