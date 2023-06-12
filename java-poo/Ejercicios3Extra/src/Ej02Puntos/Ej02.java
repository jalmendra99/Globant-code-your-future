/*
Java-POO - Ejercicios extra.
Ejercicio 2 - Página 33

Fer V - Jalmendra99@gmail.com

 */
package Ej02Puntos;

public class Ej02 {

    public static void main(String[] args) {

        // Crea un nuevo par de Puntos
        Puntos pu = new Puntos();

        // Carga las coordenadas de los dos puntos
        pu.crearPuntos();

        // Calcula y muestra la distancia entre los puntos
        System.out.println("La distancia entre los dos puntos es: " + pu.distancia());

        // Muestra la información de los puntos
        pu.mostrarPuntos();
    }
}
