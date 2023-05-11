// Clase 21 - ExtrasExtras - Ejercicio 3
// Fer V - jalmendra99@gmail.com
//
// RECORDAR TODO LO QUE VIMOS HASTA AHORA: ESTRUCTURAS DE CONTROL, SUBPROGRAMAS, ARREGLOS.
//
// 3) Queremos realizar una encuesta a 6 personas, en esta encuesta:
// * Indicaremos el sexo: 1=masculino, 2=femenino
// * Si trabaja: 1=trabaja, 2=no trabaja
// * Su sueldo (que estará entre 600 y 2000, valor entero, siempre y cuando trabaje, sinó es 0)
// * Calcule y muestre:
//   a) Porcentaje de hombres / porcentaje de mujeres
//   b) Porcentaje de hombres que trabajan / porcentaje de mujeres que trabajan.
//   c) Sueldo promedio de los hombres que trabajan / sueldo promedio de las mujeres que trabajan.


// Principal.
Algoritmo clase21_extras_extras_ejercicio3
	
	// Definición de variables.
	definir masculino Como Logico
	definir trabaja Como Logico
	definir sueldo Como Entero
	definir persona como entero
	
	definir sexo, trabajaSiNo Como Caracter
	
	definir hombres, mujeres, hombresTrabajan, mujeresTrabajan, hombresSueldoTot, mujeresSueldoTot como entero
	
	// Inicialización de variables.
	hombres = 0
	mujeres = 0
	hombresTrabajan = 0
	mujeresTrabajan = 0
	hombresSueldoTot = 0
	mujeresSueldoTot = 0
	
	// Se informa la premisa al usuario.
	escribir Sin Saltar "Se solicitará ingresar los dtos de 6 personas para una encuesta "
	escribir sin saltar "y luego, para cada una se solicitará: sexo (m/f), si trabaja o no "
	escribir sin saltar "y si trabaja, su sueldo. Luego se calculará y mostrará el porcentaje "
	escribir sin saltar "de hombres/mujeres, el porcentaje de hombres que trabajan / mujeres "
	escribir "que trabajan y el sueldo promedio de los hombres que trabajan y las mujeres que trabajan."
	
	// Se solicita ingresar los datos al usuario...
	// Para cada una de las 6 personas que se ván a ingresar...
	para persona = 0 hasta 6 - 1 con paso 1 Hacer
		
		escribir "Para la persona # ", persona +1, " ingrese:"
		
		// Se solicita ingresar el sexo.
		// Se fuerza a que la respuesta sea solo (m/f/M/F)
		Hacer
			escribir "Sexo (m/M o f/F): " Sin Saltar
			leer sexo			
		Mientras Que mayusculas(sexo) <> "M" y mayusculas(sexo) <> "F"
		
		// Si es sexo masculino...
		si mayusculas(sexo) == "M" Entonces
			
			// Se calcula el total de hombres
			hombres = hombres + 1
			
		SiNo // Si es sexo femenino...
			
			// Se calcula el total de mujeres
			mujeres = mujeres + 1
		FinSi
		
		// Se solicita ingresar si trabaja o no.
		// Se fuerza a que la respuesta sea solo (m/f/M/F)
		Hacer
			escribir "Trabaja? (s/S o n/N): " Sin Saltar
			leer trabajaSiNo			
		Mientras Que mayusculas(trabajaSiNo) <> "S" y mayusculas(trabajaSiNo) <> "N"
		
		si mayusculas(trabajaSiNo) == "S" Entonces
			
			// Se solicita ingresar el sueldo.
			// Se fuerza a que la respuesta esté en el rango 600-2000
			Hacer
				escribir "Sueldo (600~2000): " Sin Saltar
				leer sueldo
			Mientras Que sueldo < 600 o sueldo > 2000
			
			// Se calcula el total de hombres y mujeres que trabajan
			si mayusculas(sexo) == "M" Entonces
				hombresTrabajan = hombresTrabajan + 1
				hombresSueldoTot = hombresSueldoTot + sueldo
			SiNo
				mujeresTrabajan = mujeresTrabajan + 1
				mujeresSueldoTot = mujeresSueldoTot + sueldo
			FinSi
			
		SiNo
			trabaja = falso
			// Si la persona no trabaja el sueldo es cero.
			sueldo = 0
		FinSi		
		
	FinPara
	
	// Se muestra la información solicitada por pantalla.
	escribir "El porcentaje de hombres es de ", hombres / 6 * 100, "% " Sin Saltar
	escribir "y el de mujeres es de ", mujeres / 6 * 100, "%."
	escribir "El porcentaje de hombres que trabajan es de ", hombresTrabajan / hombres * 100, "%. " sin saltar
	escribir "y el de mujeres que trabajan es de ", mujeresTrabajan / mujeres * 100, "%."
	escribir "El sueldo promedio de los hombres que trabajan es de ", hombresSueldoTot / hombresTrabajan
	escribir "El sueldo promedio de las mujeres que trabajan es de ", mujeresSueldoTot / mujeresTrabajan
	
finAlgoritmo
