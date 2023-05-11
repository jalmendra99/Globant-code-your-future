// Clase 7 - Prácticos - Ejercicio 7 - página 3
// Fer V - jalmendra99@gmail.com
//
// Calcular las calificaciones de un grupo de alumnos. 
// La nota final de cada alumno se calcula según el siguiente criterio: 
// la parte práctica vale el 10%; 
// la parte de problemas vale el 50% 
// y la parte teórica el 40%. 
// El programa leerá el nombre del alumno, las tres notas obtenidas, 
// mostrará el resultado por pantalla, y a continuación volverá a pedir 
// los datos del siguiente alumno hasta que el nombre sea una cadena vacía. 
// Las notas deben estar comprendidas entre 0 y 10, 
// y si no están dentro de ese rango no se imprimirá el promedio 
// y se mostrará un mensaje de error.

Algoritmo practicos_ejercicio7
	
	// Definición de variables.
	definir nota1, nota2, nota3, final como real
	definir nombre como cadena
	definir notaValida Como Logico
	
	// Inicialización de variables.	
	nota1 = 0
	nota2 = 0
	nota3 = 0
	final = 0
	nombre = ""
	notaValida = Falso
	
	// Se informa premisa al usuario.
	escribir "Se solicitará ingresar el nombre del alumno y las tres notas obtenidas"
	escribir "para proceder a calcular la nota final, si el nombre del alumno no es una cadena vacía"
	escribir "(sinó el programa finalizará) y las notas ingresadas están comprendidas entre 0 y 10"
	escribir "(sinó el programa mostrará un mensaje de error."
	
	// Se solicita al usuario ingresar el primer nombre
	escribir "Por favor ingrese el nombre de un alumno: "
	leer nombre
	
	// Se continúa solicitando ingresar nombres mientras el nombre no sea "".
	mientras nombre <> "" Hacer		
		escribir "Ingrese la nota de la parte práctica (vale el 10% de la nota final): "
		leer nota1
		escribir "Ingrese la nota de la parte problemas (vale el 50% de la nota final): "
		leer nota2
		escribir "Ingrese la nota de la parte teórica (vale el 40% de la nota final): "
		leer nota3
		
		notaValida = nota1 >= 0 y nota1 <= 10 y nota2 >= 0 y nota2 <= 10 y nota3 >= 0 y nota3 <= 10
		
		si notaValida entonces
			// Se calcula la nota final.
			final = (nota1 * 0.1) + (nota2 * 0.5) + (nota3 * 0.4)
			// Se presenta la información solicitada por pantalla.
			escribir "La nota final que corresponde es: ", final
		SiNo
			escribir "Error: No se puede calcular el promedio."
		fin si
		
		escribir "Por favor ingrese el nombre de un alumno: "
		leer nombre
		
	FinMientras	

FinAlgoritmo
