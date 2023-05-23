/*
Java - Ejercicios de aprendizaje
Ejercicio 13 - Página 43
Dibujar cuadrado.

Fer V - Jalmendra99@gmail.com

Dibujar un cuadrado de N elementos por lado utilizando el carácter “*”.
Por ejemplo, si el cuadrado tiene 4 elementos por lado
se deberá dibujar lo siguiente:
* * * * *
*       *
*       *
* * * * *

 */
package Ejercicios2DeAprendizaje;

import java.util.Scanner;

public class Ej13DibujarCuadrado {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.        
        int n;

        // Se informa la premisa al usuario.
        System.out.print("Se pedirá al usuario ingresar un número entero n ");
        System.out.println("y se dibujará un cuadrado de asteriscos, de lado n. ");

        // Se ingresa el número n (tamaño del lado del cuadrado a dibujar).
        System.out.print("Ingrese un número entero: ");
        n = leer.nextInt();

        // Se dibuja el cuadrado de lado n.
        for (int fila = 0; fila < n; fila++) {
            for (int columna = 0; columna < n; columna++) {
                if (fila == 0 || fila == n - 1 || columna == 0 || columna == n - 1) {
                    System.out.print("*");
                } else {
                    System.out.print(" ");
                }
            }
            // Se imprime un salto de línea.
            System.out.println("");

        }

    }
}
