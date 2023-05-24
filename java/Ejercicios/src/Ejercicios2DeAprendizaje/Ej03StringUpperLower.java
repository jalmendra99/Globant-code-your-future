/*
Java - Ejercicios de aprendizaje
Ejercicio 3 - Página 42
String to uppercase and lowercase.

Fer V - Jalmendra99@gmail.com

Escribir un programa que pida una frase y la muestre toda en mayúsculas 
y después toda en minúsculas. 
Nota: investigar la función toUpperCase() y toLowerCase() en Java.

 */
package Ejercicios2DeAprendizaje;

import java.util.Scanner;

public class Ej03StringUpperLower {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        String frase;

        System.out.print("Ingrese una frase: ");
        frase = leer.nextLine();

        System.out.println("En mayúsculas, la frase es: " + frase.toUpperCase() + ".");
        System.out.println("En minúsculas, la frase es: " + frase.toLowerCase() + ".");

    }
}
