/*
Java - Ejercicios extra
Ejercicio 22 - Página 50
Llenar una matriz con números aleatorios.

Fer V - Jalmendra99@gmail.com

Realizar un programa que rellene una matriz de tamaño NxM 
con valores aleatorios y muestre la suma de sus elementos.


-------------------------------------------------------------------------
Este fuente usa métodos de la clase LibFerArrays
que se encuentra en el paquete EjerciciosDeAprendizaje.
por lo que para llamar a los mismos se usaría: LibFerArrays.NOMBREDEMETODO()
-------------------------------------------------------------------------

 */
package Ejercicios3Extra;

import Ejercicios2DeAprendizaje.LibFerArrays;
import java.util.Scanner;

public class Ej22MatrizLlenarAleatorio {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int filas, columnas;
        int[][] matriz;

        // Se informa la premisa al usuario.
        System.out.print("Se ingresarán dos números enteros <filas> y <columnas> y se ");
        System.out.println("generará una matriz de enteros de tamaño <filas> x <columnas>.");
        System.out.println("Luego se mostrará la sumatoria de sus elementos.");

        // Se ingresa un número entero positivo para dimensionar 
        // la cantidad de filas de la matriz.
        // Se fuerza a que sea mayor que cero.
        do {
            System.out.print("Ingrese la cantidad de filas para la matriz: ");
            filas = leer.nextInt();
        } while (filas <= 0);
        // Se ingresa un número entero positivo para dimensionar 
        // la cantidad de columnas de la matriz.
        // Se fuerza a que sea mayor que cero.
        do {
            System.out.print("Ingrese la cantidad de columnas para la matriz: ");
            columnas = leer.nextInt();
        } while (columnas <= 0);

        // Se dimensiona la matriz usando la cantidad de "filas" y "columnas" ingresada.
        matriz = new int[filas][columnas];

        // Se llena la matriz con números enteros al azar entre 1 y 100 inclusive.
        LibFerArrays.llenaMatrizEnterosAzar(matriz, filas, columnas, 1, 100);

        // Se muestra en pantalla la información solicitada.
        // Se imprime por pantalla la matriz.
        System.out.println("\nLa matriz es:");
        LibFerArrays.imprimeMatrizEnteros(matriz, filas, columnas);
        
        // Se muestra la sumatoria de los valores de la matriz.
        System.out.print("La sumatoria de los elementos de la matriz es: ");
        System.out.print(sumarValoresMatriz(matriz, filas, columnas));
        System.out.println("");

    }
    
    private static int sumarValoresMatriz(int [][] matriz, int filas, int columnas) {
        int sumatoria = 0;
        for (int fila = 0; fila < filas; fila++) {
            for (int columna = 0 ; columna < columnas; columna++) {
                sumatoria += matriz[fila][columna];
            }
        }
        return sumatoria;
    }

}
