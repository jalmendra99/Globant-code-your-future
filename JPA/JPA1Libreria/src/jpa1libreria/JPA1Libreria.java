/**
 * Java - JPA - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 18
 *
 * TO DO:
 * - Agregar codigo conectar y desconectar a DAO
 * - Agregar los conectar y desconectar correspondientes en cada transacción..
 * - Al eliminar un autor o una editorial, verificar si pertenecen a algún libro (o catch exceptions al eliminar).
 * - Agregar al menú principal la opción de Mostrar por pantalla el elemento previamente buscado.
 * -
 *
 * Info:
 * - https://stackoverflow.com/questions/20887829/system-exit1-and-return
 * - https://stackoverflow.com/questions/22452930/terminating-a-java-program
 * - https://www.baeldung.com/jpa-join-types
 * - https://github.com/EggCooperation/JPA
 * -
 *
 * Fer V - Jalmendra99@gmail.com
 */
package jpa1libreria;

import java.util.Scanner;
import jpa1libreria.servicios.ServiceAutor;
import jpa1libreria.servicios.ServiceEditorial;
import jpa1libreria.servicios.ServiceLibro;

public class JPA1Libreria {

    public static void main(String[] args) throws Exception {

        ServiceAutor as = new ServiceAutor();
        ServiceEditorial es = new ServiceEditorial();
        ServiceLibro ls = new ServiceLibro();

        menu(as, es, ls);

    }

    private static void menu(ServiceAutor as, ServiceEditorial es, ServiceLibro ls) throws Exception {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        char op, op2;

        do {

            System.out.println("\n** Menú principal **");
            System.out.println("a) CREAR");
            System.out.println("b) MODIFICAR");
            System.out.println("c) ELIMINAR");
            System.out.println("d) BUSCAR");
            System.out.println("e) Salir");
            System.out.println("");
            System.out.print("Elija una opción (a..e): ");
            op = leer.next().toUpperCase().charAt(0);

            switch (op) {
                case 'A': // a) CREAR
                    System.out.println("\n** CREAR **");
                    break;
                case 'B': // b) MODIFICAR
                    System.out.println("\n** MODIFICAR **");
                    break;
                case 'C': // c) ELIMINAR
                    System.out.println("\n** ELIMINAR **");
                    break;
                case 'D': // d) BUSCAR
                    System.out.println("\n** BUSCAR **");
                    break;
                case 'E': // e) Salir
                    System.out.println("\nSaliendo...");
                    //break;
                    return; // Corta y sale del programa acá. Para no tener que usar un if gigante unas líneas más abajo.
                default:
                    throw new AssertionError();
            }

            System.out.println("a) Autor");
            System.out.println("b) Editorial");
            System.out.println("c) Libro");
            System.out.println("d) <volver al menú anterior>");
            System.out.println("");
            System.out.print("Elija una opción (a..d): ");
            op2 = leer.next().toUpperCase().charAt(0);

            switch (op2) {
                case 'A': // a) Autor
                    as.menu(op);
                    break;
                case 'B': // b) Editorial
                    es.menu(op);
                    break;
                case 'C': // c) Libro
                    ls.menu(op);
                    break;
                case 'D': // d) <volver al menú anterior>
                    System.out.println("\nVolviendo al menú anterior...");
                    break;
                default:
                    throw new AssertionError();
            }
        } while (op != 'E');
    }

}
