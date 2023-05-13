// Clase 9 - Prácticos - Ejercicio 3 - página 2
// Fer V - jalmendra99@gmail.com
//
// Un docente de Programación tiene un listado de 3 notas registradas 
// por cada uno de sus N estudiantes. La nota final se compone de 
// - un trabajo práctico Integrador (35%), 
// - una Exposición (25%) y 
// - un Parcial (40%). 
// El docente requiere los siguientes informes claves de sus estudiantes:
// * Nota promedio final de los estudiantes que reprobaron el curso. 
//    Un estudiante reprueba el curso si tiene una nota final inferior a 6.5 
// * Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5. 
// * La mayor nota obtenida en las exposiciones. 
// * Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5. 
// El programa pedirá la cantidad de alumnos que tiene el docente 
// y en cada alumno pedirá las 3 notas y calculará todos informes 
// claves que requiere el docente.
//
// -----------------------------
// Fer: Nota: Ejercicio largo. Resolver los pedidos de a uno

Algoritmo practicos_ejercicio3
	
	// Definición de variables.
	definir nota1, nota2, nota3, notaFinal como real
	definir sumaReprobados, cantReprobados, PromedioReprobados como real
	definir cantIntegrador, porcentaje Como Real
	definir notaMayor como real
	
	definir i, cantidadAlumnos, totalEstudiantes Como Entero
		
	// Inicialización de variables.		
	nota1 = 0; nota2 = 0; nota3 = 0; notaFinal = 0
	SumaReprobados = 0; cantReprobados = 0; PromedioReprobados = 0
	cantIntegrador = 0; porcentaje = 0
	notaMayor = 0
	i = 0
	cantidadAlumnos = 0
	totalEstudiantes = 0
	
	// Se informa premisa al usuario.
	escribir "Se pedirá ingresar la cantidad de alumnos que tiene un profesor " sin saltar
	escribir "luego por cada alumno se solicitarán ingresar su nombre " sin saltar
	escribir "y las 3 notas registradas a su nombre. " sin saltar
	escribir "Luego se calcularán y presentaran en pantalla varios informes."
	
	// Se ingresa el nombre del alumno
	// y se verifica que sea un número entero y positivo
	Hacer
		escribir "Ingrese la cantidad de alumnos: " sin saltar
		leer cantidadAlumnos
	Mientras Que cantidadAlumnos <= 0
	
	// Se hacen todos los cálculos para cada alumno.
	para i = 1 hasta cantidadAlumnos con paso 1 Hacer
		
		escribir "Para el alumno #", i, " ingrese.."
		escribir "La nota del trabajo práctico Integrador: " sin saltar
		leer nota1
		escribir "La nota de la exposición: " sin saltar
		leer nota2
		escribir "La nota del parcial: " sin saltar
		leer nota3
		
		notaFinal = (nota1 * 0.35) + (nota2 * 0.25) + (nota3 * 0.4)
		
		// reprobados. Calcular la nota promedio final
		si notaFinal < 6.5 Entonces
			cantReprobados = cantReprobados + 1
			SumaReprobados = SumaReprobados + notaFinal
		FinSi
		
		// Alumnos con nota de trabajo práctico integrador mayor que 7.5
		si nota1 > 7.5 Entonces
			cantIntegrador = cantIntegrador + 1
		FinSi
		
		// Se calcula la mayor nota de la exposición (nota2)
		si nota2 > notaMayor Entonces
			notaMayor = nota2
		FinSi
		
		// Se calcula el total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5. 
		si nota3 >= 4 y nota3 <= 7.5 Entonces
			totalEstudiantes = totalEstudiantes + 1
		FinSi	
		
	FinPara
	
	// Se calcula la nota promedio de los alumnos reprobados.
	si cantReprobados > 0 Entonces
		PromedioReprobados = SumaReprobados / cantReprobados
	FinSi
	
	// Se calcula el porcentaje de alumnos con nota de trabajo práctico integrador mayor que 7.5
	si cantIntegrador > 0 Entonces
		porcentaje = cantIntegrador * 100 / cantidadAlumnos
	FinSi
	
	// La información solicitada se muestra por pantalla.
	
	// Se confirma si hubo o no alumnos reprobados y se muestra la información correcta
	si PromedioReprobados > 0 entonces
		escribir "La nota promedio de los alumnos reprobados (con nota final < 6.5) es ", PromedioReprobados, "."
	SiNo
		escribir "No hubo alumnos reprobados! (con nota final < 6.5)"
	FinSi	
	
	escribir "El porcentaje de alumnos con nota mayor a 7.5 en el T.P. integrador es ", porcentaje, "%."
	escribir "La mayor nota obtenida en las exposiciones es ", notaMayor, "."
	escribir "La cantidad de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5 es ", totalEstudiantes, "."
	
FinAlgoritmo

/////// Agregar pruebas: 
//	
//	estud	nota1	nota2	nota3	final	Prom	porcent		mayor	total
//		1		1		5		6		1		
//		2
//		3
//
//

