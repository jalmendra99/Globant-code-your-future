// Integrador - (matrices) Muestras genéticas!
// Fer V - jalmendra99@gmail.com
// 
// Ejercicio integrador del año 2022, compartido por Eliana Gasparri en grupo de whatsapp.
//
// El apocalipsis Zombie se ha desatado, pero aún hay esperanza. 
// El Dr. Galard ha conseguido aislar el gen Z analizando muestras genéticas codificadas. 
// Una muestra se corresponde con una secuencia de caracteres 
// compuesta de cuatro posibles bases (A,B,C,D), por ejemplo: "ACDDCADBCDABDBBA". 
// Para poder detectar el gen Z, se representa la muestra como una matriz cuadrada (MxM) 
// y se busca en las dos diagonales principales que todas las bases sean iguales. 
// Siguiendo el ejemplo de la muestra anterior la matriz resultante es
// A C D D
// C A D B
// C D A B
// D B B A
// Galard aclara que para que la muestra sea válida el orden de la matriz (el valor de M) 
// debe ser 3x3, 4x4 o 37x37 (según la muestra). 
// Por desgracia, de antemano no es posible saber el orden de la matriz 
// y el mismo debe ser inferido de la muestra ingresada.
// Tu misión: hacer un programa que permita ingresar una muestra completa, 
// detectar si es válida, y de ser así, que imprima la matriz y muestre un mensaje que indique 
// si se ha detectado o no el gen Z.
// Hoy la humanidad depende de ti.
// Reglas de Resolución: 
// a) Es obligatorio el uso de al menos una variable N-dimensional. 
// b) La muestra la guardamos en una variable en el código, no por consola. 
//    Es decir: NO hay que usar Leer muestra sino asignarle un valor 
//    muestra = "ACDDCADBCDABDBBA" en el código
// c) Subdivida el problema de tal forma de utilizar al menos dos subprogramas.



