Algoritmo ejercicio_cooperativo
	//
	
	
FinAlgoritmo

SubProceso menu()
	definir option Como Entero
	Escribir "Hola usuario, ingrese el numero de la opcion que desee calcular "
	Hacer
		
		Escribir "1. Calcular muro de ladrillo"
		Escribir "2. Calcular viga de hormigón"
		Escribir "3. Calcular columnas de hormigón"
		Escribir "4. Calcular contrapisos"
		Escribir "5. Calcular techo"
		Escribir "6. Calcular pisos"
		Escribir "7. Calcular pintura"
		Escribir "8. Calcular iluminacion"
		Escribir "9. Salir"
		leer option
		Segun option Hacer
			1:
				calcularMuro() // vaca JONATHAN..
				//			2:
				//				calcularViga() //julian
							3:
								calcularColumna() //fernando
							////////4:
								/////calcularContrapisos() //abril
				//			5:
				//				calcularTecho() //oscarito uwu
							6:
								calcularPisos() //luz maria
							7:
								calcularPintura() //alexander
							8:
								calcularIluminacion() //el que sea
			9:
				Escribir "¡Hasta pronto!"
			De Otro Modo:
				Escribir "Ingrese un número valido"
		Fin Segun
	Mientras Que option <> 9
FinSubProceso


// ENTRE TODOS
Funcion Superficie <- calcularSuperficie ( a,b )
	Definir Superficie Como Real
	Superficie=a*b
Fin Funcion
// ENTRE TODOS
Funcion Volumen <- calcularVolumen ( a,b,c )
	Definir Volumen Como Real
	Volumen=a*b*c
Fin Funcion


// Oscar Agreda
SubProceso calcularTecho(largo,ancho,grosor)
	definir area, cemento, arena, piedra, hierro8, hierro6 Como Real
	area=calcularSuperficie(largo, ancho)
	cemento=area*33
	arena=area*(0.072)
	piedra=area*(0.072)
	hierro8=area*7
	hierro6=area*4
	Escribir "Se necesita comprar: ",cemento," kg, ",arena," m3, ",piedra," m3, ", hierro8," metros y ",hierro6," metros."
	
	
FinSubProceso


// subprograma calcularColumna
// Nos debe pedir el largo de la columna. 
// Por metro lineal de columna se necesitarán: 
// 7.5 kg de cemento, 0.016 m3 de arena, 0.016 m2 de piedra, 6 m de hierro del 10 y 3 m de hierro del 4.
// Debemos mostrar al usuario la cantidad de materiales necesaria.
subproceso calcularColumna()
	
	definir largo Como real
	
	// Se fuerza a que el largo sea mayor que cero.
	hacer
		escribir "Ingrese el largo de la columna: "
		leer largo
	mientras que largo <= 0
	
	// Se muestra la información solicitada por pantalla:
	// Los materiales necesarios para construír una columna.
	escribir "Para construír una columna de ", largo, " mt de largo los materiales necesarios son:"
	escribir "- ", 7.5 * largo, " kg de cemento."
	escribir "- ", 0.016 * largo, " m3 de arena."
	escribir "- ", 0.016 * largo, " m3 de piedra."
	escribir "- ", 6 * largo, " mt de hierro del 10."
	escribir "- ", 3 * largo, " mt de hierro del 4."	
	
FinSubProceso


//////////////
/////////// NO HAY QUE IN
// Abril Bartolomé
SubProceso resultado<-calcularContrapisos(espesor, ancho, largo)
	Escribir "Ingrese el espesor del contrapiso"
	Leer espesor
	Escribir "Ingrese el ancho del contrapiso"
	Leer ancho
	Escribir "Ingrese el largo del contrapiso"
	leer largo
	Escribir "Para construir el contrapiso se necesita:"
	Escribir calcularVolumen(espesor,ancho,largo) * 105 " kg de cemento"
	Escribir calcularVolumen(espesor,ancho,largo) * 0.45 " metros cúbicos de arena"
	Escribir calcularVolumen(espesor,ancho,largo) * 0.9 " metros cúbicos de piedra"
FinSubProceso


/////////////////
///////// HAY QUE INGRESAR LA SUPERFICIE EN EL SUBPROGRAMA MENU() O ACÁ.
// Alexander machado gomez
SubProceso calcularPintura(superficie)
	definir litros como real
	litros=superficie/6
	Escribir "se necesita ",litros," litros."
FinSubProceso



// Luz maria roldan
SubProceso calcularPisos()
	definir ancho, largo, s como entero
	definir piso como real
	Escribir "Ingrese ancho del paño a colocar (en metros)"
	Leer ancho
	Escribir "Ingrese el largo del paño a colocar (en metros)"
	Leer largo
	s=calcularSuperficie(ancho, largo)
	piso=s+(s*0.10)
	Escribir "Superficie del paño a colocar más recortes: ", piso, " m2"
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



// Jhonathan Suárez
SubProceso calcularMuro()
	definir espesor, largo, alto, superficie, cemento, arena, ladrillos  Como Real
	Hacer
		Escribir "Especifique el espesor del muro en centímetros, sin unidades. "
		Escribir "Solo consideramos:"
		Escribir "20cm de espesor."
		Escribir "30cm de espesor."
		Leer espesor
		segun espesor
			20, 30:
				Escribir "Especifique el largo del muro en metros: "
				Leer largo
				Escribir "Especifique el alto del muro en metros: "
				Leer alto
				superficie = calcularSuperficie(largo, alto)
				segun espesor
					20:
						cemento = superficie * 10.9
						arena = superficie * 0.09
						ladrillos = trunc(superficie) * 90
					30:
						cemento = superficie * 15.2
						arena = superficie * 0.115
						ladrillos = trunc(superficie) * 120
				FinSegun
			De Otro Modo:
				Escribir "Ingrese un espesor válido."
		FinSegun
	Mientras Que espesor <> 20 Y espesor <> 30
	Escribir "Se necesitarán: " 
	Escribir cemento, "kg de cemento."
	Escribir arena, "m3 de cemento."
	Escribir ladrillos, " ladrillos."
FinSubProceso



