/*
Java - UML - Ejercicios de Aprendizaje.
Ejercicio 3 - Página 11

Fer V - Jalmendra99@gmail.com

 */
package Ej3BarajaCartas.entidades;

import Ej3BarajaCartas.utilidad.CartaComparators;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Scanner;

public class Baraja {

    ArrayList<Carta> baraja;
    ArrayList<Carta> entregadas;

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Baraja() {
        baraja = new ArrayList<Carta>();
        entregadas = new ArrayList<Carta>();
    }

    /**
     * inicializarBaraja (crea las 40 cartas) *
     */
    public void inicializarBaraja() {

        // TODO: revisar esto:
        // Inicializando a cualquier cosa porque sinó saltan errores...
        int numero = 0;
        PaloEnum palo = PaloEnum.BASTO;

        for (int j = 1; j <= 4; j++) {

            switch (j) {
                case 1:
                    palo = PaloEnum.BASTO;
                    break;
                case 2:
                    palo = PaloEnum.ESPADA;
                    break;
                case 3:
                    palo = PaloEnum.COPA;
                    break;
                case 4:
                    palo = PaloEnum.ORO;
                    break;
            }

            for (int i = 1; i <= 10; i++) {
                if (i >= 8) {
                    numero = i + 2;
                } else {
                    numero = i;
                }

                baraja.add(new Carta(numero, palo));
            }
        }
    }

    public void ordenar() {
        System.out.println("\nOrdenando la baraja..");
        Collections.sort(baraja, CartaComparators.ordenarPorBastoYNumero);
    }

    /**
     * • barajar(): cambia de posición todas las cartas aleatoriamente.
     */
    public void barajar() {
        System.out.println("\nMezclando la baraja..");
        Collections.shuffle(baraja);
    }

    /**
     * • siguienteCarta(): devuelve la siguiente carta que está en la baraja,
     * cuando no haya más o se haya llegado al final, se indica al usuario que
     * no hay más cartas.
     */
    public Carta siguenteCarta() {
        return baraja.get(0);
    }

    /**
     * • cartasDisponibles(): indica el número de cartas que aún se puede
     * repartir.
     */
    public void cartasDisponibles() {
        System.out.println("\nLa cantidad de cartas disponibles para repartír es " + baraja.size() + ".");
    }

    /**
     * • darCartas(): dado un número de cartas que nos pidan, le devolveremos
     * ese número de cartas. En caso de que haya menos cartas que las pedidas,
     * no devolveremos nada, pero debemos indicárselo al usuario.
     */
    public void darCartas() {
        Carta c;
        int cantidadPedidas = solicitarCantidadAUsuario();
        System.out.println("\nEntregando " + cantidadPedidas + " cartas..");
        if (baraja.size() >= cantidadPedidas) {
            for (int i = 0; i < cantidadPedidas; i++) {
                System.out.println("Carta " + (i + 1) + " de " + cantidadPedidas + ", : " + baraja.get(0) + ".");
                c = siguenteCarta();
                entregadas.add(c);
                baraja.remove(c);
            }
        }
    }

    private int solicitarCantidadAUsuario() {
        System.out.println("\nSolicitando cantidad de cartas al usuario..");
        System.out.print("Ingrese una cantidad de cartas a repartír: ");
        return leer.nextInt();
    }

    /**
     * • cartasMonton(): mostramos aquellas cartas que ya han salido, si no ha
     * salido ninguna indicárselo al usuario
     */
    public void cartasMonton() {
        System.out.println("\nMostrando cartas entregadas..");
        for (Iterator<Carta> iterator = entregadas.iterator(); iterator.hasNext();) {
            System.out.println(iterator.next());
        }
    }

    /**
     * • mostrarBaraja(): muestra todas las cartas hasta el final. Es decir, si
     * se saca una carta y luego se llama al método, este no mostrara esa
     * primera carta.
     */
    public void mostrarBaraja() {
        System.out.println("\nMostrando baraja..");
        for (Iterator<Carta> iterator = baraja.iterator(); iterator.hasNext();) {
            System.out.println(iterator.next());
        }
    }
}
