/*
Java - Ejercicios extra
Ejercicio 19 - Página 48
Comparar dos vectores.

Fer V - Jalmendra99@gmail.com

Escriba un programa que averigüe si dos vectores de N enteros son iguales 
(la comparación deberá detenerse en cuanto se detecte 
alguna diferencia entre los elementos).


-------------------------------------------------------------------------
Este fuente usa métodos de la clase LibFerArrays
que se encuentra en el paquete EjerciciosDeAprendizaje.
por lo que para llamar a los mismos se usaría: LibFerArrays.NOMBREDEMETODO()
-------------------------------------------------------------------------

 */
package Ejercicios3Extra;

import Ejercicios2DeAprendizaje.LibFerArrays;
import java.util.Scanner;

public class Ej19VectoresIguales {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int tamanio;
        int[] vector1, vector2;
        boolean vectoresSonIguales;

         // Se informa la premisa al usuario.
        System.out.print("Se solicitará ingresar un número entero <n> y se ");
        System.out.println("generaran dos vectores de enteros de tamaño <n>.");
        System.out.println("Luego se ingresarán todos los valores para los vectores.");
        System.out.println("Finalmente se verificará si los vectores son iguales.");
        
        // Se ingresa un número entero positivo.
        // Se fuerza a que sea mayor que cero.
        do {            
            System.out.print("\nIngrese el tamaño de los vectores: ");
            tamanio = leer.nextInt();
        } while (tamanio <= 0);

        // Se dimensiona el vector con el tamaño ingresado.
        vector1 = new int[tamanio];
        vector2 = new int[tamanio];
        
        // Se llena el vector1 con los enteros ingresados por el usuario.
        System.out.println("\nLlenando el primer vector.");
        for (int posicion = 0; posicion < tamanio; posicion++) {
            System.out.print("Ingrese un valor para la posición #" + posicion + ": ");
            vector1[posicion] = leer.nextInt();
        }
        // Se llena el vector2 con los enteros ingresados por el usuario.
        System.out.println("\nLlenando el segundo vector.");
        for (int posicion = 0; posicion < tamanio; posicion++) {
            System.out.print("Ingrese un valor para la posición #" + posicion + ": ");
            vector2[posicion] = leer.nextInt();
        }
        
        // Se comparan los vectores para ver si son iguales.
        vectoresSonIguales = LibFerArrays.comparaVectoresEnteros(vector1, vector2, tamanio);
        
        // Se muestra en pantalla la información solicitada.
        System.out.println("");
        if (vectoresSonIguales) {
            System.out.println("Los vectores son iguales.");
        } else {
            System.out.println("Los vectores son diferentes.");
        }
        
        // Se imprimen por pantalla los vectores para verificar visualmente.
        System.out.println("");
        System.out.println("El vector1 es:");
        LibFerArrays.imprimeVectorEnteros(vector1, tamanio);
        System.out.println("");
        System.out.println("El vector2 es:");
        LibFerArrays.imprimeVectorEnteros(vector2, tamanio);
        
    }

}
