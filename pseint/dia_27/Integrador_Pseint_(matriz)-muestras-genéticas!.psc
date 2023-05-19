// Integrador - (matrices) Muestras gen�ticas!
// Fer V - jalmendra99@gmail.com
// 
// Ejercicio integrador del a�o 2022, compartido por Eliana Gasparri en grupo de whatsapp.
//
// El apocalipsis Zombie se ha desatado, pero a�n hay esperanza. 
// El Dr. Galard ha conseguido aislar el gen Z analizando muestras gen�ticas codificadas. 
// Una muestra se corresponde con una secuencia de caracteres 
// compuesta de cuatro posibles bases (A,B,C,D), por ejemplo: "ACDDCADBCDABDBBA". 
// Para poder detectar el gen Z, se representa la muestra como una matriz cuadrada (MxM) 
// y se busca en las dos diagonales principales que todas las bases sean iguales. 
// Siguiendo el ejemplo de la muestra anterior la matriz resultante es
// A C D D
// C A D B
// C D A B
// D B B A
// Galard aclara que para que la muestra sea v�lida el orden de la matriz (el valor de M) 
// debe ser 3x3, 4x4 o 37x37 (seg�n la muestra). 
// Por desgracia, de antemano no es posible saber el orden de la matriz 
// y el mismo debe ser inferido de la muestra ingresada.
// Tu misi�n: hacer un programa que permita ingresar una muestra completa, 
// detectar si es v�lida, y de ser as�, que imprima la matriz y muestre un mensaje que indique 
// si se ha detectado o no el gen Z.
// Hoy la humanidad depende de ti.
// Reglas de Resoluci�n: 
// a) Es obligatorio el uso de al menos una variable N-dimensional. 
// b) La muestra la guardamos en una variable en el c�digo, no por consola. 
//    Es decir: NO hay que usar Leer muestra sino asignarle un valor 
//    muestra = "ACDDCADBCDABDBBA" en el c�digo
// c) Subdivida el problema de tal forma de utilizar al menos dos subprogramas.



// Principal.
Algoritmo Integrador_muestras_geneticas
	
	// Definici�n de variables.
	definir matriz Como Caracter
	definir muestra como cadena
	definir n Como Entero				// Para definir el tama�o de la matriz (nxn)
	definir muestraValida Como Logico	// Sale del programa si la muestra tiene tama�o incorrecto.
	definir genZPresente Como Logico	
	
	definir menu como entero
	
	// Se informa la premisa al usuario.
	escribir "Elegir� una muestra, que luego se representar� como una matriz de 3x3, 4x4 o 37x37 " Sin Saltar
	escribir "para intentar encontrar el gen Z seg�n el m�todo del Dr. Galard, que consiste en " sin saltar
	escribir "buscar que en cada una de las dos diagonales principales todas las bases sean " Sin Saltar
	escribir "iguales (A, B, C o D)."
	escribir ""
	escribir "Muestras:"
	escribir "---------"
	escribir "1. ACDDCADBCDABDBB  <- Tama�o inv�lido para 3x3, 4x4 y 37x37."
	escribir "2. ABCDAB           <- Tama�o inv�lido para 3x3, 4x4 y 37x37."
	escribir "3. ABCDEFGHI        <- Tama�o v�lido pero tiene caracteres inv�lidos."
	escribir "4. GHIABCD          <- Tama�o inv�lido y caracteres inv�lidos! (G, H, I)."
	escribir "5. ACDDCADBCDABDBBA <- Tama�o v�lido para 4x4 y tiene el gen Z."
	escribir "6. ACDACADBCDABDBBA <- Tama�o v�lido para 4x4 pero sin el gen Z."
	escribir "7. ACDACAABCAABABBA <- Tama�o v�lido para 4x4 y tiene el gen Z."
	escribir "8. ABACABADA        <- Tama�o v�lido para 3x3 y tiene el gen Z."
	escribir "9. ABACBBADA        <- Tama�o v�lido para 3x3 pero sin el gen Z."
	escribir "10. Genera una muestra con tama�o v�lido para 37x37 y gen Z presente."
	escribir "11. Genera una muestra con tama�o v�lido para 37x37 pero sin el gen Z."
	escribir ""
	escribir "Seleccione una muestra para verificar si tiene el gen Z: " sin saltar
	leer menu
	
	// No se puedo hacer un men� repetitivo con hacer...Mientras 
	// porque no se encontr� forma de redimensionar la matriz m�s de una vez
	// para reusarla con otra muestra, una vez que ya fu� dimensionada para una primera muestra.
	
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
			escribir "Seleccione una opci�n v�lida (de 1 a 11)"
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
	
	
	// Se verifica que la muestra sea v�lida usando un subprograma (una funci�n).
	muestraValida = validaMuestra(muestra)	
	
	// Si la muestra es v�lida se contin�a con el programa. 
	// Sin� no se v� a hacer nada. El programa directamente terminar�.
	si muestraValida entonces			
		
		// Se dimensiona la matriz, seg�n el tama�o de la muestra ingresada.
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
			escribir "La muestra gen�tica codificada ha sido analizada y TIENE el genZ presente!"
		SiNo
			escribir "La muestra gen�tica codificada NO tiene el genZ presente :("
		FinSi
	FinSi	
	
	
