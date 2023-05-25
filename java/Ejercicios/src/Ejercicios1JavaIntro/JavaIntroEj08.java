/*
Java Intro - Ejercicio 8 - While.
Fer V - Jalmendra99@gmail.com

EJERCICIO 8

Escriba un programa que valide si una nota está entre 0 y 10, 
sino está entre 0 y 10 la nota se pedirá de nuevo hasta que la nota sea correcta.

 */
package Ejercicios1JavaIntro;

import java.util.Scanner;

public class JavaIntroEj08 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        System.out.print("Ingrese una nota entre 0 y 10: ");
        int num = leer.nextInt();

        while (num < 0 || num > 10) {

            System.out.print("Ingrese una nota entre 0 y 10: ");
            num = leer.nextInt();

        }
        System.out.println("La nota seleccionada es: " + num);
    }
}
