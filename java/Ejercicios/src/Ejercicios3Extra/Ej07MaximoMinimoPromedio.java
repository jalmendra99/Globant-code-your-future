/*
Java - Ejercicios extra
Ejercicio 7 - Página 46
Calcular número máximo, mínimo y promedio.

Fer V - Jalmendra99@gmail.com

Realice un programa que calcule y visualice el valor máximo, 
el valor mínimo y el promedio de n números (n>0). 
El valor de n se solicitará al principio del programa y 
los números serán introducidos por el usuario. 
Realice dos versiones del programa, 
una usando el bucle “while” y otra con el bucle “do - while”.

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej07MaximoMinimoPromedio {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        int cantidad;
        int[] numeros;

        // Se informa la premisa al usuario.
        System.out.print("Ingresará un número entero mayor a cero que ");
        System.out.println("indicará la cantidad de números que se ingresarán.");
        System.out.print("Luego se calculará el máximo, mínimo y el promedio ");
        System.out.println("de los números ingresados.");

        // El usuario ingresa la cantidad de números.
        // (opción a: usando un bucle while).
//        System.out.print("Ingrese la cantidad de números (mayor a cero): ");
//        cantidad = leer.nextInt();
//        while (cantidad <= 0) {
//            System.out.print("Ingrese la cantidad de números (mayor a cero): ");
//            cantidad = leer.nextInt();
//        };

        // El usuario ingresa la cantidad de números.
        // (opción b: usando un bucle do..while).
        do {
            System.out.print("Ingrese la cantidad de números (mayor a cero): ");
            cantidad = leer.nextInt();
        } while (cantidad <= 0);
        
        // Se dimensiona el array numeros[].
        numeros = new int[cantidad];

        // El usuario ingresa los números.
        for (int i = 0; i < cantidad; i++) {
            System.out.print("Ingrese el número #" + (i + 1) + ": ");
            numeros[i] = leer.nextInt();
        }

        // Se muestra en pantalla la información solicitada.
        System.out.println("El máximo es " + maximo(numeros) + ".");
        System.out.println("El mínimo es " + minimo(numeros) + ".");
        System.out.println("El promedio es " + promedio(numeros) + ".");

    }

    // Retorna el máximo de un array de números enteros.
    public static int maximo(int[] numeros) {

        int max;

        max = 0;

        for (int i = 0; i < numeros.length; i++) {
            if (i == 0) {
                max = numeros[0];
            }
            if (numeros[i] > max) {
                max = numeros[i];
            }

        }

        return max;

    }

    // Retorna el mínimo de un array de números enteros.
    public static int minimo(int[] numeros) {

        int min;

        min = 0;

        for (int i = 0; i < numeros.length; i++) {
            if (i == 0) {
                min = numeros[0];
            }
            if (numeros[i] < min) {
                min = numeros[i];
            }

        }

        return min;

    }

    // Retorna el promedio (double) de un array de números enteros.
    public static double promedio(int[] numeros) {

        int sumatoria;
        double prom;

        sumatoria = 0;
        prom = 0;

        for (int numero : numeros) {
            sumatoria += numero;
        }

        if (numeros.length != 0) {
            prom = (double) sumatoria / numeros.length;
        }

        return prom;

    }

}
