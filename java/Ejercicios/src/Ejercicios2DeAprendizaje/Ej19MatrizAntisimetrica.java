/*
Java - Ejercicios de aprendizaje
Ejercicio 19 - Página 44
Matriz anti simétrica.

Fer V - Jalmendra99@gmail.com

Realice un programa que compruebe si una matriz dada es anti simétrica. 
Se dice que una matriz A es anti simétrica cuando ésta es igual a 
su propia traspuesta, pero cambiada de signo. 
Es decir, A es anti simétrica si A = -AT. 
La matriz traspuesta de una matriz A se denota por AT 
y se obtiene cambiando sus filas por columnas (o viceversa).

  Matriz    Matriz Transpuesta
  0 -2  4    0  2 -4
  2  0  2   -2  0 -2
 -4 -2  0    4  2  0

En este caso la matriz es anti simétrica.


-------------------------------------------------------------------------
Este fuente usa métodos de la clase LibFerArrays
que se encuentra en este mismo paquete (EjerciciosDeAprendizaje)
por lo que para llamar a los mismso se usaría: LibFerArrays.NOMBREDEMETODO()
-------------------------------------------------------------------------

 */
package Ejercicios2DeAprendizaje;

import java.util.Scanner;

public class Ej19MatrizAntisimetrica {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int[][] matriz;
        int filas, columnas;
        boolean diferentes;

        // Se informa la premisa al usuario.
        System.out.print("Se solicitará ingresar dos enteros m y n ");
        System.out.print("y se creará una matriz de tamaño m x n. ");
        System.out.print("Luego se solicitará ingresar los valores para ");
        System.out.print("llenarla y finalmente se determinará si es una ");
        System.out.print("matriz anti simétrica (o sea, si es igual a su ");
        System.out.println("transpuesta con todos sus valores cambiados de signo.");
        System.out.println("Matriz anti simétrica de ejemplo:");
        System.out.println(" 0 -2  4");
        System.out.println(" 2  0  2");
        System.out.println("-4 -2  0");

        // Se solicitan ingresar los enteros "m" y "n" para dimensionar la matriz.
        do {
            System.out.print("Ingrese un entero entre 1 y 10 para ");
            System.out.println("determinar la cantidad de filas de la matriz: ");
            filas = leer.nextInt();
            System.out.print("Ingrese un entero entre 1 y 10 para ");
            System.out.println("determinar la cantidad de columnas de la matriz: ");
            columnas = leer.nextInt();

        } while (filas < 1 || filas > 10 || columnas < 1 || columnas > 10);

        // Se dimensiona la matriZ.
        matriz = new int[filas][columnas];

        // Se llena la matriz A con números ingresados por el usuario.
        for (int fila = 0; fila < filas; fila++) {
            for (int columna = 0; columna < columnas; columna++) {
                System.out.print("Ingrese un valor para matriz[" + fila + "][" + columna + "]: ");
                matriz[fila][columna] = leer.nextInt();
            }
        }

        ////////////////////////////////////////////////////////////
        // ESTE CÓDIGO SE PUEDE MEJORAR CON LOOPS INDEFINIDOS
        // QUE CORTEN EN CUANTO APAREZCA EL PRIMER VALOR DIFERENTE
        // Y USANDO FUNCIONES MÁS DESCRIPTIVAS EN VEZ DE LA CONDICIÓN
        // HORRIBLE DEL IF.
        ////////////////////////////////////////////////////////////
        diferentes = false;
        // para todas las filas y columnas de la matriz
        // se compara cada valor de la misma con su "transpuesta" cambiada de signo
        // si cualquiera de estos valores dá distinto, entonces la matriz no es anti simétrica.
        for (int fila = 0; fila < filas; fila++) {
            for (int columna = 0; columna < columnas; columna++) {
                // Si surge algún valor distinto, entonces no es antisimétrica
                if (matriz[fila][columna] != (-1 * matriz[columna][fila])) {
                    diferentes = true;                    
                    break;
                }
            }
            if (diferentes) {                
                break;
            }
        }

        if (diferentes) {
            System.out.println("La matriz no es antisimétrica.");
        } else {
            System.out.println("La matriz ES antisimétrica.");
        }

        // Se muestra la matriz por pantalla para verificar visualmlente.
        System.out.println("");
        System.out.println("Matriz: ");
        LibFerArrays.imprimeMatrizEnteros(matriz, filas, columnas);

    }

}
