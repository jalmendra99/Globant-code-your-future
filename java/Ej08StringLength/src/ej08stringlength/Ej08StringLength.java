/*
Java - Ejercicios de aprendizaje
Ejercicio 8 - Página 42
String length.

Fer V - Jalmendra99@gmail.com

Realizar un programa que solo permita introducir solo frases o palabras 
de 8 de largo. Si el usuario ingresa una frase o palabra 
de 8 de largo se deberá de imprimir un mensaje por pantalla 
que diga “CORRECTO”, en caso contrario, 
se deberá imprimir “INCORRECTO”. 
Nota: investigar la función Lenght() en Java.

 */
package ej08stringlength;

import java.util.Scanner;

public class Ej08StringLength {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        String frase;

        // Se informa la premisa al usuario.
        System.out.print("Se pedirá al usuario ingresar una frase ");
        System.out.print("y se verificará si la misma mide 8 letras ");
        System.out.println("de largo o no.");

        // Se ingresa la frase.
        System.out.print("Ingrese una frase (hint: 8 letras): ");
        frase = leer.nextLine();

        // Se verifica si la frase mide 8 caracteres o no.
        if (frase.length() == 8) {
            System.out.println("Correcto.");
        } else {
            System.out.println("Incorrecto.");
        }

    }
}
