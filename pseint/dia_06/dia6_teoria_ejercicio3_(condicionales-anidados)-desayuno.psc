// Clase 6 - Teoría - Ejercicio 3 - página 7
// Fer V - jalmendra99@gmail.com
//
// EJERCICIO DESAYUNO
// Es tu turno, diseña un condicional anidado que le pregunte 
// al usuario si quiere tomar té o café y en caso de que quiera 
// tomar café, preguntar si solo o cortado y en caso de ser cortado, 
// si prefiere leche vegetal.
	
Algoritmo teoria_ejercicio3

	// Definición de variables.
	definir cafe, cortado, vegetal Como Logico
	definir teOCafe, comunOCortado, comunOVegetal como cadena

	// Inicialización de variables.
	cafe = Falso
	cortado = Falso
	vegetal = Falso
	teOCafe = ""
	comunOCortado = ""
	comunOVegetal = ""
	
	// Se informa premisa al usuario
	escribir "Se preguntará al usuario si desea tomar té o café."
	escribir "Si desea tomar café se le preguntara si prefiere solo o cortado."
	escribir "Y si desea tomar café cortado, se le preguntará si prefiere leche común o vegetal."
	
	// Preguntas al usuario para definir que prefiere tomár.
	escribir "¿Quiere tomar té o café?"
	leer teOCafe
	
	cafe = Mayusculas(teOCafe)=="CAFE" o mayusculas(teOCafe)=="CAFÉ"
	
	si cafe 
		escribir "¿Quiere café común o cortado?"
		leer comunOCortado
		
		cortado = Mayusculas(comunOCortado)=="CORTADO"
		
		si cortado 
			escribir "¿Quiere leche común o leche vegetal?"
			leer comunOVegetal
			
			vegetal = mayusculas(comunOVegetal)=="VEGETAL"
			
			si vegetal
				escribir "Usted quiere un café cortado con leche vegetal."
			SiNo
				escribir "Usted quiere un café cortado con leche común."
			FinSi
		SiNo
			escribir "Usted quiere un café común."
		FinSi
	SiNo
		// Cualquier respuesta a la pregunta inicial
		// que no sea específicamente "café"
		// va a terminar por acá.
		escribir "Usted quiere un té."		
	FinSi
	
FinAlgoritmo
