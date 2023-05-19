
/*
Java - Ejercicios de aprendizaje
Ejercicio 9 - Página 42
Substring.

Fer V - Jalmendra99@gmail.com

Escriba un programa que pida una frase o palabra y valide 
si la primera letra de esa frase es una ‘A’. 
Si la primera letra es una ‘A’, se deberá de imprimir un mensaje 
por pantalla que diga “CORRECTO”, en caso contrario, 
se deberá imprimir “INCORRECTO”. 
Nota: investigar la función Substring y equals() de Java.

 */
package ej09substring;

import java.util.Scanner;

public class Ej09Substring {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        String frase;

        // Se informa la premisa al usuario.
        System.out.print("Se pedirá al usuario ingresar una frase ");
        System.out.print("y se verificará si la primera letra es una 'A'");
        System.out.println("");

        // Se ingresa la frase.
        System.out.print("Ingrese una frase: ");
        frase = leer.nextLine();

        // Se verifica si la primera letra de la frase es una 'A'.
        if (frase.substring(0, 1).equals("A")) {
            System.out.println("Correcto.");
        } else {
            System.out.println("Incorrecto.");
        }

    }
}
