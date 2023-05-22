/*
Java - Ejercicios de aprendizaje
Ejercicio 5 - Página 42
Calcular doble, triple y raíz cuadrada de un número.

Fer V - Jalmendra99@gmail.com

Escribir un programa que lea un número entero por teclado 
y muestre por pantalla el doble, el triple y la raíz cuadrada 
de ese número. Nota: investigar la función Math.sqrt().

 */
package ej05dobletripleraiz;

import java.util.Scanner;

public class EJ05DobleTripleRaiz {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int numero;

        // Se informa la premisa al usuario.
        System.out.print("Se solicitará ingresar un número entero y se ");
        System.out.print("calculará el doble del mismo, el triple y ");
        System.out.println("su raíz cuadrada.");
        
        // Se ingresa el número.
        System.out.print("Ingrese un número entero: ");
        numero = leer.nextInt();

        // Se calcula el equivalente en °Farenheit
        System.out.println("El doble de " + numero + " es " + (numero * 2) + ".");
        System.out.println("El triple de " + numero + " es " + (numero * 3) + ".");
        System.out.println("La raíz cuadrada de " + numero + " es " + Math.sqrt(numero) + ".");

    }
}