// Principal.
Algoritmo Integrador_muestras_geneticas
	
	// Definición de variables.
	definir matriz Como Caracter
	definir muestra como cadena
	definir n Como Entero				// Para definir el tamaño de la matriz (nxn)
	definir muestraValida Como Logico	// Sale del programa si la muestra tiene tamaño incorrecto.
	definir genZPresente Como Logico	
	
	definir menu como entero
	
	// Se informa la premisa al usuario.
	escribir "Elegirá una muestra, que luego se representará como una matriz de 3x3, 4x4 o 37x37 " Sin Saltar
	escribir "para intentar encontrar el gen Z según el método del Dr. Galard, que consiste en " sin saltar
	escribir "buscar que en cada una de las dos diagonales principales todas las bases sean " Sin Saltar
	escribir "iguales (A, B, C o D)."
	escribir ""
	escribir "Muestras:"
	escribir "---------"
	escribir "1. ACDDCADBCDABDBB  <- Tamaño inválido para 3x3, 4x4 y 37x37."
	escribir "2. ABCDAB           <- Tamaño inválido para 3x3, 4x4 y 37x37."
	escribir "3. ABCDEFGHI        <- Tamaño válido pero tiene caracteres inválidos."
	escribir "4. GHIABCD          <- Tamaño inválido y caracteres inválidos! (G, H, I)."
	escribir "5. ACDDCADBCDABDBBA <- Tamaño válido para 4x4 y tiene el gen Z."
	escribir "6. ACDACADBCDABDBBA <- Tamaño válido para 4x4 pero sin el gen Z."
	escribir "7. ACDACAABCAABABBA <- Tamaño válido para 4x4 y tiene el gen Z."
	escribir "8. ABACABADA        <- Tamaño válido para 3x3 y tiene el gen Z."
	escribir "9. ABACBBADA        <- Tamaño válido para 3x3 pero sin el gen Z."
	escribir "10. Genera una muestra con tamaño válido para 37x37 y gen Z presente."
	escribir "11. Genera una muestra con tamaño válido para 37x37 pero sin el gen Z."
	escribir ""
	escribir "Seleccione una muestra para verificar si tiene el gen Z: " sin saltar
	leer menu
	
	// No se puedo hacer un menú repetitivo con hacer...Mientras 
	// porque no se encontró forma de redimensionar la matriz más de una vez
	// para reusarla con otra muestra, una vez que ya fué dimensionada para una primera muestra.
	
	segun menu
		1: muestra = "ACDDCADBCDABDBB"
		2: muestra = "ABCDAB"
		3: muestra = "ABCDEFGHI"
		4: muestra = "GHIABCD"
		5: muestra = "ACDDCADBCDABDBBA"
		6: muestra = "ACDACADBCDABDBBA"
		7: muestra = "ACDACAABCAABABBA"
		8: muestra = "ABACABADA"
		9: muestra = "ABACBBADA"
		10: muestra = generaMuestraValida37(Verdadero)
		11: muestra = generaMuestraValida37(Falso)			
		De Otro Modo:
			escribir "Seleccione una opción válida (de 1 a 11)"
	FinSegun		
	
	
	// Muestras del Integrador 2023:
	// -----------------------------
	// muestra = "CACBCACAC"		<-- Tiene Gen Z.
	// muestra = "ADDDABBDD"		<-- NO tiene Gen Z.
	// muestra = "CDDACCACCACAAABC"	<-- Tiene Gen Z.
	// muestra = "ABAABBCBD"		<-- NO tiene Gen Z.
	// muestra = "BCBBABBACBBBBCBB"	<-- Tiene Gen Z.
	// muestra = "BCAADCCBABCCBABB"	<-- NO tiene Gen Z.
	// La siguiente muestra TIENE el Gen Z.
	// muestra = "CCADDBACCDDDDBDBCCABBAABDBCDCADDABABCDCDDABBBCABBABBDCADCCDABDDACDBBBDBDCCDDCABCAAAACDCDCCACDCDDADAADDACBDBCCDDBCBCBBAAADDAADCAABBBCBCCBCBDBCCBBCBABADAACDBDBADCBBACDADAADABBDBDBDBDCCDDCABCCCCCADBBBBCCDACCBBBDBDAADDBCCBCCBCBDDDDCCBAAACDDBBCAABAADABBBCCCCDCCBBDCDABCDACBCBACDBCCDABDBDCDCADCCBBADDBDCCADCCDCCACCDCDBCDBBADBAADBBCAADDABCAADADAABAACCBABDADADADDBCABDCCBBAADDDCDDCBADBCACCAAADCCDDABDBACBCAAADDBADBDACDDBDCBDCCCDDCACBCCCACCCCBACBAAAAACBCBCDAADCAACBCABDDABCBCBACCADABBBABBBBBAACADDDDBABACADAAABDDDCCDCACAACACADADBABACBABDBBADCDBBDACDCAABCADDBDBDCAABDCDABDDADDCDDBCBCDADCDBBDACABCDAABBCBADDDBCBADCABACDCABBCBCBCBCADBABBDBCCCADCADDCBABBDDDBBCBCDABACDDDABCCDBACCBDBADADDDAAACBDCDCCAACBDDCDCBADACDDDDBDCBAACDADBBDBDBCCACADBAABBAADAADDDACDDCDBDDBBDAADDAACCCACDBBBBBDCDCDDDABBCBAAADACADDCDCDCBCDCACAAABCADBDBBDDACCBBDABDDBCADCCCADDCDBACBBBDAADDCDAAADBBCDADBDBCBDDCAABCCDCCDCABCAACADADAACADDBBDABAABACDACDCDBBDDCCBCBCAAACBDBDBBBDBDBBCADCBACDCCBDACBBACBCADCDBACCADCDBDCDBBACBBCDCAAAAABCCDDCDDBBCBABCBCAABDBCCACBABDCABAACBDBDBCCCCADBBCDCCCAABADBACDDBADCDCAADDDCBDDBDCDCCCCCCCDBCDDBACBBCDACDADCACBDBBCCCDCCBCBCDACBDDDACCCAADBDBBDADDCCDDDBCDABCCBACCCCCBAACCBCABAAABBCABBCACCCABCDACBCDBDACACDDCACBCBBCCADABCBBDDABADDAAABACCBDCDABCBBBBACCDABAACDCACCCBBCDDACCDBCBCBAACBBBBADBCBCDABAAAABADAAAACDACADACDBBCCABADDDCACDCAACCDABBDBDAABADDBDCCCACDADBDDDCBBCBDCADCBCDAABDDDDBBBBCDDCC"
	// La siguiente muestra NO tiene el Gen Z.
	// muestra = "ACCDBBADDDCCBACABDCBDCBADBDACBBBBDAABBCCBAACCABDBDCDDABDBDADAAACBBBBCDDDCBBBDDCDABBDDABDBDBBACADCDAAADACDDDACCDCACDDABACDCCCAABDDCCACDADDBCBAACCDBCBCDDDCAACCBAADCBBBCDCBBACBDCCDDADBABCAABBACABDCAACCBDADDCAAACCDBDBBCDDDDDACBCDDADDDDCBADADBDCADDABBCDAACBCCDDDADDADADAACCACDCDDABCCCADABBACDACCAADDBCBCCDADBCCADAAABDDDAABBABCADDCCAADDCDDCDCACBADADACADDAADCBDBCDBDDACDCBCDCCABBDCBACDDACCCDADBCADCACAAABBBCADDDDBCBACDBDAAADDDACCDACBBBADACCCDCACCBACDADBCBBDADACABAACBCCADDCCCCACCCCADBCCDAADCAABBABAADDBDADDABABCCABBCDDACCADAAADBBCCDBADCADCBBDADACCDDBCAAABBBDCAAAACBAADBABBABACDDBBCBDCDCADABABBDADCBADAACDBCBDABADBCBADCACADAABCDDCABACDDBDCBCBDCAAACBDABBCACBACCCBACACDCADBDCDCDDCAACDBDCBACDBBDAABDBBCBAAADBABDBAACAAACDCDAAABABDDDBCACADCBBAADCCDABCCCBBCACCBAABDAADDDCDACDDDBCDCCBABDABACCDCDCDABAABCABBADADCBDDACDDCDDCDACDADADCACBCDABABDDCCDBCCDABACDBDAABDBDDDBADDBACABDCDDBACDDBBDDBBACBCCAACABBDADDBCAACCBCCDADDBCAADDADCCCBAAABABBBBBCABAACADBCBBABACCABCDAABADCCCCDCCADDDCCABBDDDAAADDADACBBBCBDAADACABABBAACCCADADDABDBCADDDCCDBBCCBCDCDBDDDDCACDACDBBBDDBADDACADDADDABCACDCBBADDABBBDCBBDCDAABADDDDDBCACCCCAAACBCBCDBACCCDACCCDBCBDCBADBCDDACCDBDBDBCAAACDDCBAABDBCAADCADDBABABDCBCBCBBBCACBCADDCAAAAAACBBACBBCCACBDCDDDDADCAAACBABDDBDADBAADCBABDDBCDBABDBAADDDBACBBBCCCDBDDBDDAADBBADADDDCBCACBABCDBBABAADABCABCDBACBBBCDBADADDBDCBDABBDDDCDDCCACDCBDCADABAABCDCAACCDDBADBDBCDACAAACBCADCCCBAC"
	
	
	// Se verifica que la muestra sea válida usando un subprograma (una función).
	muestraValida = validaMuestra(muestra)	
	
	// Si la muestra es válida se continúa con el programa. 
	// Sinó no se vá a hacer nada. El programa directamente terminará.
	si muestraValida entonces			
		
		// Se dimensiona la matriz, según el tamaño de la muestra ingresada.
		segun Longitud(muestra) Hacer
			9: n = 3		// 3 x 3 = 9
			16: n = 4		// 4 x 4 = 16
			1369: n = 37	// 37 x 37 = 1369
		FinSegun
		
		dimension matriz[n,n]
		
		// Se llena la matriz con los datos ingresados en la muestra
		llenaMatrizConMuestra(matriz, n, muestra)
		
		// Se imprime la muestra para poder verificar visualmente.
		escribir "La muestra es: ", muestra
		
		// Se imprime la matriz para poder verificar visualmente.
		escribir "La matriz es: "
		imprimeMatriz(matriz, n)
		
		// Se calcula si el gen Z existe usando un subprograma
		genZPresente = analizaMatriz(matriz, n)
		
		si genZPresente Entonces
			escribir "La muestra genética codificada ha sido analizada y TIENE el genZ presente!"
		SiNo
			escribir "La muestra genética codificada NO tiene el genZ presente :("
		FinSi
	FinSi	
	
	
