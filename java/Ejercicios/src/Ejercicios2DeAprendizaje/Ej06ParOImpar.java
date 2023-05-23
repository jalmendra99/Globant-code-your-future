/*
Java - Ejercicios de aprendizaje
Ejercicio 6 - Página 42
Calcular si un número es par o impar.

Fer V - Jalmendra99@gmail.com

Crear un programa que dado un numero determine si es par o impar.

 */
package Ejercicios2DeAprendizaje;

import java.util.Scanner;

public class Ej06ParOImpar {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int numero;

        // Se informa la premisa al usuario.
        System.out.print("Se solicitará ingresar un número entero y se ");
        System.out.println("calculará si el mismo es par o impar.");

        // Se ingresa el número.
        System.out.print("Ingrese un número entero: ");
        numero = leer.nextInt();        

        // Se determina si el número ingresado es par o impar.
        if (numero % 2 == 0) {
            System.out.println("El número ingresado es par.");
        } else {
            System.out.println("El número ingresado es impar.");
        }

    }
}
