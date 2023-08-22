/*
Java - UML - Ejercicios de Aprendizaje.
Ejercicio 3 - Página 11

Fer V - Jalmendra99@gmail.com

 */
package Ej3BarajaCartas.utilidad;

import Ej3BarajaCartas.entidades.Carta;
import java.util.Comparator;

public class CartaComparators {

    public static Comparator<Carta> ordenarPorBastoYNumero = new Comparator<Carta>() {
        @Override
        public int compare(Carta o1, Carta o2) {

            int cmp = o1.getPalo().compareTo(o2.getPalo());
            if (cmp != 0) {
                return cmp;
            }
            return Integer.valueOf(o1.getNumero()).compareTo(o2.getNumero());
        }

    };

}
