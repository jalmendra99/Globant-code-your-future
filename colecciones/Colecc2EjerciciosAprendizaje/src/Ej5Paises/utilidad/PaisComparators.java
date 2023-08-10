/*
Java - colecciones - Ejercicios de Aprendizaje.
Ejercicio 5 - Página 23

Fer V - Jalmendra99@gmail.com

 */
package Ej5Paises.utilidad;

import java.util.Comparator;

public class PaisComparators {

    public static Comparator<String> ordenar = new Comparator<String>() {
        @Override
        public int compare(String o1, String o2) {
            return o1.compareTo(o2);
        }
    };
}