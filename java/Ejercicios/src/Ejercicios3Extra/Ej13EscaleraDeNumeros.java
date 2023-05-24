/*
Java - Ejercicios extra
Ejercicio 13 - Página 47
Escalera de números.

Fer V - Jalmendra99@gmail.com

Crear un programa que dibuje una escalera de números, 
donde cada línea de números comience en uno y termine 
en el número de la línea. 
Solicitar la altura de la escalera al usuario al comenzar. 
Ejemplo: si se ingresa el número 3:
1 
12 
123

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej13EscaleraDeNumeros {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        int numero;

        // Se informa la premisa al usuario.
        System.out.print("Se solicitará ingresar un número entero <n> y se ");
        System.out.println("generará una escalera de <n> números de alto.");

        // Se solicita al usuario ingresar un entero positivo.        
        do {
            System.out.print("Ingrese un número mayor que cero: ");
            numero = leer.nextInt();
        } while (numero < 1);

        // Se muestra la escalera.
        for (int fila = 1; fila <= numero; fila++) {
            for (int columna = 1; columna <= fila; columna++) {
                // Imprime los números correspondientes a la fila actual.
                // que serán desde 1 hasta fila#.
                System.out.print(columna);
            }
            // Imprime un salto de línea.
            System.out.println("");

        }

    }

}
