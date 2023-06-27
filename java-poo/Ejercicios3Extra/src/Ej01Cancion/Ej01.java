/*
Java-POO - Ejercicios extra.
Ejercicio 1 - Página 33

Fer V - Jalmendra99@gmail.com

 */
package Ej01Cancion;

import Ej01Cancion.entidad.Cancion;
import Ej01Cancion.servicio.CancionService;

public class Ej01 {

    public static void main(String[] args) {

        // Crea un objeto CancionService para crear e interactuar con objetos Cancion.
        CancionService cs = new CancionService();

        // Crea un objeto Cancion y solicita al usuario ingresar los datos
        Cancion ca1 = cs.crearCancion();

        // Crea un objeto Cancion con titulo y autor.
        Cancion ca2 = cs.crearCancion("Canción 2", "Artista 2");

        cs.mostrarCancion(ca1);
        cs.mostrarCancion(ca2);
    }
}
