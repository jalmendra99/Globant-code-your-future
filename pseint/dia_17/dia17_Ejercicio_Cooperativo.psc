// Clase 17 - Ejercicio cooperativo - páginas 2 y 3
// Fer V - jalmendra99@gmail.com
//
// Vamos a programar una calculadora de materiales para construir
// Primero leeremos todo el ejercicio y luego dividiremos tareas en el equipo.
// El algoritmo principal sólo debe llamar al subPrograma menu()
// Cada subPrograma puede descomponerse, si hiciera falta, en otros subProgramas a creatividad del programador
// El menú debe quedar de la siguiente manera:
// 1.! Calcular muro de ladrillo 
// 2.! Calcular viga de hormigón 
// 3.! Calcular columnas de hormigón 
// 4.! Calcular contrapisos 
// 5.! Calcular techo 
// 6.! Calcular pisos 
// 7.! Calcular pintura 
// 8.! Calcular iluminación 
// 9.! Salir
//
// subprogramas calcularSuperficie y calcularVolumen
// Haremos ambos para usarlos dentro de los otros subprogramas. El usuario no puede acceder a ellos.
// 
// subprograma calcularMuro
// Nos debe pedir primero si el muro será de 20 o 30 cm de espesor. 
// Luego el largo y el alto. 
// A partir de estos datos se debe mostrar al usuario la superficie del muro 
// y la cantidad de materiales que necesitaremos para construirlo.
// Si el muro es de 30cm necesitaremos por metro cuadrado: 
// 15.2 kg de cemento, 0.115 m3 de arena y 120 ladrillos.
// Si el muro es de 20cm necesitaremos por metro cuadrado: 
// 10.9 kg de cemento, 0.09 m3 de arena y 90 ladrillos.
//
// subprograma calcularViga
// Nos debe pedir el largo de la viga. Por metro lineal de viga se necesitarán: 
// 9 kg de cemento, 0.02 m3 de arena, 0.02 m2 de piedra, 4 m de hierro del 8 y 3 m de hierro del 4.
// Debemos mostrar al usuario la cantidad de materiales necesaria.
//
// subprograma calcularColumna
// Nos debe pedir el largo de la columna. Por metro lineal de columna se necesitarán: 
// 7.5 kg de cemento, 0.016 m3 de arena, 0.016 m2 de piedra, 6 m de hierro del 10 y 3 m de hierro del 4.
// Debemos mostrar al usuario la cantidad de materiales necesaria.
//
// subprograma calcularContrapisos
// Nos debe pedir espesor, ancho y largo del contrapiso a calcular.
// Por metro cúbico de contrapiso se necesita: 105 kg de cemento, 0.45 m3 de arena y 0.9 m3 de piedra.
// Debemos mostrar al usuario la cantidad de materiales necesaria.
//
// subprograma calcularTecho
// Nos debe pedir espesor, ancho y largo del techo a calcular.
// Por metro cuadrado de techo se necesita: 
// 33 kg de cemento, 0.072 m3 de arena, 0.072 m3 de piedra, 7 m de hierro del 8 y 4 m de hierro del 6
// Debemos mostrar al usuario la cantidad de materiales necesaria.
//
// subprograma calcularPisos
// Nos debe pedir ancho y largo del paño de piso a colocar. 
// Teniendo esos datos se debe calcular la superficie y añadirle un 10% extra por recortes
// Mostrar el resultado en m2
//
// subprograma calcularPintura
// Nos debe pedir la superficie del muro y mostrar cuánta pintura necesitamos 
// teniendo en cuenta que rinde 6 m2 por litro de pintura.
//
// subprograma calcularIluminacion
// Nos debe pedir la superficie de la habitación. 
// La iluminación la calculamos de la siguiente forma: 
// superficie * 0.20. 
// Eso nos da la cantidad mínima de superficie de iluminación natural 
// (ventanas y puertas de vidrio). 
// Mostrar resultado


// Principal.
Algoritmo ejercicioCooperativo
	
	// El algoritmo principal sólo debe llamar al subPrograma menu()
	menu()
	
FinAlgoritmo


