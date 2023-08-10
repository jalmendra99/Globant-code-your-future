/*
Java - UML - Ejercicios de teoría
Ejercicio 2 - Página 6

Fer V - Jalmendra99@gmail.com

 */
package Ej2EquipoYJugador;

import Ej2EquipoYJugador.servicios.EquipoService;

public class Ej2 {

    public static void main(String[] args) {

        EquipoService es = new EquipoService();

        es.agregarJugador();
        es.agregarJugador();

        es.mostrarJugadores();

    }

}
