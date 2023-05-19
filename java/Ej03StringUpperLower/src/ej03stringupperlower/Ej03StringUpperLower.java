
/*
Java - Ejercicios de aprendizaje
Ejercicio 3 - Página 42
String to uppercase and lowercase.

Fer V - Jalmendra99@gmail.com

Escribir un programa que pida una frase y la muestre toda en mayúsculas 
y después toda en minúsculas. 
Nota: investigar la función toUpperCase() y toLowerCase() en Java.

 */
package ej03stringupperlower;

import java.util.Scanner;

public class Ej03StringUpperLower {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        String nombre;

        System.out.print("Ingrese su nombre: ");
        nombre = leer.nextLine();

        System.out.println("El nombre ingresado en mayúsculas es: " + nombre.toUpperCase() + ".");
        System.out.println("El nombre ingresado en minúsculas es: " + nombre.toLowerCase() + ".");
J
    }
}
