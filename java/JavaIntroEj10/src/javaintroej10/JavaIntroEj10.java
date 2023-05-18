/*
Java Intro - Ejercicio 10 - For.
Fer V - Jalmendra99@gmail.com

EJERCICIO 10

Realizar un programa que lea 4 números (comprendidos entre 1 y 20) 
e imprima el número ingresado seguido de tantos asteriscos 
como indique su valor. 
Por ejemplo:
5 ***** 
3 *** 
11 *********** 
2 **

 */
package javaintroej10;

import java.util.Scanner;

public class JavaIntroEj10 {

    public static void main(String[] args) {

        // Definición de variables.
        int num = 0;

        Scanner leer = new Scanner(System.in);

        // Repite 4 veces, para ingresar 4 números.
        for (int i = 0; i < 4; i++) {

            // Fuerza a que el número ingresado esté entre 1 y 20.
            do {
                System.out.print("Ingrese un número entre 1 y 20: ");
                num = leer.nextInt();
            } while ((num < 1) || (num > 20));

            // Escribe por pantalla el número ingresado, sin salto de línea.
            System.out.print(num + " ");
            
            // Repite "num" veces.
            for (int j = 0; j < num; j++) {
                // Imprime un asterisco en pantalla, sin salto de línea.
                System.out.print("*");
            }
            // Imprime un salto de línea.
            System.out.println("");
        }

    }

}
