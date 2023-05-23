/*
Java - Ejercicios de aprendizaje
Ejercicio 15 - Página 44
Llenar vector con números enteros.

Fer V - Jalmendra99@gmail.com

Realizar un algoritmo que rellene un vector con los 100 primeros 
números enteros y los muestre por pantalla en orden descendente.

 */
package EjerciciosDeAprendizaje;

public class Ej15LlenarVector {

    public static void main(String[] args) {

        // Definición de variables.
        int[] numero = new int[100];

        // Se llena el vector con los números de 1 a 100.
        for (int i = 0; i < 100; i++) {
            numero[i] = i + 1;
        }

        // Se muestra el vector en órden descendiente desde su posición 99 hasta 0.
        for (int i = 100 - 1; i >= 0; i--) {
            System.out.println(numero[i]);
        }

    }
}
