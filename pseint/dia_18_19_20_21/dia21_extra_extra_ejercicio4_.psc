// Clase 21 - ExtrasExtras - Ejercicio 4
// Fer V - jalmendra99@gmail.com
//
// RECORDAR TODO LO QUE VIMOS HASTA AHORA: ESTRUCTURAS DE CONTROL, SUBPROGRAMAS, ARREGLOS.
// 
// 4) Funci�n prisioneroDulce(): Estamos en caramelolandia, donde est�n los peores
//    ladrones de dulces. Una vez al mes, se sienta una n cantidad de presos en ronda,
//    contemplando al preso que inicia la ronda, como el preso 0. A los presos se les da una
//    m cantidad de caramelos, estos caramelos se repartir�n de uno en uno a cada preso, 
//    contemplando que se comenzar�n a repart�r los caramelos desde el primer preso (inicio).
//    Se repartir�n los caramelos hasta que no queden m�s y el �ltimo caramelo en repartirse
//    estar� podrido. Determinar a que preso, seg�n su posici�n en la ronda le tocar� 
//    el caramelo podrido.


// Principal.
Algoritmo clase21_extras_extras_ejercicio4
	
	// Definici�n de variables.
	definir presos, caramelos, podrido Como Entero	
	
	// Se informa la premisa al usuario.
	escribir "Se solicitar�n ingresar al usuario dos cantidades (presos y caramelos) " sin saltar
	escribir "se ordenar�n los presos en una ronda y se les repartir� un caramelo " sin saltar
	escribir "a cada uno. El �ltimo caramelo repartido esta ~podrido~. "
	escribir "Se calcular� a que n�mero de preso le tocar� el ~caramelo podrido~."
	
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
	
	// Se muestra la informaci�n solicitada por pantalla.
	escribir "El caramelo podrido le tocar� al preso # ", podrido, "."
	escribir ""
	escribir "...pero si el primer preso cuenta como # 0 en vez de # 1"
	escribir "...y el �ltimo preso cuenta como # ", presos - 1, " en vez de # ", presos, ", entonces..."
	escribir "El caramelo podrido le tocar� al preso # ", podrido - 1, "."
	
FinAlgoritmo


// Funci�n prisioneroDulce()
// Retorna el n�mero de prisionero al que le toca el caramelo podrido.
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
