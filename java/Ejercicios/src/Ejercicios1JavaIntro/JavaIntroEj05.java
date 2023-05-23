/*
Java Intro - Ejercicio 5 - Entrada.
Fer V - Jalmendra99@gmail.com

EJERCICIO 5

Define una variable de tipo boolean, double y char. 
Guarda información en ellas a través del Scanner.

DETECCIÓN DE ERRORES 

Arreglar la siguiente porción de codigo. 

public static void main(String[] args) { 
    Scanner leer = new Scanner(); 
    System.out.println("Ingresa tu edad"); 
    String nombre = leer.nextInt();

    System.out.println("Ingresa tu nombre"); 
    int edad = leer.next();
    } 
}

 */
package Ejercicios1JavaIntro;

import java.util.Scanner;

public class JavaIntroEj05 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        System.out.println("Ingresa tu nombre");
        String nombre = leer.nextLine();

        System.out.print("Ingresa tu edad: ");
        int edad = leer.nextInt();

    }

}
