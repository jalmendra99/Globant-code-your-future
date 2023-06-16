/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 6 - Página 28

 */
package Ej06Nespresso.servicio;

import Ej06Nespresso.entidad.Cafetera;
import java.util.Scanner;

public class CafeteraService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Cafetera crearCafetera() {

        // Crea una Cafetera (con cantidad máxima y cantidad actual)
        Cafetera ca = new Cafetera();

        // Solicita al usuario ingresar los atributos
        System.out.print("Ingrese la cantidad máxima en ml de café para la cafetera: ");
        ca.setCapacidadMaxima(leer.nextInt());

        System.out.print("Ingrese la cantidad actual en ml de café en la cafetera: ");
        ca.setCantidadActual(leer.nextInt());

        return ca;
    }

    public void hacerPruebas(Cafetera ca) {

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
        System.out.print("Ingrese una cantidad de café a agregar en la cafetera: ");
        ca.agregarCafe(leer.nextInt());

        // Muestra la cantidad actual
        System.out.println("La cafetera tiene " + ca.getCantidadActual());
    }
}
