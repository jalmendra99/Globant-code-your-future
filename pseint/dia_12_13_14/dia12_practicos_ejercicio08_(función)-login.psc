// Clase 12 - Prácticos - Ejercicio 8 - página 2
// Fer V - jalmendra99@gmail.com
//
// Crear una función llamada "Login", que recibe un nombre de usuario y una contraseña 
// y que devuelve Verdadero si el nombre de usuario es "usuario1" 
// y si la contraseña es "asdasd". Además, la función calculara el número de intentos 
// que se ha usado para loguearse, tenemos solo 3 intentos, 
// si nos quedamos sin intentos la función devolverá Falso.


// Principal.
Algoritmo ejercicio8
	
	// Definición de variables.
	definir resultado Como Logico
	
	// Inicialización de variables.
	resultado = Falso
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se solicitará loguearse con un usuario y contraseña. "
	escribir            "Se verificará si los ingresados son correctos"
	
	// Se verifica usuario y contraseña usando la función solicitada.
	resultado = Login()
	
	// Y se presenta el resultado por pantalla.
	escribir "La función de validación de usuario y contraseña devolvió ", resultado, "."	
	
FinAlgoritmo


// Funcion Login. 
// Retorna Verdadero si user y pass son los correctos 
// pre-definidos como "usuario1" / "asdasd"
// Retorna Falso después de 3 intentos fallidos.
Funcion retorno = Login ()
	definir retorno Como Logico
	
	definir user, pass como cadena
	definir intentos Como Entero
	
	intentos = 0
	retorno = Falso
	
	Hacer
		
		// Se solicita al usuario ingresar usuario y contraseña.
		escribir "Intento #", intentos + 1, " (restan ", 3 - intentos, "):"
		escribir "Ingrese el nombre de usuario (hint: usuario1): "
		leer user
		escribir "Ingrese la contraseña (hint: asdasd): "
		leer pass
		
		intentos = intentos + 1
	Mientras Que (user <> "usuario1" o pass <> "asdasd") y intentos < 3	
	
	si user == "usuario1" y pass == "asdasd" Entonces
		retorno = Verdadero
	FinSi
	
fin funcion
