/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 10 - Página 31

Realizar un programa en Java donde se creen dos arreglos: 
el primero será un arreglo A de 50 números reales, 
y el segundo B, un arreglo de 20 números, también reales. 
El programa deberá inicializar el arreglo A con números aleatorios 
y mostrarlo por pantalla. Luego, el arreglo A se debe ordenar de menor a mayor 
y copiar los primeros 10 números ordenados al arreglo B de 20 elementos, 
y rellenar los 10 últimos elementos con el valor 0.5. 
Mostrar los dos arreglos resultantes: 
el ordenado de 50 elementos y el combinado de 20.

Fer V - Jalmendra99@gmail.com

 */
package Ej10Arrays;

import java.util.Arrays;

public class Ej10 {

    public static void main(String[] args) {

        // Arreglos
        double[] arregloA = new double[50];
        double[] arregloB = new double[20];

        // Inicializa el arreglo a con 50 números al azar reales
        inicializaArregloAzar(arregloA);

        // y lo muestra por pantalla
        System.out.print("A = ");
        imprimeArreglo(arregloA);

        // Se ordena el arreglo a de menor a mayor
        Arrays.sort(arregloA);

        // llena los primeros 10 elementos de b con los 10 primeros de a
        for (int i = 0; i < 10; i++) {
            arregloB[i] = arregloA[i];
        }

        // Llena los siguientes 10 elementos de b con 0.5
        Arrays.fill(arregloB, 10, 19, 0.5);

        // Muestra los dos arreglos resultantes.
        System.out.print("A ordenado = ");
        imprimeArreglo(arregloA);

        System.out.print("B = ");
        imprimeArreglo(arregloB);

    }

    public static void inicializaArregloAzar(double[] arreglo) {
        for (int i = 0; i < arreglo.length; i++) {
            arreglo[i] = ((Math.random() * (9 - 0) + 1) + 0); // random 0 to 9
        }
    }

    public static void imprimeArreglo(double[] arreglo) {
        for (int i = 0; i < arreglo.length; i++) {
            System.out.printf("%.2f ", arreglo[i]);
        }
        System.out.println("");
    }

}
