
/*
Java - Ejercicios de aprendizaje
Ejercicio 2 - Página 42
Cargar y mostrar un String

Fer V - Jalmendra99@gmail.com

Escribir un programa que pida tu nombre, lo guarde en una variable 
y lo muestre por pantalla.

 */
package ej02stringcargarymostrar;

import java.util.Scanner;

public class Ej02StringCargarYMostrar {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        String nombre;

        System.out.print("Ingrese su nombre: ");
        nombre = leer.nextLine();

        System.out.println("El nombre ingresado es: " + nombre + ".");

    }
}
