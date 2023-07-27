/*
Java - colecciones - Ejercicios de Aprendizaje extra.
Ejercicio 2 - Página 24

Crear una clase llamada CantanteFamoso. Esta clase guardará cantantes famosos 
y tendrá como atributos el nombre y discoConMasVentas. Se debe, además, en el main, 
crear una lista de tipo CantanteFamoso y agregar 5 objetos de tipo CantanteFamoso a la lista. 
Luego, se debe mostrar los nombres de cada cantante y su disco con más ventas por pantalla. 
Una vez agregado los 5, en otro bucle, crear un menú que le de la opción al usuario 
de agregar un cantante más, mostrar todos los cantantes, eliminar un cantante 
que el usuario elija o de salir del programa. 
Al final se deberá mostrar la lista con todos los cambios

Fer V - Jalmendra99@gmail.com

 */
package Ej2Cantantes;

import Ej2Cantantes.entidad.CantanteFamoso;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

public class Ej2 {

    private static Scanner leer = new Scanner(System.in).useDelimiter("\n");
    // Crea una lista de tipo CantanteFamoso
    private static ArrayList<CantanteFamoso> cantantes = new ArrayList();

    public static void main(String[] args) {

        final int CANTIDAD_DE_CANTANTES = 5;

        // Agrega 5 objetos de tipo CantanteFamoso a la lista.
        System.out.println("Inicialmente se agregarán 5 cantantes...");
        for (int i = 0; i < CANTIDAD_DE_CANTANTES; i++) {
            cantantes.add(agregarCantante());
        }

        // Muestra los nombres de cada cantante y su disco con más ventas por pantalla
        muestraCantantes();

        // Menú
        menu();

    }

    private static CantanteFamoso agregarCantante() {
        CantanteFamoso cantante = new CantanteFamoso();

        System.out.println("\nAgregando cantante:");
        System.out.print("Ingrese el nombre del cantante: ");
        cantante.setNombre(leer.next());
        System.out.print("Ingrese el nombre de su disco con más ventas: ");
        cantante.setDiscoConMasVentas(leer.next());

        return cantante;
    }

    private static void muestraCantantes() {
        System.out.println("\nMostrando cantantes..");
        for (Iterator<CantanteFamoso> iterator = cantantes.iterator(); iterator.hasNext();) {
            System.out.println(iterator.next());
        }
    }

    private static void menu() {
        int opcion;
        do {
            System.out.println("\nMenú de opciones.");
            System.out.println("1. Agregar un cantante.");
            System.out.println("2. Mostrar cantantes.");
            System.out.println("3. Eliminar un cantante.");
            System.out.println("4. Salír.");
            System.out.print("Ingrese una opción: ");
            opcion = leer.nextInt();

            switch (opcion) {
                case 1:
                    agregarCantante();
                    break;
                case 2:
                    muestraCantantes();
                    break;
                case 3:
                    eliminaCantante();
                    break;
                case 4:
                    muestraCantantes();
                    System.out.println("\nSaliendo...");
                    break;
                default:
                    System.out.println("\nOpción no válida. Elija otra opción.");
            }
        } while (opcion != 4);

    }

    private static void eliminaCantante() {
        String nombre;
        System.out.println("\nEliminando cantante..");
        System.out.print("Ingrese el nombre del cantante a eliminar: ");
        nombre = leer.next();

        for (Iterator<CantanteFamoso> iterator = cantantes.iterator(); iterator.hasNext();) {
            if (iterator.next().getNombre().equalsIgnoreCase(nombre)) {
                iterator.remove();
                System.out.println("El cantante " + nombre + " há sido eliminado.");
                break;
            } else {
                System.out.println("No se encontró el cantante " + nombre + ".");
            }

        }
    }
}