FinAlgoritmo



// Función validaMuestra
// Verifica que el tamaño de una muestra sea el correcto 
// para generar matrices de 3x3, 4x4 o 37x37
// y que todos sus valores sean correctos (A, B, C o D).
// Retorna: Verdadero si se cumplen todas esas condiciones.
// Falso, si no cumple todas.
funcion esValida = validaMuestra (muestra)
	definir esValida, valoresValidos, tamanioValido Como Logico
	definir posicion como entero
	definir letra como caracter
	
	valoresValidos = Verdadero
	
	// Recorre la muestra, caracter por caracter para verificar que
	// todos los valores de la misma sean correctos (A, B, C o D).
	posicion = 0
	Hacer
		// Se toma de la muestra el caracter correspondiente a la posición actual.
		letra = subcadena(muestra, posicion, posicion)
		// Y se pasa a mayúsculas, por si se había ingresado en minúsculas.
		letra = Mayusculas(letra)
		
		//////////////		//DEBUG INFO.
		//////////////		escribir posicion, " ", letra, " ", longitud(muestra) -1
		
		// Si el caracter actual no es ninguno de los correctos (A, B, C o D)
		si letra <> "A" y letra <> "B" y letra <> "C" y letra <> "D" Entonces			
			valoresValidos = Falso			
		FinSi
		
		posicion = posicion + 1
		
	Mientras que posicion < longitud(muestra) y valoresValidos == Verdadero
	
	// Si alguno de los caracteres de la muestra no es válido, se imprime un error por pantalla.
	si valoresValidos == Falso Entonces
		escribir "Error en el contenido de la muestra ingresada."
		escribir "Se encontró al menos un caracter no válido (distinto de A, B, C o D)."
	FinSi
	
	// Para que el tamaño de la muestra sea válido, la misma tiene que tener una longitúd de...
	// 9 (para poder generar una matriz de 3x3)
	// 16 (para poder generar una matriz de 4x4)
	// 1369 (para poder generar una matriz de 37x37).
	// Cualquier otro tamaño de muestra es incorrecto.
	tamanioValido = (Longitud(muestra) == 9 o Longitud(muestra) == 16 o Longitud(muestra) == 1369)
	
	// Si el tamaño de la muestra no es válido, se imprime un error por pantalla.
	si tamanioValido == Falso Entonces
		Escribir "Error en el tamaño de la muestra ingresada."
		escribir "No se pueden generar matrices de 3x3, ni 4x4, ni 37x37."
	FinSi	
	
	// Si todos los valores de la muestra son válidos y el tamaño de la misma es válido
	// entonces la muestra "esValida". Sinó, no.
	esValida = valoresValidos y tamanioValido	
	
