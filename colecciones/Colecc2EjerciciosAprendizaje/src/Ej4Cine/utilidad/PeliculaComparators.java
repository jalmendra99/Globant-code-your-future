/*
Java - colecciones - Ejercicios de Aprendizaje.
Ejercicio 4 - Página 22

Fer V - Jalmendra99@gmail.com

 */
package Ej4Cine.utilidad;

import Ej4Cine.entidad.Pelicula;
import java.util.Comparator;

public class PeliculaComparators {

    public static Comparator<Pelicula> ordenarPorDuracion = new Comparator<Pelicula>() {
        @Override
        public int compare(Pelicula o1, Pelicula o2) {
            return o1.getDuracionEnMinutos().compareTo(o2.getDuracionEnMinutos());
        }
    };

    public static Comparator<Pelicula> ordenarPorDuracionRev = new Comparator<Pelicula>() {
        @Override
        public int compare(Pelicula o1, Pelicula o2) {
            return o2.getDuracionEnMinutos().compareTo(o1.getDuracionEnMinutos());
        }
    };

    public static Comparator<Pelicula> ordenarPorTitulo = new Comparator<Pelicula>() {
        @Override
        public int compare(Pelicula o1, Pelicula o2) {
            return o1.getTitulo().compareTo(o2.getTitulo());
        }
    };

    public static Comparator<Pelicula> ordenarPorDirector = new Comparator<Pelicula>() {
        @Override
        public int compare(Pelicula o1, Pelicula o2) {
            return o1.getDirector().compareTo(o2.getDirector());
        }
    };

}
