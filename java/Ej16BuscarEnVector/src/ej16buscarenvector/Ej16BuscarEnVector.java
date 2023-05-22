/*
Java - Ejercicios de aprendizaje
Ejercicio 16 - Página 44
Buscar en vector.

Fer V - Jalmendra99@gmail.com

Realizar un algoritmo que rellene un vector de tamaño N 
con valores aleatorios y le pida al usuario un numero a buscar en el vector. 
El programa mostrará donde se encuentra el numero y si se encuentra repetido.

 */
package ej16buscarenvector;

import java.util.Scanner;

public class Ej16BuscarEnVector {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int n, x, posicionEncontrado;
        boolean repetido;

        // Se informa la premisa al usuario.
        System.out.print("Se solicitará ingresar un número entero n ");
        System.out.print("para generar un vector de enteros de tamaño n ");
        System.out.print("que se llenará de números enteros elegidos al azar ");
        System.out.print("entre 0 y 100. ");
        System.out.print("Finalmente se solicitará ingresar un número ");
        System.out.print("entero para buscarlo dentro del vector ");
        System.out.print("y, si se encuentra, se informará en que posición. ");
        System.out.println("También se informará si se encuentra repetido.");

        // Se Pide al usuario ingresar el número "n" para dimensionar el vector.
        System.out.print("Ingrese un número entero: ");
        n = leer.nextInt();

        // Se dimensiona el vector con el número "n" ingresado.
        int[] vector = new int[n];

        // Se llena el vector con valores aleatorios entre 0 y 100.
        for (int i = 0; i < n - 1; i++) {
            vector[i] = (int) (Math.random() * 101);
        }

        // Se Pide al usuario ingresar el número "x" para buscar en el vector.
        System.out.print("Ingrese un número para buscar en el vector (0 a 100): ");
        x = leer.nextInt();

        // Se inicializa la variable.
        // Si al final de la búsqueda sigue valiendo -1, entonces
        // el número "x" no se encontró en el "vector".
        posicionEncontrado = -1;
        repetido = false;

        // Se rrecorre todo el "vector" buscando el número "x".
        // Si se encuentra, se guarda la "posiciónEncontrada" y si
        // se encuentra una segunda vez, se asignara a "repetido" = true.
        for (int i = 0; i < n - 1; i++) {
            if (vector[i] == x && posicionEncontrado == -1) {
                posicionEncontrado = i;
            } else if (vector[i] == x && posicionEncontrado != -1) {
                repetido = true;
            }
        }

        // Se muestra la información solicitada por pantalla.
        // Si no se encontró el número x en el vector..
        if (posicionEncontrado == -1) {
            System.out.println("El número " + x + " no ha sido encontrado en el vector.");

        } else { // Si se encontró el número x en el vector.
            System.out.println("El número " + x + " se encontró en la posición " + posicionEncontrado + " del vector.");

            // Se avisa al usuario si el número x se encontró más de una vez en el vector.
            if (repetido) {
                System.out.println("Además se encuentra repetido.");
            } else {
                System.out.println("No se encuentra repetido.");
            }
        }

        // Se muestra el vector completo para poder verificar visualmente.
        System.out.print("El vector es: [");
        for (int i = 0; i < n - 1; i++) {
            System.out.print(vector[i] + " ");
        }
        System.out.println("]");

    }
}