FinFuncion



// Subprograma llenaMatrizConMuestra
// Llena la "matriz" de tamaño "n"x"n" con los datos ingresados en la "muestra".
SubProceso llenaMatrizConMuestra (matriz Por Referencia, n, muestra)
	definir posicion, fila, columna Como Entero
	definir letra como caracter
	
	// Se recorren todas las posiciones de la muestra, de a una...
	para posicion = 0 hasta Longitud(muestra) - 1 con paso 1 Hacer
		
		////		// Se convierten las posiciones de la muestra a coordenadas en la matriz.
		////		// Ejemplo: matriz de 3x3 (n=3), longitud de muestra = 9
		////		// posicion     matriz fila    matriz columna
		////		// 		0			0			0
		////		//		1			0			1
		////		//		2			0			2
		////		//		3			1			0
		////		//		4			1			1
		////		// 		5			1			2
		////		//		6			2			0
		////		// 		7			2			1
		////		//		8			2			2
		////		
		////		fila = trunc(posicion/n)
		////		
		////		columna = posicion mod n
		////		
		////		// Se asigna a letra, el caracter correspondiente a la posición actual de la muestra.
		////		letra = subcadena(muestra, posicion, posicion)
		////		
		////		// Se asigna la letra a la matriz en la fila y columna actuales.
		////		matriz[fila, columna] = letra
		
		
		// Más comprensible que la versión eliminada de arriba (y funciona más rápido).
		posicion = 0
		// Se recorren todas las filas y columnas de la matriz
		para fila = 0 hasta n - 1 con paso 1 Hacer
			para columna = 0 hasta n - 1 con paso 1 Hacer			
				
				// Se asigna a letra, el caracter correspondiente a la posición actual de la muestra.
				letra = subcadena(muestra, posicion, posicion)
				
				// Se asigna la letra a la matriz en la fila y columna actuales.
				matriz[fila, columna] = letra
				
				// Se pasa a la siguiente posición (para leer la siguiente letra de la muestra).
				posicion = posicion + 1
			FinPara
		FinPara
		
	FinPara
	
FinSubProceso