// SubPrograma menu()
// Muestra las opciones al usuario
// Lee la elección del usuario
// Y llama a la función o subproceso correspondiente.
// Termina cuando se ingresa la opción 9 - Salir.
SubProceso menu () 
	
	// Definición de variables.
	Definir eleccion como entero	
	
	// Inicialización de variables.
	eleccion = 0
	
	// Se informa la premisa al usuario.
	escribir "Calculadora de materiales para construir."
	
	// Se muestra el menú al usuario 
	// y se lee su elección.
	// Dependiendo de la misma se llama a la función o subproceso correspondiente.
	Hacer
		escribir ""
		escribir "Menú de opciones:"
		escribir "-----------------"
		escribir "1. Calcular muro de ladrillo"
		escribir "2. Calcular viga de hormigón"
		escribir "3. Calcular columnas de hormigón"
		escribir "4. Calcular contrapisos"
		escribir "5. Calcular techo"
		escribir "6. Calcular pisos"
		escribir "7. Calcular pintura"
		escribir "8. Calcular iluminación"
		escribir "9. Salir"		
		
		// Se fuerza a que el usuario elija una opción válida.
		hacer			
			escribir "Ingrese una opción válida (del 1 al 9):"			
			leer eleccion
		mientras que eleccion < 1 o eleccion > 9
		
		// Agrega una línea vacía para que quede más prolijo.
		escribir ""
		
		segun eleccion
			1: // muro
				calcularMuro()				
			2: // viga
				calcularViga()
			3: // columnas
				calcularColumna()
			4: // contrapisos
				calcularContrapisos()
			5: // techo
				calcularTecho()
			6: // pisos
				calcularPisos()
			7: // pintura
				calcularPintura()
			8: // iluminación
				calcularIluminacion()
		FinSegun
		
	Mientras Que eleccion <> 9
	
	
FinSubProceso


// Funcion calcularSuperficie (largo, ancho)
// Retorna la superficie en m2 utilizando el largo y ancho ingresados en m2.
funcion sup = calcularSuperficie (largo, ancho)
	definir sup Como Entero	
	sup = largo * ancho	
FinFuncion


// Función calcularVolumen ()
// Retorna el volumen en m3 utilizando el espesor, largo y alto ingresados en mt.
funcion vol = calcularVolumen (espesor, largo, alto)
	definir vol Como Real	
	vol = espesor * largo * alto	
FinFuncion


// subprograma calcularMuro
// Nos debe pedir primero si el muro será de 20 o 30 cm de espesor. 
// Luego el largo y el alto. 
// A partir de estos datos se debe mostrar al usuario la superficie del muro 
// y la cantidad de materiales que necesitaremos para construirlo.
// Si el muro es de 30cm necesitaremos por metro cuadrado: 
// 15.2 kg de cemento, 0.115 m3 de arena y 120 ladrillos.
// Si el muro es de 20cm necesitaremos por metro cuadrado: 
// 10.9 kg de cemento, 0.09 m3 de arena y 90 ladrillos.
SubProceso  calcularMuro ()
	
	definir espesor Como Entero
	definir largo, ancho, superficie Como Real
	
	// Inicialización de variables.
	largo = 0
	ancho = 0
	superficie = 0
	
	// Se fuerza a que el espesor sea 20 o 30.
	hacer
		escribir "Ingrese el espesor del muro (medido en cm) [20 o 30]: "
		leer espesor
		
		si espesor <> 20 y espesor <> 30 Entonces
			escribir "El espesor ingresado es inválido. Ingrese solo 20 o 30."
		FinSi
	mientras que espesor <> 20 y espesor <> 30
	
	// Se fuerza a que el largo y ancho sean mayores que cero.
	hacer
		escribir "Ingrese el largo del muro (medido en metros):"
		leer largo
		
		escribir "Ingrese el ancho del muro (medido en metros):"
		leer ancho
	mientras que largo <= 0 o ancho <= 0
	
	// Calcular la superficie del muro.
	superficie = calcularSuperficie(largo, ancho)
	
	// Mostrar la información solicitada. Materiales necesarios para el muro.
	escribir "Los materiales necesarios para un muro de ", superficie, " m2 son:"
	si espesor == 30 Entonces		
		escribir "- ", 15.2 * superficie, " kg de cemento."
		escribir "- ", 0.115 * superficie, " m3 de arena."
		escribir "- ", 120 * superficie, " ladrillos."
	sino // espesor == 20
		escribir "- ", 10.9 * superficie, " kg de cemento."
		escribir "- ", 0.09 * superficie, " m3 de arena."
		escribir "- ", 90 * superficie, " ladrillos."
	FinSi
	
