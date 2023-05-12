// Clase 21 - ExtrasExtras - Ejercicio 4
// Fer V - jalmendra99@gmail.com
//
// RECORDAR TODO LO QUE VIMOS HASTA AHORA: ESTRUCTURAS DE CONTROL, SUBPROGRAMAS, ARREGLOS.
// 
// 4) Función prisioneroDulce(): Estamos en caramelolandia, donde están los peores
//    ladrones de dulces. Una vez al mes, se sienta una n cantidad de presos en ronda,
//    contemplando al preso que inicia la ronda, como el preso 0. A los presos se les da una
//    m cantidad de caramelos, estos caramelos se repartirán de uno en uno a cada preso, 
//    contemplando que se comenzarán a repartír los caramelos desde el primer preso (inicio).
//    Se repartirán los caramelos hasta que no queden más y el último caramelo en repartirse
//    estará podrido. Determinar a que preso, según su posición en la ronda le tocará 
//    el caramelo podrido.


// Principal.
Algoritmo clase21_extras_extras_ejercicio4
	
	// Definición de variables.
	definir presos, caramelos, podrido Como Entero	
	
	// Se informa la premisa al usuario.
	escribir "Se solicitarán ingresar al usuario dos cantidades (presos y caramelos) " sin saltar
	escribir "se ordenarán los presos en una ronda y se les repartirá un caramelo " sin saltar
	escribir "a cada uno. El último caramelo repartido esta ~podrido~. "
	escribir "Se calculará a que número de preso le tocará el ~caramelo podrido~."
	
	// Se solicita la cantidad de presos y caramelos
	// Se fuerza a que los presos sean entre 1 y 10 para simplificar comprobaciones.
	// Se fuerza a que los caramelos sean entre 1 y 100 para simplificar comprobaciones.
	hacer
		escribir "Ingrese la cantidad de presos: " sin saltar
		leer presos
		escribir "Ingrese la cantidad de caramelos: " sin saltar
		leer caramelos
	mientras que presos < 1 o presos > 10 o caramelos < 1 o caramelos > 100
	
	// Se calcula a que preso le toca el caramelo "podrido".
	podrido = prisioneroDulce(presos, caramelos)
	
	// Se muestra la información solicitada por pantalla.
	escribir "El caramelo podrido le tocará al preso # ", podrido, "."
	escribir ""
	escribir "...pero si el primer preso cuenta como # 0 en vez de # 1"
	escribir "...y el último preso cuenta como # ", presos - 1, " en vez de # ", presos, ", entonces..."
	escribir "El caramelo podrido le tocará al preso # ", podrido - 1, "."
	
FinAlgoritmo


// Función prisioneroDulce()
// Retorna el número de prisionero al que le toca el caramelo podrido.
// Recibe: numero de presos y numero de caramelos
funcion podrido = prisioneroDulce (presos, caramelos)
	definir podrido Como Entero
	podrido = caramelos mod presos
FinFuncion

// Pruebas:
// Presos	caramelos	Podrido
// 10		5			5
// 10		19			9
// 10		41			1