// Subprograma imprimeMatriz 
// Imprime los valores de una "matriz" de nxn.
SubProceso imprimeMatriz (matriz por referencia, n)
	
	definir fila, columna como entero
	
	// Para cada fila y columna, se imprime el valor de la matriz.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		para columna = 0 hasta n - 1 con paso 1 Hacer	
			// Imprime cada valor de la matriz.
			escribir Sin Saltar matriz[fila, columna]
			// Agrega un separador entre cada valor, a menos que sea la última columna.
			si columna <> n -1 entonces
				escribir sin saltar " "
			finsi			
		FinPara	
		// Imprime un salto de línea para pasar a la siguiente línea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso



// Funcion analizaMatriz.
// Analiza una "matriz" de tamaño "n"x"n".
// Retorna verdadero si que cada una de sus dos diagonales tenga los mismos caracteres (A, B, C o D).
// Sinó, falso.
funcion genZPresente = analizaMatriz(matriz, n)
	definir genZPresente como logico
	definir diag1, diag2 Como Logico
	definir fila, columna como entero
	definir letra, letraAnterior Como Caracter
	
	// Para calcular si la primera diagonal (1,1), (2,2), (3,3), etc
	// tiene todos los mismos caracteres..
	
	diag1 = Verdadero
	letra = ""
	letraAnterior = ""
	
	// Recorre todas las filas de la matriz desde la posición 0 hasta N.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		// Recorre todas las columnas de la matriz desde la posición 0 hasta N.
		para columna = 0 hasta n - 1 con paso 1 Hacer
			// En la diagonal1 las filas y columnas son iguales (1,1), (2,2), (3,3), etc.
			si fila == columna Entonces
				
				// Se extrae la letra correspondiente a la posición actual en la matriz.
				letra = matriz[fila, columna]
				// Se pasa la letra a mayúsculas por si la muestra se ingresó en minúsculas.
				letra = mayusculas(letra)
				
				// Se inicializa letraAnterior = letra para la primera posición de la diagonal.
				si letraAnterior == "" Entonces
					letraAnterior = letra
				FinSi
				
				// Se compara la letra de la posición actual en la matriz, con la letra que se
				// tomó en la posición anterior de la diagonal. Si son distintas, la diagonal
				// ya no valida la condición para que el gen Z esté presente.
				si letra <> letraAnterior Entonces
					diag1 = Falso
				FinSi
				
			FinSi
		FinPara
	FinPara
	
	////////////	// DEBUG INFO.
	////////////	escribir "diagonal1 ", diag1
	
	// Para calcular si la segunda diagonal 
	// tiene todos los mismos caracteres..
	
	diag2 = Verdadero
	letra = ""
	letraAnterior = ""
	
	// Recorre todas las filas de la matriz desde la posición 0 hasta N.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		// Recorre todas las columnas de la matriz desde la posición 0 hasta N.
		para columna = 0 hasta n con paso 1 Hacer
			// En la diagonal2 las filas y columnas son (fila, col -(fila-1))
			si fila + columna == ( n - 1) Entonces
				
				// Se extrae la letra correspondiente a la posición actual en la matriz.
				letra = matriz[fila, columna]
				// Se pasa la letra a mayúsculas por si la muestra se ingresó en minúsculas.
				letra = mayusculas(letra)
				
				// Se inicializa letraAnterior = letra para la primera posición de la diagonal.
				si letraAnterior == "" Entonces
					letraAnterior = letra
				FinSi
				
				// Se compara la letra de la posición actual en la matriz, con la letra que se
				// tomó en la posición anterior de la diagonal. Si son distintas, la diagonal
				// ya no valida la condición para que el gen Z esté presente.
				si letra <> letraAnterior Entonces
					diag1 = Falso
				FinSi
				
			FinSi
		FinPara
	FinPara	
	
	//////////	// DEBUG INFO.
	//////////	escribir "diagonal2 ", diag2
	
	// Si ambas diagonales tienen cada una las mismas letras, entonces el genZ estará presente!
	genZPresente = diag1 y diag2
	
FinFuncion



