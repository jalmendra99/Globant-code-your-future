/*
Java - Ejercicios de aprendizaje
Ejercicio 18 - Página 44
Matriz traspuesta.

Fer V - Jalmendra99@gmail.com

Realizar un programa que rellene un matriz de 4 x 4 de valores aleatorios 
y muestre la traspuesta de la matriz. 
La matriz traspuesta de una matriz A se denota por B y se obtiene 
cambiando sus filas por columnas (o viceversa).

A = 1  0  4      B = 1  0  6
    0  5  0          0  5  0
    6  0 -9          4  0 -9


-------------------------------------------------------------------------
Este fuente usa métodos de la clase LibFerArrays
que se encuentra en el paquete EjerciciosDeAprendizaje.
por lo que para llamar a los mismos se usaría: LibFerArrays.NOMBREDEMETODO()
-------------------------------------------------------------------------

 */
package Ejercicios2DeAprendizaje;

public class Ej18MatrizTraspuesta {

    public static void main(String[] args) {

        // Definición de variables.
        int[][] matriz = new int[4][4];
        int[][] traspuesta = new int[4][4];

        // Se informa la premisa al usuario.
        System.out.print("Se creará una matriz de 4x4 y se llenará de ");
        System.out.println("números enteros al azar (entre 1 y 5 dígitos).");
        System.out.println("Luego se calculará y mostrará la matriz traspuesta.");

        // Se llena la matriz A con números al azar entre 0 y 99999.
        for (int fila = 0; fila < 4 ; fila++) {
            for (int columna = 0; columna < 4 ; columna++) {
//                matriz[fila][columna] = (int) ((Math.random() * 100000) - 0);
                matriz[fila][columna] = LibFerArrays.AzarPorCantDigitos(1, 5);
            }
        }

        // Se muestra la matriz A por pantalla.
        System.out.println("\nMatriz A:");
        LibFerArrays.imprimeMatrizEnteros(matriz, 4, 4);

        // Se llena la matriz B con los valores de A traspuesta.
        for (int fila = 0; fila < 4 ; fila++) {
            for (int columna = 0; columna < 4 ; columna++) {
                traspuesta[fila][columna] = matriz[columna][fila];
            }
        }

        // Se muestra la matriz traspuesta B por pantalla.
        System.out.println("\nMatriz B (Traspuesta de A):");
        LibFerArrays.imprimeMatrizEnteros(traspuesta, 4, 4);

    }

}
