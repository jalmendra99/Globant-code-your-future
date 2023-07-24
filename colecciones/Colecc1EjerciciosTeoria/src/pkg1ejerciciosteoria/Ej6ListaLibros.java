/*
Java - colecciones - Ejercicios.
Ejercicio 6 - Página 15

Fer V - Jalmendra99@gmail.com

EJERCICIO LISTA LIBROS 
¡Es tu turno! Crea una lista de Libros y muestra el título de cada uno con un bucle.

 */
package pkg1ejerciciosteoria;

import java.util.ArrayList;
import pkg1ejerciciosteoria.entidad.Libro;

public class Ej6ListaLibros {

    public static void main(String[] args) {

        ArrayList<Libro> listaLibros = new ArrayList();
        
        // Se crean 10 libros
        for (int i = 0; i < 10; i++) {
            listaLibros.add(new Libro("Libro nro " + i));            
        }
        
        // Se muestran los 10 libros usando el toString
        System.out.println("Mostrando el listado de libros..");
        for (Libro lib : listaLibros) {
            //System.out.println(lib);
            System.out.println(lib.getNombre());
        }

    }

}