// Función generaMuestraValida37(verdaderoOFalso)
// Genera una muestra válida para formar una matriz de 37 x 37.
// Si el parámetro recibido (generarMuestraConGenZ) es "Verdadero", contendrá el gen Z.
// Si el parámetro recibido (generarMuestraConGenZ) es "Falso", genera una muestra
funcion muestra = generaMuestraValida37 (generarMuestraConGenZ)
	definir muestra como cadena
	
	definir fila, columna, posicion Como Entero
	definir matriz Como Caracter
	definir caracterAleatorio, letra, caracterAleatorioParaDiagonales como caracter
	
	dimension matriz[37,37]
	dimension caracterAleatorio[4]
	
	caracterAleatorio[0] = "A"
	caracterAleatorio[1] = "B"
	caracterAleatorio[2] = "C"
	caracterAleatorio[3] = "D"
	
	// Si hay que devolver una muestra con el Gen Z ("generarMuestraConGenZ"==Verdadero),
	// se elije al azar un caracter válido (A, B, C o D) y se guarda
	// en "caracterAleatorioParaDiagonales". Este caracter es el que se guardará 
	// para todas las posiciones de la matriz que correspondan a alguna de las diagonales principales.
	// Siempre será el mismo caracter, por lo que la matriz que esta muestra genere, 
	// contendrá el Gen Z.
	si generarMuestraConGenZ entonces
		caracterAleatorioParaDiagonales = caracterAleatorio[Aleatorio(0,3)]
	FinSi	
	
	// LLena una matriz de 37 x 37 con caracteres elejidos al azar seleccionados entre A, B, C y D.
	// Si la posición corresponde a una diagonal principal, se asignará siempre el mismo
	// caracter "caracterAleatorioParaDiagonales", previamente seleccionado.
	// Una vez que la matriz esté completamente llena, se pasará la misma
	// a formato cadena de caracteres y se guardará en "muestra".
	
	// Para todas las filas y columnas de una "matriz"
	// Se llena la "matriz" de la forma anteriormente indicada.
	para fila = 0 hasta 37 - 1 con paso 1 Hacer
		para columna = 0 hasta 37 - 1 con paso 1 Hacer
			
			// Si hay que generar una muestra que contenga el Gen Z ("generarMuestraConGenZ"==Verdadero), 
			// y la posición actual en la matriz corresponde a una diagonal..			
			si generarMuestraConGenZ y (fila == columna o (fila + columna) == 37 - 1) Entonces
				
				// Se asigna a la matriz en la posición actual un caracter que será
				// igual en todas las posiciones que correspondan a una diagonal de la matriz.
				matriz[fila, columna] = caracterAleatorioParaDiagonales
				
			SiNo
				// Si no se cumplen las condiciones anteriores, simplemente se agrega
				// a la matriz en la posición actual un caracter aleatorio, de los válidos (A, B, C o D).				
				matriz[fila, columna] = caracterAleatorio[aleatorio(0,3)]
			FinSi
		FinPara
	FinPara
	
	// Se pasa la matriz a una cadena de caracteres
	// usando el mismo algoritmo de la función llenaMatrizConMuestra()
	// solo que invertido, porque en este caso se llena una muestra con una matriz.
	
	muestra = ""
	
	//////	// Se recorren todas las posiciones de la muestra, de a una...
	//////	para posicion = 0 hasta (37 * 37) - 1 con paso 1 Hacer
	//////		
	//////		// Se convierten las coordenadas de la matriz (filas y columnas) a posiciones de la muestra.
	//////		// Ejemplo: matriz de 3x3 (n=3), longitud de muestra = 9
	//////		// matriz fila    matriz col	posición
	//////		// 		0			0				0
	//////		//		0			1				1
	//////		//		0			2				2
	//////		//		1			0				3
	//////		//		1			1				4
	//////		// 		1			2				5
	//////		//		2			0				6
	//////		// 		2			1				7
	//////		//		2			2				8
	//////		
	//////		fila = trunc(posicion/37)
	//////		
	//////		columna = posicion mod 37
	//////		
	//////		// Se asigna a letra, el caracter correspondiente a la posición actual de la matriz.
	//////		letra = matriz[fila, columna]
	//////		
	//////		// Se agrega la letra actual a la muestra.
	//////		muestra = Concatenar(muestra, letra)
	//////		
	//////	FinPara
	
	
	// Más comprensible que la versión eliminada de arriba (y funciona más rápido).
	posicion = 0
	// Se recorren todas las filas y columnas de la matriz
	para fila = 0 hasta 37 - 1 con paso 1 Hacer
		para columna = 0 hasta 37 - 1 con paso 1 Hacer			
			
			// Se asigna a letra, el caracter correspondiente a la posición actual de la matriz.
			letra = matriz[fila, columna] 
			
			// Se agrega la letra actual a la muestra.
			muestra = Concatenar(muestra, letra)
			
			// Se pasa a la siguiente posición (para leer la siguiente letra de la matriz).
			posicion = posicion + 1
		FinPara
	FinPara

FinFuncion
