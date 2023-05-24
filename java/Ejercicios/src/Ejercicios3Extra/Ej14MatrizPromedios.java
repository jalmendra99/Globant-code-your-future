/*
Java - Ejercicios extra
Ejercicio 14 - Página 48
Calcular promedios de un vector.

Fer V - Jalmendra99@gmail.com

Se dispone de un conjunto de N familias, cada una de las cuales 
tiene una M cantidad de hijos. 
Escriba un programa que pida la cantidad de familias y 
para cada familia la cantidad de hijos para averiguar 
la media de edad de los hijos de todas las familias.

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej14MatrizPromedios {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        int familias, hijos, edad;
        int sumatoriaEdades;
        int cantidadHijos;
        double media;

        sumatoriaEdades = 0;
        cantidadHijos = 0;

        // El usuario ingresa la cantidad de familias a analizar.
        // Se fuerza a que sea mayor que cero.
        do {
            System.out.print("Ingrese la cantidad de familias a procesar: ");
            familias = leer.nextInt();
        } while (familias < 1);

        for (int familia = 0; familia < familias; familia++) {

            // El usuario ingresa la cantidad de hijos para la familia actual.
            // Se fuerza a que sea mayor que cero.
            do {
                System.out.print("Ingrese la cantidad de hijos para la familia #" + (familia + 1) + ": ");
                hijos = leer.nextInt();
            } while (hijos < 1);

            for (int hijo = 0; hijo < hijos; hijo++) {

                // El usuario ingresa las edades para cada hijo de la familia actual.
                // Se fuerza a que sea mayor que cero.
                do {
                    System.out.print("Ingrese la edad en años del hijo #" + (hijo + 1) + ": ");
                    edad = leer.nextInt();
                } while (edad < 1);

                sumatoriaEdades += edad;
                cantidadHijos++;

            }

        }

        media = 0;
        
        // Se calcula la media de la edad de los hijos de todas las familias.
        if (cantidadHijos != 0) {
            media = (double) sumatoriaEdades / cantidadHijos;
        }

        // Se muestra en pantalla la información solicitada.
        System.out.println("La media de las edades de los hijos de todas las familias es " + media + ".");

    }

}
