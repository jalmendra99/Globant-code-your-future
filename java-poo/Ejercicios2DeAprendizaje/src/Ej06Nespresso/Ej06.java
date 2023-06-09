/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio # - Página #
NOMBRE_DE_EJERCICIO

Fer V - Jalmendra99@gmail.com

 */
package Ej06Nespresso;

import java.util.Scanner;

public class Ej06 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        // Crea una Cafetera (con cantidad máxima y cantidad actual)
        Cafetera ca = new Cafetera(100, 50);

        // Muestra la cantidad actual
        System.out.println("La cafetera tiene " + ca.getCantidadActual());

        // Llena la Cafetera
        System.out.println("Llenando la cafetera...");
        ca.llenarCafetera();

        // Muestra la cantidad actual
        System.out.println("La cafetera tiene " + ca.getCantidadActual());

        // Sirve una taza
        System.out.print("Ingrese el tamaño de la taza donde desea servir café: ");
        ca.servirTaza(leer.nextInt());

        // Muestra la cantidad actual
        System.out.println("La cafetera tiene " + ca.getCantidadActual());

        // Vacía la Cafetera
        System.out.println("Vaciando la cafetera...");
        ca.vaciarCafetera();

        // Muestra la cantidad actual
        System.out.println("La cafetera tiene " + ca.getCantidadActual());

        // Agrega café a la Cafetera
        System.out.print("Ingrese una cantidad de c30afé a agregar en la cafetera: ");
        ca.agregarCafe(leer.nextInt());

        // Muestra la cantidad actual
        System.out.println("La cafetera tiene " + ca.getCantidadActual());
    }

}
