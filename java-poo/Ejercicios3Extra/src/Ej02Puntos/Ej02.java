/*
Java-POO - Ejercicios extra.
Ejercicio 2 - Página 33

Fer V - Jalmendra99@gmail.com

 */
package Ej02Puntos;

import Ej02Puntos.entidad.Puntos;
import Ej02Puntos.servicio.PuntosService;

public class Ej02 {

    public static void main(String[] args) {

        // Crea un objeto PuntosService para crear y manipular objetos Puntos
        PuntosService ps = new PuntosService();

        // Crea dos puntos y carga sus coordenadas
        Puntos pu = ps.crearPuntos();

        // Calcula y muestra la distancia entre los puntos
        ps.mostrarDistancia(pu);

        // Muestra la información de los puntos
        ps.mostrarPuntos(pu);
    }
}
