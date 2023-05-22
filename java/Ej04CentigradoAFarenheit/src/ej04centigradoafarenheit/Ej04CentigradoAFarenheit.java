/*
Java - Ejercicios de aprendizaje
Ejercicio 4 - Página 42
Pasar grados centígrados a farenheit.

Fer V - Jalmendra99@gmail.com

Dada una cantidad de grados centígrados se debe mostrar 
su equivalente en grados Fahrenheit. 
La fórmula correspondiente es: F = 32 + (9 * C / 5).

 */
package ej04centigradoafarenheit;

import java.util.Scanner;

public class Ej04CentigradoAFarenheit {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        double centigrados, farenheit;

        System.out.println("Ingrese una cantidad de °C (grados centígrados) para pasar a °F (grados farenheit): ");
        centigrados = leer.nextDouble();

        // Se calcula el equivalente en °Farenheit
        farenheit = 32 + (9 * centigrados / 5);

        System.out.println("El equivalente a " + centigrados + " °C en Farenheit es " + farenheit + " °F.");

    }
}