FinSubProceso


// subprograma calcularViga
// Nos debe pedir el largo de la viga. Por metro lineal de viga se necesitarán: 
// 9 kg de cemento, 0.02 m3 de arena, 0.02 m2 de piedra, 4 m de hierro del 8 y 3 m de hierro del 4.
// Debemos mostrar al usuario la cantidad de materiales necesaria.
SubProceso calcularViga()
	definir largo Como Real
	
	// Se fuerza a que el largo sea mayor que cero.
	Hacer
		escribir "Ingrese el largo de la viga (medido en metros):"
		leer largo		
	mientras que largo < 0
	
	// Se muestra la información solicitada. Materiales necesarios para la viga.
	escribir "Los materiales necesarios para una viga de ", largo, " mt son:"
	escribir "- ", 9 * largo, " kg de cemento."
	escribir "- ", 0.02 * largo, " m3 de arena."
	escribir "- ", 0.02 * largo, " m3 de piedra."
	escribir "- ", 4 * largo, " mt de hierro del 8."
	escribir "- ", 3 * largo, " mt de hierro del 4."
	
FinSubProceso


// << ESTE ES EL QUE ME TOCÓ EN CLASE >>
// 
// subprograma calcularColumna
// Nos debe pedir el largo de la columna. Por metro lineal de columna se necesitarán: 
// 7.5 kg de cemento, 0.016 m3 de arena, 0.016 m2 de piedra, 6 m de hierro del 10 y 3 m de hierro del 4.
// Debemos mostrar al usuario la cantidad de materiales necesaria.
SubProceso calcularColumna()
	definir largo Como Real
	
	// Se fuerza a que el largo sea mayor que cero.
	Hacer
		escribir "Ingrese el largo de la columna en metros:"
		leer largo		
	mientras que largo < 0
	
	// Se muestra la información solicitada. Materiales necesarios para la columna.
	escribir "Los materiales necesarios para una columna de ", largo, " mt son:"
	escribir "- ", 7.5 * largo, " kg de cemento."
	escribir "- ", 0.016 * largo, " m3 de arena."
	escribir "- ", 0.016 * largo, " m3 de piedra."
	escribir "- ", 6 * largo, " mt de hierro del 10."
	escribir "- ", 3 * largo, " mt de hierro del 4."
	
FinSubProceso


// subprograma calcularContrapisos
// Nos debe pedir espesor, ancho y largo del contrapiso a calcular.
// Por metro cúbico de contrapiso se necesita: 
// 105 kg de cemento, 0.45 m3 de arena y 0.9 m3 de piedra.
// Debemos mostrar al usuario la cantidad de materiales necesaria.
SubProceso calcularContrapisos()
	definir espesor, ancho, largo, volumen Como Real
	
	// Inicialización de variables.
	volumen = 0
	
	// Se fuerza a que el espesor, largo y ancho sean mayores que cero.
	Hacer
		escribir "Ingrese el espesor del contrapiso (medido en metros):"
		leer espesor
		escribir "Ingrese el largo del contrapiso (medido en metros):"
		leer largo
		escribir "Ingrese el ancho del contrapiso (medido en metros):"
		leer ancho		
	mientras que espesor <= 0 o largo <= 0 o ancho <= 0
	
	// Calcula el volumen del contrapiso.
	volumen = calcularVolumen(espesor, largo, ancho)
		
	// Se muestra la información solicitada. Materiales necesarios para el contrapiso.
	escribir "Los materiales necesarios para un contrapiso de ", volumen, " m3 son:"
	escribir "- ", 105 * largo, " kg de cemento."
	escribir "- ", 0.45 * largo, " m3 de arena."
	escribir "- ", 0.9 * largo, " mt3 de piedra."
	
FinSubProceso


