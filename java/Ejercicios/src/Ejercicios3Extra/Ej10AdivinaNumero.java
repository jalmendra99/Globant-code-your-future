/*
Java - Ejercicios extra
Ejercicio 10 - Página 47
Adivina un número.

Fer V - Jalmendra99@gmail.com

Realice un programa para que el usuario adivine el resultado 
de una multiplicación entre dos números generados aleatoriamente 
entre 0 y 10. El programa debe indicar al usuario si su respuesta 
es o no correcta. En caso que la respuesta sea incorrecta se debe 
permitir al usuario ingresar su respuesta nuevamente. 
Para realizar este ejercicio investigue como utilizar 
la función Math.random() de Java.

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej10AdivinaNumero {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        int numero1, numero2, producto, numIngresado;

        // Se asignan números aleatorios entre 0 y 10 a numero1 y 2.
        numero1 = (int) (Math.random() * 11);
        numero2 = (int) (Math.random() * 11);

        producto = numero1 * numero2;

        // Se informa la premisa al usuario.
        System.out.print("Se generó un número aleatorio, producto de dos ");
        System.out.println("números generados aleatoriamente entre 0 y 10. ");
        System.out.println("Adivine el número generado (entre 0 y 100).");
//        System.out.println("(Hint: es " + producto + ").");

        // Se solicita al usuario ingresar números para adivinar.
        // y solo se finaliza cuando adivine el número.
        do {
            System.out.print("Ingrese un número entre 0 y 100: ");
            numIngresado = leer.nextInt();

            // Se le dán pistas al usuario para que adivine más rápido.
            if (numIngresado > producto) {
                System.out.println("<El número es menor al ingresado>");
            } else if (numIngresado < producto) {
                System.out.println("<El número es mayor al ingresado>");
            }

        } while (numIngresado != producto);

        // Se muestra un mensaje en pantalla cuando el usuario adivina el número.
        System.out.println("¡Felicitaciones! Adivinó el número.");

    }
}
