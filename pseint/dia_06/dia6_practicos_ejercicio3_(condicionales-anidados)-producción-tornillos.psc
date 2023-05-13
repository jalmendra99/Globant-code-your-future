// Clase 6 - Pr�cticos - Ejercicio 3 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// Condicionales Anidados
// Escriba un programa para obtener el grado de eficiencia de un operario 
// de una f�brica de tornillos, de acuerdo a las siguientes dos condiciones 
// que se le imponen para un per�odo de prueba:
// x Producir menosde 200 tornillos defectuosos. 
// x Producir m�sde 10000 tornillos sin defectos. 
// El grado de eficiencia se determina de la siguiente manera: 
// x Si no cumple ninguna de las condiciones, grado 5. 
// x Si s�lo cumple la primera condici�n, grado 6. 
// x Si s�lo cumple la segunda condici�n, grado 7. 
// x Si cumple las dos condiciones, grado 8 
// Nota: para trabajar este ejercicio de manera prolija, ir probando 
// cada inciso que pide el ejercicio. No hacer todos al mismo tiempo y despu�s probar.
	
Algoritmo practicos_ejercicio3
	
	// Definici�n de variables.
	definir defectuosos, correctos, grado Como Entero
	definir condicion1, condicion2 Como Logico
	
	// Inicializaci�n de variables.
	defectuosos = 0
	correctos = 0
	condicion1 = Falso
	condicion2 = Falso
	
	// Se informa premisa al usuario.
	escribir "Se pedir� al usuario ingresar la cantidad de tornillos defectuosos " sin saltar
	escribir "y correctos que un empleado produjo durante un per�odo de prueba " Sin Saltar
	escribir "y se calcular� su grado de eficiencia."
	
	// Cargando los datos ingresados por el usuario.	
	escribir "�Cuantos tornillos defectuosos produjo el empleado?"
	leer defectuosos
	escribir "�Cuantos tornillos sin defectos produjo el empleado?"
	leer correctos
	
	// Validando los datos cargados.
	condicion1 = defectuosos < 200
	condicion2 = correctos > 10000
	
	// Calculando el grado de eficiencia.
	si (no condicion1) y (no condicion2) Entonces		
		grado = 5
	SiNo
		si condicion1 y (no condicion2) Entonces
			grado = 6
		SiNo
			si (no condicion1) y condicion2 Entonces
				grado = 7
			SiNo
				si condicion1 y condicion2 Entonces
					grado = 8
				FinSi
			FinSi
			
		FinSi
	FinSi
	
	// Se informa el n�mero de eficiencia.
	escribir "El grado de eficiencia del empleado es ", grado, "."
	
FinAlgoritmo