// subprograma calcularTecho
// Nos debe pedir espesor, ancho y largo del techo a calcular.
// Por metro cuadrado de techo se necesita: 
// 33 kg de cemento, 0.072 m3 de arena, 0.072 m3 de piedra, 7 m de hierro del 8 y 4 m de hierro del 6
// Debemos mostrar al usuario la cantidad de materiales necesaria.
SubProceso  calcularTecho ()
	
	definir espesor Como Entero
	definir largo, ancho, superficie Como Real
	
	// Inicialización de variables.
	largo = 0
	ancho = 0
	superficie = 0
		
	// Se fuerza a que el espesor, largo y ancho sean mayores que cero.
	hacer
		// ¿Inútil pedir el espesor si no se usa para calcular nada?
		escribir "Ingrese el espesor del techo (medido en metros):"
		leer espesor
	
		escribir "Ingrese el largo del techo (medido en metros):"
		leer largo
		
		escribir "Ingrese el ancho del techo (medido en metros):"
		leer ancho
	mientras que espesor <= 0 o largo <= 0 o ancho <= 0
	
	// Calcular la superficie del techo.
	superficie = calcularSuperficie(largo, ancho)
		
	// Mostrar la información solicitada. Materiales necesarios para el techo.
	escribir "Los materiales necesarios para un techo de ", superficie, " m2 son:"
	escribir "- ", 33 * superficie, " kg de cemento."
	escribir "- ", 0.072 * superficie, " m3 de arena."
	escribir "- ", 0.072 * superficie, " m3 de piedra."
	escribir "- ", 7 * superficie " m de hierro del 8."
	escribir "- ", 4 * superficie " m de hierro del 6."
	
FinSubProceso


// subprograma calcularPisos
// Nos debe pedir ancho y largo del paño de piso a colocar. 
// Teniendo esos datos se debe calcular la superficie y añadirle un 10% extra por recortes
// Mostrar el resultado en m2
SubProceso calcularPisos()
	definir ancho, largo, superficie Como Real
	
	// Inicialización de variables.
	superficie = 0
	
	// Se fuerza a que el largo y ancho sean mayores que cero.
	Hacer
		escribir "Ingrese el largo del contrapiso (medido en metros): "
		leer largo
		escribir "Ingrese el ancho del contrapiso (medido en metros): "
		leer ancho		
	mientras que largo <= 0 o ancho <= 0
	
	// Calcula el volumen del contrapiso.
	superficie = calcularSuperficie(largo, ancho)
	
	// Se muestra la información solicitada. Materiales necesarios para el contrapiso.
	escribir Sin Saltar "Para un piso de ", largo, " mt de largo y ", ancho, " mt de ancho "
	escribir            "se deberan comprar materiales para cubrir ", superficie * 1.1, " m2 de superficie."
	
FinSubProceso


// subprograma calcularPintura
// Nos debe pedir la superficie del muro y mostrar cuánta pintura necesitamos 
// teniendo en cuenta que rinde 6 m2 por litro de pintura.
SubProceso calcularPintura()
	
	definir superficie Como Real	
	
	// Se fuerza a que la superficie ingresada sea mayor a cero.
	Hacer
		escribir "Ingrese la superficie a pintar (medida en m2): "
		leer superficie
	mientras que superficie <= 0
	
	// Se muestra la información solicitada. Litros de pintura necesarios para cubrir la superficie ingresada.
	escribir "Para cubrir una superficie de ", superficie, " m2 se deberán comprar ", superficie / 6, " litros de pintura."
	
FinSubProceso


// subprograma calcularIluminacion
// Nos debe pedir la superficie de la habitación. 
// La iluminación la calculamos de la siguiente forma: 
// superficie * 0.20. 
// Eso nos da la cantidad mínima de superficie de iluminación natural 
// (ventanas y puertas de vidrio). 
// Mostrar resultado
SubProceso calcularIluminacion()
	
	definir superficie Como Real	
	
	// Se fuerza a que la superficie ingresada sea mayor a cero.
	Hacer
		escribir "Ingrese la superficie de la habitación (medida en m2): "
		leer superficie
	mientras que superficie <= 0
	
	// Se muestra la información solicitada. Cantidad mínima de superficie de iluminación natural.
	escribir Sin Saltar "En una habitación de ", superficie, " m2 con ventanas y puertas de vidrio "
	escribir            "habrá una superficie de iluminación natural mínima de ", superficie * 0.2, " m2."
	
FinSubProceso
