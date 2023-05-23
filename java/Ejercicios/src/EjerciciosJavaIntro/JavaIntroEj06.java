/*
Java Intro - Ejercicio 6 - if.
Fer V - Jalmendra99@gmail.com

EJERCICIO 6

Implementar un programa que le pida dos números enteros a usuario 
y determine si ambos o alguno de ellos es mayor a 25.

 */
package EjerciciosJavaIntro;

import java.util.Scanner;

public class JavaIntroEj06 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        System.out.print("Ingrese un número entero: ");
        int num1 = leer.nextInt();

        System.out.print("Ingrese otro número entero: ");
        int num2 = leer.nextInt();

        if (num1 > 25 && num2 > 25) {
            System.out.println("Ambos " + num1 + " y " + num2 + " son mayores que 25.");
        } else if (num1 > 25) {
            System.out.println("El primer número " + num1 + " es mayor que 25.");
        } else if (num2 > 25) {
            System.out.println("El segundo número " + num2 + " es mayor que 25.");
        } else {
            System.out.println("Ni " + num1 + ", ni " + num2 + " son mayores que 25.");
        }

    }

}