FinAlgoritmo



// Funci�n validaMuestra
// Verifica que el tama�o de una muestra sea el correcto 
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
		// Se toma de la muestra el caracter correspondiente a la posici�n actual.
		letra = subcadena(muestra, posicion, posicion)
		// Y se pasa a may�sculas, por si se hab�a ingresado en min�sculas.
		letra = Mayusculas(letra)
		
		//////////////		//DEBUG INFO.
		//////////////		escribir posicion, " ", letra, " ", longitud(muestra) -1
		
		// Si el caracter actual no es ninguno de los correctos (A, B, C o D)
		si letra <> "A" y letra <> "B" y letra <> "C" y letra <> "D" Entonces			
			valoresValidos = Falso			
		FinSi
		
		posicion = posicion + 1
		
	Mientras que posicion < longitud(muestra) y valoresValidos == Verdadero
	
	// Si alguno de los caracteres de la muestra no es v�lido, se imprime un error por pantalla.
	si valoresValidos == Falso Entonces
		escribir "Error en el contenido de la muestra ingresada."
		escribir "Se encontr� al menos un caracter no v�lido (distinto de A, B, C o D)."
	FinSi
	
	// Para que el tama�o de la muestra sea v�lido, la misma tiene que tener una longit�d de...
	// 9 (para poder generar una matriz de 3x3)
	// 16 (para poder generar una matriz de 4x4)
	// 1369 (para poder generar una matriz de 37x37).
	// Cualquier otro tama�o de muestra es incorrecto.
	tamanioValido = (Longitud(muestra) == 9 o Longitud(muestra) == 16 o Longitud(muestra) == 1369)
	
	// Si el tama�o de la muestra no es v�lido, se imprime un error por pantalla.
	si tamanioValido == Falso Entonces
		Escribir "Error en el tama�o de la muestra ingresada."
		escribir "No se pueden generar matrices de 3x3, ni 4x4, ni 37x37."
	FinSi	
	
	// Si todos los valores de la muestra son v�lidos y el tama�o de la misma es v�lido
	// entonces la muestra "esValida". Sin�, no.
	esValida = valoresValidos y tamanioValido	
	
FinFuncion



