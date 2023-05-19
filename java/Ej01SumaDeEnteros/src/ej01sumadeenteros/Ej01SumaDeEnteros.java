/*
Java - Ejercicios de aprendizaje
Ejercicio 1 - Página 42
Suma de enteros.

Fer V - Jalmendra99@gmail.com

Escribir un programa que pida dos números enteros por teclado y calcule 
la suma de los dos. 
El programa deberá después mostrar el resultado de la suma.

 */
package ej01sumadeenteros;

import java.util.Scanner;

public class Ej01SumaDeEnteros {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int numero1, numero2, suma;

        System.out.print("Ingrese el primer entero a sumar: ");
        numero1 = leer.nextInt();

        System.out.print("Ingrese el segundo entero a sumar: ");
        numero2 = leer.nextInt();

        System.out.println("La suma de " + numero1 + " + " + numero2 + " es " + numero1 + numero2);

    }
}
