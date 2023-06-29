/*
Java-POO - Ejercicios extra.
Ejercicio # - Página #

Fer V - Jalmendra99@gmail.com

 */
package Ejercicio1.service;

import Ejercicio1.entidad.Pelicula;
import java.util.Scanner;

public class PeliculaService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Pelicula crearPelicula(String titulo, String genero, int anio, int duracion) {
        Pelicula peli = new Pelicula(titulo, genero, anio, duracion);
        return peli;
    }

    // Métodos
    public boolean buscarPeliculaPorTitulo(Pelicula[] pelis, String tituloABuscar) {
        for (int i = 0; i < pelis.length; i++) {
            if (tituloABuscar.equals(pelis[i].getTitulo())) {
                return true;
            }
        }
        return false;
    }

    // 
    public boolean buscarPeliculaPorGenero(Pelicula[] pelis, String generoABuscar) {
        for (int i = 0; i < pelis.length; i++) {
            if (generoABuscar.equals(pelis[i].getGenero())) {
                return true;
            }
        }
        return false;
    }
}
