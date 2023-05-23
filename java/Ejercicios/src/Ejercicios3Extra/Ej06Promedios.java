/*
Java - Ejercicios extra
Ejercicio 6 - Página 46
Calcular promedios.

Fer V - Jalmendra99@gmail.com

Leer la altura de N personas y determinar el promedio de estaturas 
que se encuentran por debajo de 1.60 mts. 
y el promedio de estaturas en general.

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej06Promedios {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        double[] altura;
        int cantidadPersonasTotal;
        int cantidadPersonasBajo160;
        double sumatoriaAlturasTotal;
        double sumatoriaAlturasBajo160;
        double promedioTotal;
        double promedioBajo160;

        // El usuario ingresa la cantidad de personas a analizar.
        System.out.print("Ingrese la cantidad de personas: ");
        cantidadPersonasTotal = leer.nextInt();

        // Se dimensiona el array altura[].
        altura = new double[cantidadPersonasTotal];

        sumatoriaAlturasTotal = 0;
        sumatoriaAlturasBajo160 = 0;
        cantidadPersonasBajo160 = 0;

        // Se solicitan las alturas de todas las personas.
        for (int i = 0; i < cantidadPersonasTotal; i++) {
            System.out.print("Ingrese la altura de la persona #" + (i + 1) + ": ");
            altura[i] = leer.nextDouble();

            sumatoriaAlturasTotal += altura[i];

            if (altura[i] < 1.60) {
                sumatoriaAlturasBajo160 += altura[i];
                cantidadPersonasBajo160++;
            }

        }

        promedioTotal = 0;
        promedioBajo160 = 0;

        // Se calculan los promedios solicitados.
        if (cantidadPersonasTotal != 0) {
            promedioTotal = sumatoriaAlturasTotal / cantidadPersonasTotal;
        }
        if (cantidadPersonasBajo160 != 0) {
            promedioBajo160 = sumatoriaAlturasBajo160 / cantidadPersonasBajo160;
        }

        // Se muestra en pantalla la información solicitada.
        System.out.println("El promedio de estaturas en general es " + promedioTotal + ".");
        System.out.println("El promedio de estaturas bajo 1.60 es " + promedioBajo160 + ".");

    }

}
