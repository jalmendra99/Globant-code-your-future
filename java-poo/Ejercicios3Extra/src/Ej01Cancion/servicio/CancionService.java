/*
Java-POO - Ejercicios extra.
Ejercicio 1 - Página 33

Fer V - Jalmendra99@gmail.com

 */
package Ej01Cancion.servicio;

import Ej01Cancion.*;
import Ej01Cancion.entidad.Cancion;
import java.util.Scanner;

public class CancionService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Cancion crearCancion() {

        Cancion ca = new Cancion();

        // Agregando título y autor a ca1 usando setters.
        System.out.println("Ingrese el nombre del artista: ");
        ca.setAutor(leer.next());
        // Agregando título y autor a ca1 usando setters.
        System.out.println("Ingrese el nombre de la canción: ");
        ca.setTitulo(leer.next());

        return ca;
    }

    public Cancion crearCancion(String autor, String titulo) {
        Cancion ca = new Cancion();

        ca.setAutor(autor);
        ca.setTitulo(titulo);

        return ca;
    }

    public void mostrarCancion(Cancion ca) {
        System.out.println(ca.getTitulo() + " de " + ca.getAutor() + ".");
    }
}
