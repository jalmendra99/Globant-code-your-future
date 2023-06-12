/*
Java-POO - Ejercicios extra.
Ejercicio 2 - Página 33

Definir una clase llamada Puntos que contendrá las coordenadas de dos puntos, 
sus atributos serán, x1, y1, x2, y2, siendo cada x e y un punto. 
Generar un objeto puntos usando un método crearPuntos() que le pide al usuario 
los dos números y los ingresa en los atributos del objeto. 
Después, a través de otro método calcular y devolver la distancia 
que existe entre los dos puntos que existen en la clase Puntos. 
Para conocer como calcular la distancia entre dos puntos consulte el siguiente link:
http://www.matematicatuya.com/GRAFICAecuaciones/S1a.html


Fer V - Jalmendra99@gmail.com

 */
package Ej02Puntos;

import java.util.Scanner;

public class Puntos {

    // Atributos
    private int x1, y1, x2, y2; // coordenadas de dos puntos.

    // Constructores
    public Puntos() {
    }

    // Getters y setters
    // Métodos
    public void crearPuntos() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        System.out.print("Ingrese la coordenada x del primer punto: ");
        x1 = leer.nextInt();
        System.out.print("Ingrese la coordenada y del primer punto: ");
        y1 = leer.nextInt();
        System.out.print("Ingrese la coordenada x del segundo punto: ");
        x2 = leer.nextInt();
        System.out.print("Ingrese la coordenada y del segundo punto: ");
        y2 = leer.nextInt();
    }

    public double distancia() {
        return Math.sqrt(Math.pow((x2 - x1), 2) + Math.pow((y2 - y1), 2));
    }

    // Agregada
    public void mostrarPuntos() {

        System.out.println("Punto 1 (x, y): (" + x1 + ", " + y1 + ")");
        System.out.println("Punto 2 (x, y): (" + x2 + ", " + y2 + ")");
    }
}
