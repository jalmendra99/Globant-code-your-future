// Clase 6 - Teor�a - Ejercicio 3 - p�gina 7
// Fer V - jalmendra99@gmail.com
//
// EJERCICIO DESAYUNO
// Es tu turno, dise�a un condicional anidado que le pregunte 
// al usuario si quiere tomar t� o caf� y en caso de que quiera 
// tomar caf�, preguntar si solo o cortado y en caso de ser cortado, 
// si prefiere leche vegetal.
	
Algoritmo teoria_ejercicio3

	// Definici�n de variables.
	definir cafe, cortado, vegetal Como Logico
	definir teOCafe, comunOCortado, comunOVegetal como cadena

	// Inicializaci�n de variables.
	cafe = Falso
	cortado = Falso
	vegetal = Falso
	teOCafe = ""
	comunOCortado = ""
	comunOVegetal = ""
	
	// Se informa premisa al usuario
	escribir "Se preguntar� al usuario si desea tomar t� o caf�."
	escribir "Si desea tomar caf� se le preguntara si prefiere solo o cortado."
	escribir "Y si desea tomar caf� cortado, se le preguntar� si prefiere leche com�n o vegetal."
	
	// Preguntas al usuario para definir que prefiere tom�r.
	escribir "�Quiere tomar t� o caf�?"
	leer teOCafe
	
	cafe = Mayusculas(teOCafe)=="CAFE" o mayusculas(teOCafe)=="CAF�"
	
	si cafe 
		escribir "�Quiere caf� com�n o cortado?"
		leer comunOCortado
		
		cortado = Mayusculas(comunOCortado)=="CORTADO"
		
		si cortado 
			escribir "�Quiere leche com�n o leche vegetal?"
			leer comunOVegetal
			
			vegetal = mayusculas(comunOVegetal)=="VEGETAL"
			
			si vegetal
				escribir "Usted quiere un caf� cortado con leche vegetal."
			SiNo
				escribir "Usted quiere un caf� cortado con leche com�n."
			FinSi
		SiNo
			escribir "Usted quiere un caf� com�n."
		FinSi
	SiNo
		// Cualquier respuesta a la pregunta inicial
		// que no sea espec�ficamente "caf�"
		// va a terminar por ac�.
		escribir "Usted quiere un t�."		
	FinSi
	
FinAlgoritmo