// Subprograma llenaMatrizConMuestra
// Llena la "matriz" de tama�o "n"x"n" con los datos ingresados en la "muestra".
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
		////		// Se asigna a letra, el caracter correspondiente a la posici�n actual de la muestra.
		////		letra = subcadena(muestra, posicion, posicion)
		////		
		////		// Se asigna la letra a la matriz en la fila y columna actuales.
		////		matriz[fila, columna] = letra
		
		
		// M�s comprensible que la versi�n eliminada de arriba (y funciona m�s r�pido).
		posicion = 0
		// Se recorren todas las filas y columnas de la matriz
		para fila = 0 hasta n - 1 con paso 1 Hacer
			para columna = 0 hasta n - 1 con paso 1 Hacer			
				
				// Se asigna a letra, el caracter correspondiente a la posici�n actual de la muestra.
				letra = subcadena(muestra, posicion, posicion)
				
				// Se asigna la letra a la matriz en la fila y columna actuales.
				matriz[fila, columna] = letra
				
				// Se pasa a la siguiente posici�n (para leer la siguiente letra de la muestra).
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
			// Agrega un separador entre cada valor, a menos que sea la �ltima columna.
			si columna <> n -1 entonces
				escribir sin saltar " "
			finsi			
		FinPara	
		// Imprime un salto de l�nea para pasar a la siguiente l�nea en pantalla.
		escribir ""
	FinPara
	
FinSubProceso



// Funcion analizaMatriz.
// Analiza una "matriz" de tama�o "n"x"n".
// Retorna verdadero si que cada una de sus dos diagonales tenga los mismos caracteres (A, B, C o D).
// Sin�, falso.
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
	
	// Recorre todas las filas de la matriz desde la posici�n 0 hasta N.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		// Recorre todas las columnas de la matriz desde la posici�n 0 hasta N.
		para columna = 0 hasta n - 1 con paso 1 Hacer
			// En la diagonal1 las filas y columnas son iguales (1,1), (2,2), (3,3), etc.
			si fila == columna Entonces
				
				// Se extrae la letra correspondiente a la posici�n actual en la matriz.
				letra = matriz[fila, columna]
				// Se pasa la letra a may�sculas por si la muestra se ingres� en min�sculas.
				letra = mayusculas(letra)
				
				// Se inicializa letraAnterior = letra para la primera posici�n de la diagonal.
				si letraAnterior == "" Entonces
					letraAnterior = letra
				FinSi
				
				// Se compara la letra de la posici�n actual en la matriz, con la letra que se
				// tom� en la posici�n anterior de la diagonal. Si son distintas, la diagonal
				// ya no valida la condici�n para que el gen Z est� presente.
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
	
	// Recorre todas las filas de la matriz desde la posici�n 0 hasta N.
	para fila = 0 hasta n - 1 con paso 1 Hacer
		// Recorre todas las columnas de la matriz desde la posici�n 0 hasta N.
		para columna = 0 hasta n con paso 1 Hacer
			// En la diagonal2 las filas y columnas son (fila, col -(fila-1))
			si fila + columna == ( n - 1) Entonces
				
				// Se extrae la letra correspondiente a la posici�n actual en la matriz.
				letra = matriz[fila, columna]
				// Se pasa la letra a may�sculas por si la muestra se ingres� en min�sculas.
				letra = mayusculas(letra)
				
				// Se inicializa letraAnterior = letra para la primera posici�n de la diagonal.
				si letraAnterior == "" Entonces
					letraAnterior = letra
				FinSi
				
				// Se compara la letra de la posici�n actual en la matriz, con la letra que se
				// tom� en la posici�n anterior de la diagonal. Si son distintas, la diagonal
				// ya no valida la condici�n para que el gen Z est� presente.
				si letra <> letraAnterior Entonces
					diag1 = Falso
				FinSi
				
			FinSi
		FinPara
	FinPara	
	
	//////////	// DEBUG INFO.
	//////////	escribir "diagonal2 ", diag2
	
	// Si ambas diagonales tienen cada una las mismas letras, entonces el genZ estar� presente!
	genZPresente = diag1 y diag2
	
FinFuncion



