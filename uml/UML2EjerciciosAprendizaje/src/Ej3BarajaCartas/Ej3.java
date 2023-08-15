/*
Java - UML - Ejercicios de Aprendizaje.
Ejercicio 3 - Página 11

Fer V - Jalmendra99@gmail.com

 */
package Ej3BarajaCartas;

import Ej3BarajaCartas.entidades.Baraja;

public class Ej3 {

    public static void main(String[] args) {

        Baraja b = new Baraja();

        b.inicializarBaraja();
        
        b.barajar();  // Comentar para que la verificación por pantalla sea fácil.

        b.mostrarBaraja();

        b.darCartas();
        b.cartasMonton();
        b.cartasDisponibles();
        b.mostrarBaraja();

    }

}
