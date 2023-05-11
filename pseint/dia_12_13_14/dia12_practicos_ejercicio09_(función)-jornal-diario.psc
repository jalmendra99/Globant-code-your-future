// Clase 12 - Prácticos - Ejercicio 9 - páginas 2 y 3
// Fer V - jalmendra99@gmail.com
//
// Los empleados de una fábrica trabajan en dos turnos: Diurno y Nocturno. 
// Se desea calcular el jornal diario de acuerdo con las siguientes reglas:
// a) La tarifa de las horas diurnas es de $ 90
// b) La tarifa de las horas nocturnas es de $ 125
// c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno 
// es diurno y en un 15% si el turno es nocturno.
// El programa debe solicitar la siguiente información al usuario: 
// el nombre del trabajador, el día de la semana, el turno (diurno o nocturno) 
// y la cantidad de horas trabajadas. Además,
// debemos preguntarle al usuario si el día de la semana (lunes, martes, miércoles, etc.) 
// era festivo o no, para poder calcular el jornal diario. 
// Utilice una función para realizar el cálculo.


// Principal.
Algoritmo ejercicio9
	
	// Definición de variables.
	definir nombre Como cadena
	definir feriado Como Logico
	definir horas Como Entero
	definir dia, turno Como Caracter
	definir jornal como real
	
	// Inicialización de variables.
	nombre = ""
	dia = ""
	turno = ""
	feriado = Falso
	horas = 0
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se solicitará ingresar un nombre de trabajador, el día de trabajo, "
	escribir sin saltar "el turno, la cantidad de horas trabajadas y si el día de trabajo "
	escribir            "era festivo o no."
	
	// Se solicita la información al usuario.	
	escribir "Ingrese el nombre del trabajador: "
	leer nombre
	
	// Se solicita el turno y se fuerza a que sea d/D/n/N.
	Hacer
		escribir "ingrese el turno ([d/D] = día - [n/N] = noche)"
		leer turno
	Mientras Que turno <> "d" y turno <> "D" y turno <> "n" y turno <> "N"
	
	// Se solicitan las horas trabajadas y se fuerzan a ser 0 o positivas.
	Hacer
		escribir "Ingrese la cantidad de horas trabajadas: "
		leer horas		
	Mientras Que horas < 0
	
	// Se solicita confirmar si fué feriado y se fuerza a que sea s/S/n/N.
	Hacer
		escribir "¿Trabajó en día feriado? (s/S o n/N): "
		leer dia		
	Mientras Que dia <> "s" y dia <> "S" y dia <> "n" y dia <> "N"
	
	si dia == "s" o dia == "S" Entonces
		feriado = Verdadero
	FinSi
	
	// Se calcula el jornal usando usando la función solicitada.
	jornal = CalcularJornal (turno, horas, feriado)
	
	// Y se presenta el resultado por pantalla.
	escribir "Para el trabajador ", nombre, " el jornal será de $", jornal, "."
	
FinAlgoritmo


// Función calcular Jornal. 
// Retorna el jornal diario de un empleado.
Funcion retorno = CalcularJornal (turno, horas, feriado)
	definir retorno Como real
	
	retorno = 0
	
	// a) La tarifa de las horas diurnas es de $ 90
	si turno == "d" o turno == "D" Entonces
		
		retorno = horas * 90
		
		// c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno 
		si feriado Entonces
			retorno = retorno + ( retorno * 0.1) // o retorno * 1.10
		FinSi
		
	SiNo
		// La tarifa de las horas nocturnas es de $ 125
		si turno == "n" o turno == "N" Entonces
			
			retorno = horas * 125
			
			// c) En caso de ser feriado, la tarifa se incrementa en un 15% si el turno es nocturno.
			si feriado Entonces
				retorno = retorno + (retorno * 0.15) // o retorno * 1.15
			FinSi
		FinSi
	FinSi	
	
fin funcion
