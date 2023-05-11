// Clase 6 - Extra - Ejercicio 4 - página 2
// Fer V - jalmendra99@gmail.com
//
// Condicionales anidados
// Si se compran menos de cinco llantas el precio es de $3000 cada una, 
// si se compran entre 5 y 10 el precio es de $2500, 
// y si se compran más de 10 el precio es $2000. 
// Obtener la cantidad de dinero que una persona tiene que pagar 
// por cada una de las llantas que compra, 
// y el monto total que tiene que pagar por el total de la compra.

Algoritmo extra_ejercicio4
	
	// Definición de variables.
	definir cantidad, precio, total Como entero
	
	// Inicialización de variables.
	cantidad = 0
	precio = 0
	total = 0
	
	// Se informa premisa al usuario.
	escribir "Se pedirá al usuario ingresar la cantidad de llantas que quiere comprar"
	escribir "y se determinará el precio individual de cada llanta y del total de la compra."
	
	// Cargando la cantidad ingresada por el usuario.
	escribir "Ingrese la cantidad de llantas a comprar: "
	leer cantidad
	
	// Se determina el precio basandose en la cantidad ingresada.
	si cantidad < 5
		precio = 3000
	SiNo // cantidad es >= 5
		si cantidad <= 10
			precio = 2500
		sino // cantidad > 10
			precio = 2000
		FinSi
	FinSi
	
	// Se calcula el total de la compra usando el precio correspondiente y la cantidad comprada.
	total = precio * cantidad
	
	// Se muestra la información solicitada
	imprimir "El precio de cada llanta es de ", precio, " y el total de la compra es de ", total
	
FinAlgoritmo
