/*
Java - Ejercicios de aprendizaje
Ejercicio 20 - Página 45
Matriz mágica.

Fer V - Jalmendra99@gmail.com

Un cuadrado mágico 3 x 3 es una matriz 3 x 3 formada por números 
del 1 al 9 donde la suma de sus filas, sus columnas y sus diagonales 
son idénticas. Crear un programa que permita introducir un cuadrado 
por teclado y determine si este cuadrado es mágico o no. 
El programa deberá comprobar que los números introducidos son correctos, 
es decir, están entre el 1 y el 9.

// Por ejemplo:
// 2 7 6
// 9 5 1
// 4 3 8


-------------------------------------------------------------------------
Este fuente usa métodos de la clase LibFerArrays
que se encuentra en el paquete EjerciciosDeAprendizaje.
por lo que para llamar a los mismos se usaría: LibFerArrays.NOMBREDEMETODO()
-------------------------------------------------------------------------

 */
package Ejercicios2DeAprendizaje;

import java.util.Scanner;

public class Ej20MatrizMagica {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int[][] matriz;
        int n;   // para dimensionar la matriz de "n"x"n".
        int num; // para validar el número ingresado por el usuario.
        boolean magica;

        // Se informa la premisa al usuario.
        System.out.print("Se solicitará un número entero para determinar ");
        System.out.println("la cantidad de filas y columnas de una matriz cuadrada.");
        System.out.print("Luego se solicitará ingresar valores (del 1 al 9) para ");
        System.out.print("llenar esa matriz y luego se determinará si la misma ");
        System.out.print("forma un cuadrado mágico. O sea: las sumas ");
        System.out.println("de sus filas, sus columnas y sus diagonales son idénticas.");
        System.out.println("Como ejemplo, para probar, una matriz mágica de 3 x 3 es:");
        System.out.println("2 7 6");
        System.out.println("9 5 1");
        System.out.println("4 3 8");
        System.out.println("También se puede probar con matrices de números iguales, ");
        System.out.println("por ejemplo, una matriz de 2 x 2 (n=2) llena de unos: ");
        System.out.println("1 1");
        System.out.println("1 1");

        // Se solicita ingresar el entero "n" para dimensionar la matriz.
        do {
            System.out.print("Ingrese un entero entre 1 y 10 para ");
            System.out.println("determinar la cantidad de filas y columnas de la matriz: ");
            n = leer.nextInt();

        } while (n < 1 || n > 10);

        // Se dimensiona la matriZ.
        matriz = new int[n][n];

        // Se llena la matriz A con números ingresados por el usuario.
        for (int fila = 0; fila < n; fila++) {
            for (int columna = 0; columna < n; columna++) {
                // Se fuerza a que todos los valores de la matriz estén entre 1 y 9.
                do {
                    System.out.print("Ingrese un valor para matriz[" + fila + "][" + columna + "]: ");
                    num = leer.nextInt();

                    if (num < 1 || num > 9) {
                        System.out.println("El valor ingresado debe estar entre 1 y 9");
                    } else {
                        matriz[fila][columna] = num;
                    }

                } while (num < 1 || num > 9);

            }
        }

        // Se calculan todas las sumatorias para determinar si la matriz es mágica.
        magica = matrizEsMagica(matriz, n, n);

        // Se muestra la información solicitada por pantalla.
        System.out.println("");
        if (magica) {
            System.out.println("La matriz ingresada es mágica.");
        } else {
            System.out.println("La matriz ingresada NO es mágica.");
        }

        // Se imprime toda la matriz para verificar visualmente por pantalla.
        LibFerArrays.imprimeMatrizEnteros(matriz, n, n);

    }

    // Funcion matrizEsMagica.
    // Calcula y compara las sumatorias de todas las filas, columnas y de
    // las dos diagonales principales de una "matriz" de tamaño "m"x"n"
    // para determinar, si todas son iguales, si es mágica o no.
    // Retorna: verdadero si la matriz es mágica.
    // Falso sino.
    public static boolean matrizEsMagica(int[][] matriz, int m, int n) {
        boolean esMagica = true;
        int fila, columna;
        int[] sumaFilas = new int[n];
        int[] sumaColumnas = new int[n];
        int[] sumaDiag = new int[2];

        // Se inicializan las sumatorias correspondientes a las n filas y las n columnas.
        for (fila = 0; fila < n; fila++) {
            sumaFilas[fila] = 0;
            sumaColumnas[fila] = 0;
        }

        // Se inicializan las 2 sumatorias correspondientes a las dos diagonales.
        for (fila = 0; fila < 1; fila++) {
            sumaDiag[fila] = 0;
        }

        // Se calculan las ocho sumatorias. (3 filas, 3 columnas y 2 diagonales).
        for (fila = 0; fila < n; fila++) {
            for (columna = 0; columna < n; columna++) {
                // sumatoria de las n filas.
                sumaFilas[fila] = sumaFilas[fila] + matriz[fila][columna];

                // Sumatoria de las n columnas.
                sumaColumnas[columna] = sumaColumnas[columna] + matriz[fila][columna];

                // Sumatoria de la Diagonal 1
                if (fila == columna) {
                    sumaDiag[0] = sumaDiag[0] + matriz[fila][columna];
                }

                // Sumatoria de la Diagonal 2.
                if ((fila + columna) == (n - 1)) {
                    sumaDiag[1] = sumaDiag[1] + matriz[fila][columna];
                }

            }
        }

        // Si cualquiera de las 3 comparaciones entre una fila y las columnas falla, mágica quedará Falso.	
        // Si cualquiera de las 3 comparaciones entre una fila y las otras filas falla, mágica quedará Falso.
        for (fila = 0; fila < n; fila++) {
            if ((sumaFilas[0] != sumaColumnas[fila]) || (sumaFilas[0] != sumaFilas[fila])) {
                esMagica = false;
            }

////		//////// INFO.
////		// Se muestra en pantalla la sumatoria de las filas y de las columnas.
////		System.out.println("sumaFilas[" + fila + "] = " + sumaFilas[fila]);
////		System.out.println("sumaColumnas[" + fila + "] = " + sumaColumnas[fila]);
        }

        // Si cualquiera de las 2 comparaciones entre una fila y las diagonales falla, mágica quedará Falso.
        for (fila = 0; fila < 1; fila++) {
            if (sumaFilas[0] != sumaDiag[fila]) {
                esMagica = false;
            }

////		/////// INFO.
////		// Se muestra en pantalla la sumatoria de las diagonales.
////		System.out.println("sumaDiag[" + fila + "] = " + sumaDiag[fila]);
        }

        return esMagica;
    }

}
