/*
Java - colecciones - Ejercicios de Aprendizaje.
Ejercicio 1 y 2 - Página 22

Fer V - Jalmendra99@gmail.com

 */
package Ej1Perros.utilidad;

import Ej1Perros.entidad.Perro;
import java.util.Comparator;

public class PerroComparators {

    public static Comparator<Perro> ordenarPorRazaAlfabeticamente = new Comparator<Perro>() {
        @Override
        public int compare(Perro o1, Perro o2) {
            return o1.getRaza().compareTo(o2.getRaza());
        }
    };
    
    public static Comparator<Perro> ordenarPorRazaAlfabeticamenteDesc = new Comparator<Perro>() {
        @Override
        public int compare(Perro o1, Perro o2) {
            return o2.getRaza().compareTo(o1.getRaza());
        }
    };
    
}
