/*
Java - colecciones - Ejercicios de Aprendizaje extra.
Ejercicio 3 - Página 24

Fer V - Jalmendra99@gmail.com

 */
package Ej3Libreria.servicio;

import Ej3Libreria.entidad.Libro;
import java.util.HashSet;

public class Libreria {

    private HashSet<Libro> biblioteca = new HashSet<Libro>();

    public void agregarLibro(Libro lib) {
        biblioteca.add(lib);
    }
}
