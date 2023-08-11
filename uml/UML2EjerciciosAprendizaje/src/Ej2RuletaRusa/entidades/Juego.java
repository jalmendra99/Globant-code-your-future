/*
Java - UML - Ejercicios de Aprendizaje.
Ejercicio 2 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej2RuletaRusa.entidades;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

public class Juego {

    // Atributos
    private ArrayList<Jugador> jugadores;
    private Revolver r;
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");

    // Constructores
    public Juego() {
        r = new Revolver();
        jugadores = new ArrayList<Jugador>();
    }

    // Métodos
    public void llenarJuego(ArrayList<Jugador> jugadores, Revolver r) {
        this.jugadores = jugadores;
        this.r = r;
    }

    public void ronda() {

        boolean finDeJuego = false;
        int i = 0;

        r.llenarRevolver();
        ingresarJugadores();
        mostrarJugadores();
        llenarJuego(jugadores, r);

        System.out.println("\nInicio del juego..");
        while (!finDeJuego) {

            if (i >= jugadores.size()) {
                i = 0;
                continue;
            }

            System.out.println(r);
            System.out.print("El jugador " + jugadores.get(i).getNombre() + " dispara.. y..");

            if (jugadores.get(i).disparo(r)) {
                System.out.println(" perdió :/");
//                System.out.println("Fin del juego.");
                finDeJuego = true;
//                break;
            } else {
                System.out.println(" sigue seco :)");
            }

            i++;
        }

        mostrarJugadores();
        System.out.println("\nFin del juego..");
    }

    public void mostrarJugadores() {
        System.out.println("\nListado de jugadores..");
        for (Iterator<Jugador> iterator = jugadores.iterator(); iterator.hasNext();) {
            System.out.println(iterator.next());
        }
    }

    public void ingresarJugadores() {

        String nombre;
        //int id;

        int nro = 0;
        do {
            System.out.print("\nIngrese la cantidad de jugadores (entre 1 y 6): ");
            nro = leer.nextInt();
        } while (nro < 1 || nro > 6);

        System.out.println("\nIngresando " + nro + " jugadores..");

        for (int i = 0; i < nro; i++) {
            System.out.print("Ingrese el nombre del jugador #" + (i + 1) + " de " + nro + ": ");
            nombre = leer.next();
//            System.out.print("Ingrese el id del jugador: ");
//            id = leer.nextInt();
            jugadores.add(new Jugador(i, nombre, false));
        }
    }
}
