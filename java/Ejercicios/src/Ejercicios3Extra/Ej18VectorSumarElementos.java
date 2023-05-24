/*
Java - Ejercicios extra
Ejercicio 18 - Página 48
Sumar los elementos de un vector.

Fer V - Jalmendra99@gmail.com

Realizar un algoritmo que calcule la suma de todos los elementos de un vector 
de tamaño N, con los valores ingresados por el usuario.


-------------------------------------------------------------------------
Este fuente usa métodos de la clase LibFerArrays
que se encuentra en el paquete EjerciciosDeAprendizaje.
por lo que para llamar a los mismos se usaría: LibFerArrays.NOMBREDEMETODO()
-------------------------------------------------------------------------

 */
package Ejercicios3Extra;

import Ejercicios2DeAprendizaje.LibFerArrays;
import java.util.Scanner;

public class Ej18VectorSumarElementos {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int tamanio, sumatoria;
        int[] vector;

         // Se informa la premisa al usuario.
        System.out.print("Se solicitará ingresar un número entero <n> y se ");
        System.out.println("generará un vector de enteros de tamaño <n>.");
        System.out.println("Luego se ingresarán todos los valores para el vector.");
        System.out.println("Finalmente se mostrará la suma total de los mismos.");        
        
        // Se ingresa un número entero positivo.
        // Se fuerza a que sea mayor que cero.
        do {
            System.out.print("Ingrese el tamaño del vector: ");
            tamanio = leer.nextInt();
        } while (tamanio <= 0);

        // Se dimensiona el vector con el tamaño ingresado.
        vector = new int[tamanio];
        
        // Se llena el vector con los enteros ingresados por el usuario.
        for (int posicion = 0; posicion < tamanio; posicion++) {
            System.out.print("Ingrese un valor para la posición #" + posicion + ": ");
            vector[posicion] = leer.nextInt();
        }
        
        sumatoria = 0;
        // Se calcula la sumatoria de los valores del vector.
        for (int elemento: vector) {
            sumatoria += elemento;
        }
        
        // Se muestra en pantalla la información solicitada.
        System.out.println("La sumatoria de los elementos del vector es: " + sumatoria + ".");
        
        // Se imprime por pantalla el vector para verificar visualmente.
        LibFerArrays.imprimeVectorEnteros(vector, tamanio);
    }

}
