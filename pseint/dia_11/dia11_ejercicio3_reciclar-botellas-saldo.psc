// Clase 11, Cooperativo - Ejercicio 3 , p�ginas 2 y 3.
// Fer V. - jalmendra99@gmail.com
// 
// Necesitamos crear un sistema para una m�quina de reciclaje de botellas autom�tica. 
// Dicha m�quina nos pagar� dinero por la cantidad de pl�stico reciclado. 
// Tenemos que ingresar nuestro usuario y contrase�a para que se nos cargue 
// el saldo por sistema a nuestra cuenta.
// * Condici�n simple anidada: validaremos que el usuario sea "Albus_D", 
// luego si esto es verdadero, validaremos si la contrase�a es "caramelosDeLimon". 
// Si la contrase�a es correcta haremos que una variable llamada Login sea verdadera.
//
// * Bucle Mientras: Este bloque de validaci�n de la contrase�a lo encerraremos 
//   en un Mientras para darle al usuario s�lo 3 intentos para poner la contrase�a.
// * Bucle Hacer Mientras(Repetir): Una vez que el login sea verdadero, 
//   accederemos al men� de opciones:
//      - Ingresar botellas 
//      - Consultar saldo 
//      - Salir
//
// - Ingresar Botellas: Primero preguntaremos cu�ntas botellas se va a ingresar al sistema. 
// Una vez que tenemos el n�mero vamos a usar un bucle para, a fin de ir ingresando 
// cada botella. En cada ciclo del bucle se debe generar un n�mero aleatorio entre 100 y 3000 gr, 
// que va a ser el peso de las botellas a reciclar (simulando que el usuario est� 
// ingresando botellas en la m�quina). Una vez generado, seg�n el peso del material, 
// usaremos un condicional m�ltiple para asignarle un valor monetario:
// o! Si es menos de 500 gr, corresponden $50 
// o! Si es entre 501 gr y 1500 gr, corresponden $125 
// o! Si es m�s de 1501 gr, corresponden $200
// Hecho esto, el programa debe informar al usuario por pantalla el valor que se le ofrece. 
// Si el usuario acepta, lo acreditamos a su saldo, sino se debe devolver el material
// (s�lo mostrar en pantalla "Devolviendo material"). Para esto usaremos un condicional doble.
//
// - Consultar saldo: revisaremos el valor monetario que tiene asignada la variable "saldo".
//
// Tanto al terminar "Ingresar Botellas" como "Consultar Saldo" debe volver al men� principal.

Algoritmo ejercicio3
	
	// Definici�n de variables.
	definir usuario, password como cadena
	definir pregunta como caracter
	definir intentos, eleccion, numBotella, pesoBotella, precioBotella, cantidadBotellas, saldo como entero
	definir login Como Logico
	
	// Inicializaci�n de variables.
	usuario = ""
	password = ""	
	numBotella = 0
	pesoBotella = 0
	precioBotella = 0
	cantidadBotellas = 0	
	login = Falso
	
	//	// Se valida el usuario.	
	//	Hacer
	//		escribir "Ingrese el nombre de usuario: "
	//		leer usuario		
	//	Mientras Que usuario <> "Albus_D"
	
	// Se ingresa el nombre de usuario.
	escribir "Ingrese el nombre de usuario: "
	leer usuario		
	
	// Se valida el usuario con un condicional.	
	si usuario <> "Albus_D" Entonces
		escribir "El usuario ingresado es incorrecto."
	SiNo 
		// Se valida la contrase�a (solo 3 intentos).
		intentos = 0
		Hacer
			
			// Se ingresa la contrase�a.
			escribir "Ingrese la contrase�a: "
			leer password
			
			// Se cuenta la cantidad de intentos de ingresos de contrase�as.
			intentos = intentos + 1
			
			// Se valida si la contrase�a es la correcta.
			si password == "caramelosDeLimon" Entonces
				login = Verdadero
			SiNo
				escribir "Contrase�a incorrecta. Restan ", 3 - intentos, " intentos."
			FinSi
			
		Mientras Que intentos < 3 y login == Falso
		
		si login == Falso entonces
			escribir "Se alcanz� la cantidad m�xima de intentos fallidos."
		FinSi
		
		mientras login == verdadero Hacer
			
			escribir "----------------------------"
			escribir "Elija una opci�n:"
			escribir "1- Ingresar botellas."
			escribir "2- Consultar saldo."
			escribir "3- Salir."
			leer eleccion
			
			segun eleccion
				1: // Ingresar botellas.
					escribir "Ingrese la cantidad de botellas: "
					leer cantidadBotellas				
					
					// Se inicializa el saldo.
					saldo = 0
					
					// Se ingresa la informaci�n para cada botella				
					para numBotella = 1 hasta cantidadBotellas con paso 1 Hacer
						
						// Se asigna a la botella actual un peso aleatorio entre 100 y 3000.
						pesoBotella = aleatorio(100, 3000)
						
						// o! Si es menos de 500 gr, corresponden $50 
						si pesoBotella <= 500 Entonces
							precioBotella = 50
						sino 
							// o! Si es entre 501 gr y 1500 gr, corresponden $125 
							si pesoBotella <= 1500 Entonces
								precioBotella = 125													
							SiNo // o! Si es m�s de 1501 gr, corresponden $200
								precioBotella = 200
							FinSi
						FinSi
						
						escribir "Por la botella n�mero ", numBotella, " que pesa ", pesoBotella, "gr recibir� $", precioBotella, "."
						escribir "Ingrese s/S para aceptar, o cualquier otra letra para rechazar la oferta."
						leer pregunta
						
						si pregunta == "s" o pregunta == "S" Entonces
							saldo = saldo + precioBotella
						SiNo
							escribir ""
							escribir "Devolviendo material."
							escribir ""
						FinSi
						
					FinPara
					
				2: // Consultar saldo.
					imprimir ""
					imprimir "Su saldo actual es de $", saldo, "."
					imprimir ""
					
				3: // Salir
					login = falso
					
				de otro modo: 
					escribir ""
					escribir "No se entendi� la opci�n seleccionada"				
					escribir ""
					
			FinSegun		
			
		fin mientras	
		
	FinSi	
	
FinAlgoritmo