// Funci�n generaMuestraValida37(verdaderoOFalso)
// Genera una muestra v�lida para formar una matriz de 37 x 37.
// Si el par�metro recibido (generarMuestraConGenZ) es "Verdadero", contendr� el gen Z.
// Si el par�metro recibido (generarMuestraConGenZ) es "Falso", genera una muestra
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
	// se elije al azar un caracter v�lido (A, B, C o D) y se guarda
	// en "caracterAleatorioParaDiagonales". Este caracter es el que se guardar� 
	// para todas las posiciones de la matriz que correspondan a alguna de las diagonales principales.
	// Siempre ser� el mismo caracter, por lo que la matriz que esta muestra genere, 
	// contendr� el Gen Z.
	si generarMuestraConGenZ entonces
		caracterAleatorioParaDiagonales = caracterAleatorio[Aleatorio(0,3)]
	FinSi	
	
	// LLena una matriz de 37 x 37 con caracteres elejidos al azar seleccionados entre A, B, C y D.
	// Si la posici�n corresponde a una diagonal principal, se asignar� siempre el mismo
	// caracter "caracterAleatorioParaDiagonales", previamente seleccionado.
	// Una vez que la matriz est� completamente llena, se pasar� la misma
	// a formato cadena de caracteres y se guardar� en "muestra".
	
	// Para todas las filas y columnas de una "matriz"
	// Se llena la "matriz" de la forma anteriormente indicada.
	para fila = 0 hasta 37 - 1 con paso 1 Hacer
		para columna = 0 hasta 37 - 1 con paso 1 Hacer
			
			// Si hay que generar una muestra que contenga el Gen Z ("generarMuestraConGenZ"==Verdadero), 
			// y la posici�n actual en la matriz corresponde a una diagonal..			
			si generarMuestraConGenZ y (fila == columna o (fila + columna) == 37 - 1) Entonces
				
				// Se asigna a la matriz en la posici�n actual un caracter que ser�
				// igual en todas las posiciones que correspondan a una diagonal de la matriz.
				matriz[fila, columna] = caracterAleatorioParaDiagonales
				
			SiNo
				// Si no se cumplen las condiciones anteriores, simplemente se agrega
				// a la matriz en la posici�n actual un caracter aleatorio, de los v�lidos (A, B, C o D).				
				matriz[fila, columna] = caracterAleatorio[aleatorio(0,3)]
			FinSi
		FinPara
	FinPara
	
	// Se pasa la matriz a una cadena de caracteres
	// usando el mismo algoritmo de la funci�n llenaMatrizConMuestra()
	// solo que invertido, porque en este caso se llena una muestra con una matriz.
	
	muestra = ""
	
	//////	// Se recorren todas las posiciones de la muestra, de a una...
	//////	para posicion = 0 hasta (37 * 37) - 1 con paso 1 Hacer
	//////		
	//////		// Se convierten las coordenadas de la matriz (filas y columnas) a posiciones de la muestra.
	//////		// Ejemplo: matriz de 3x3 (n=3), longitud de muestra = 9
	//////		// matriz fila    matriz col	posici�n
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
	//////		// Se asigna a letra, el caracter correspondiente a la posici�n actual de la matriz.
	//////		letra = matriz[fila, columna]
	//////		
	//////		// Se agrega la letra actual a la muestra.
	//////		muestra = Concatenar(muestra, letra)
	//////		
	//////	FinPara
	
	
	// M�s comprensible que la versi�n eliminada de arriba (y funciona m�s r�pido).
	posicion = 0
	// Se recorren todas las filas y columnas de la matriz
	para fila = 0 hasta 37 - 1 con paso 1 Hacer
		para columna = 0 hasta 37 - 1 con paso 1 Hacer			
			
			// Se asigna a letra, el caracter correspondiente a la posici�n actual de la matriz.
			letra = matriz[fila, columna] 
			
			// Se agrega la letra actual a la muestra.
			muestra = Concatenar(muestra, letra)
			
			// Se pasa a la siguiente posici�n (para leer la siguiente letra de la matriz).
			posicion = posicion + 1
		FinPara
	FinPara

FinFuncion
