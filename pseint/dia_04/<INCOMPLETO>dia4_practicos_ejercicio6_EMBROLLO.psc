// Clase 4 - Pr�cticos - Ejercicio 6 - p�gina 2
// Fer V - jalmendra99@gmail.com
//
// En medio de la auditor�a interna, el equipo est� cubriendo 
// a un compa�ero de trabajo que est� de licencia. 
// Su compa�ero de trabajo ha dejado un mensaje con las tareas a realizar.
// 
// "�Hola! Muchas gracias por cubrirme. Lo principal que debes hacer es 
// completar la hoja de c�lculo de ingresos mensuales. 
// Puedes hacerlo buscando los �ltimos ingresos publicitarios
// en los informes de marketing. Despu�s de hacer todo eso, revisa
// mi correo electr�nico y si hay menos de 10 correos sin leer 
// revisa mi correo de voz para ver si hay alguna solicitud de los ejecutivos. 
// Si hay tales solicitudes, h�galas primero a menos que tenga 
// una solicitud de emergencia de otro departamento. 
// Una vez que hayas terminado con la solicitud de cumplimiento, 
// riegue la planta de mi escritorio despu�s de apagar la computadora. 
// Ah, espera, deber�a haber mencionado un par de cosas: 
// debes iniciar sesi�n con usuario de administrador para ver los 
// informes de marketing, y tendr�s que enviarme un 
// correo electr�nico de actualizaci�n justo despu�s de que termines de manejar 
// las solicitudes. Bueno, gracias de nuevo. �Es de gran ayuda! 
// Te debo el almuerzo cuando regrese."
//
// Nuestra tarea ser� imprimir por pantalla la lista de tareas 
// en el orden que corresponden para que luego las podamos realizar. 
// �Te animas a colocar las tareas en el orden correcto? 
// Para hacer esto, debes crear en PSeInt la cantidad de variables 
// que creas correctas y asignarles valor. Por ejemplo:
// cantidadEmails = 6 
// solicitudesEjecutivos = 3

////////// INCOMPLETO Hacer!!
////////// VER EJERCICIO RESUELTO EN CLASE.

Algoritmo extra_ejercicio6
	
	// Definici�n de variables.
	definir cantidadEmails, solicitudesEjecutivos, solicitudDeEmergencia como entero	
	
	// Inicializaci�n de variables.
	cantidadEmails = 6 
	solicitudesEjecutivos = 3
	solicitudDeEmergencia = 5
	
	// Se informa premisa al usuario
	escribir "Se ordenar� e imprimir� un listado de tareas por hacer " sin saltar
	escribir "basado en los datos ingresados."
	
	// Cargar datos ingresados por el usuario en variables.
	escribir "Ingrese la cantidad de emails: "
	leer cantidadEmails
	escribir "Ingrese la cantidad de solicitudes de los ejecutivos: "
	leer solicitudesEjecutivos
	escribir "Ingrese la cantidad de solicitudes de emergencia: "
	leer solicitudDeEmergencia
	
	// Se muestra por pantalla el listado de tareas
	escribir "- buscar los �ltimos ingresos publicitarios en los informes de marketing."
	escribir "- completar la hoja de c�lculo de ingresos mensuales."
	escribir "- revisar correo electr�nico."
	si cantidadEmails < 10 Entonces
		escribir "- revisar correo de voz para ver si hay alguna solicitud de los ejecutivos"
		si solicitudesEjecutivos > 0 Entonces
			
		FinSi
	FinSi
	escribir ""
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
FinAlgoritmo
