/*
Java-POO - Ejercicios extra.
Ejercicio 2 - Página 33

Fer V - Jalmendra99@gmail.com

 */
package Ej02Puntos.servicio;

import Ej02Puntos.entidad.*;
import java.util.Scanner;

public class PuntosService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Puntos crearPuntos() {

        Puntos pu = new Puntos();

        System.out.print("Ingrese la coordenada x del primer punto: ");
        pu.setX1(leer.nextInt());
        System.out.print("Ingrese la coordenada y del primer punto: ");
        pu.setY1(leer.nextInt());
        System.out.print("Ingrese la coordenada x del segundo punto: ");
        pu.setX2(leer.nextInt());
        System.out.print("Ingrese la coordenada y del segundo punto: ");
        pu.setY2(leer.nextInt());

        return pu;
    }

    public double distancia(Puntos pu) {
        return Math.sqrt(Math.pow((pu.getX2() - pu.getX1()), 2) + Math.pow((pu.getY2() - pu.getY1()), 2));
    }

    // Agregadas
    public void mostrarDistancia(Puntos pu) {
        System.out.printf("La distancia entre los dos puntos es %.2f\n", distancia(pu));
    }

    public void mostrarPuntos(Puntos pu) {
        System.out.println("Punto 1 (x, y): (" + pu.getX1() + ", " + pu.getY1() + ")");
        System.out.println("Punto 2 (x, y): (" + pu.getX2() + ", " + pu.getY2() + ")");
    }
}
