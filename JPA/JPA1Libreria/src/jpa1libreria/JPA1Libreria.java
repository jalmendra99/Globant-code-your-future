/**
 * Java - JPA - Ejercicios de Aprendizaje.
 * Ejercicio 1 - Página 18
 *
 * TO DO:
 * - Al eliminar un autor o una editorial, verificar si pertenecen a algún libro (o catch exceptions al eliminar)
 * - 
 * 
 * Fer V - Jalmendra99@gmail.com
 */
package jpa1libreria;

import java.util.List;
import java.util.Scanner;
import jpa1libreria.entidades.Autor;
import jpa1libreria.entidades.Editorial;
import jpa1libreria.entidades.Libro;
import jpa1libreria.servicios.AutorServicio;
import jpa1libreria.servicios.EditorialServicio;
import jpa1libreria.servicios.LibroServicio;

public class JPA1Libreria {

    public static void main(String[] args) throws Exception {

        AutorServicio as = new AutorServicio();
        EditorialServicio es = new EditorialServicio();
        LibroServicio ls = new LibroServicio();

        menu(as, es, ls);

    }

    private static void menu(AutorServicio as, EditorialServicio es, LibroServicio ls) throws Exception {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        char op, op2, op3;
        Autor autorEncontrado = null;
        Editorial editorialEncontrada = null;
        Libro libroEncontrado = null;

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

//            menu2(op, as, es, ls);
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
                    break;
                default:
                    throw new AssertionError();
            }

            if (op != 'E') {

                System.out.println("a) Autor");
                System.out.println("b) Editorial");
                System.out.println("c) Libro");
                System.out.println("d) <volver al menú anterior>");
                System.out.println("");
                System.out.print("Elija una opción (a..d): ");
                op2 = leer.next().toUpperCase().charAt(0);

                switch (op2) {
                    case 'A': // a) Autor
                        switch (op) {
                            case 'A': //CREAR Autor
                                as.crearAutorDesdeTeclado();
                                break;
                            case 'B': //MODIFICAR Autor
//                                as.actualizarAutor(as.buscarAutorPorNombre(as.solicitarPorTecladoNombreAutorParaBuscar()));
                                autorEncontrado = as.getAutor();
                                if (autorEncontrado == null) {
                                    System.out.println("\nPrimero busque un Autor para modificarlo.");
                                } else {
                                    as.actualizarAutor(autorEncontrado);
                                }
                                break;
                            case 'C': //ELIMINAR Autor
//                                as.eliminarAutor(as.buscarAutorPorNombre(as.solicitarPorTecladoNombreAutorParaBuscar()));
                                autorEncontrado = as.getAutor();
                                if (autorEncontrado == null) {
                                    System.out.println("\nPrimero busque un Autor para eliminarlo.");
                                } else {
                                    as.eliminarAutor(autorEncontrado);
                                }
                                break;
                            case 'D': //BUSCAR Autor
                                as.buscarAutorPorNombre(as.solicitarPorTecladoNombreAutorParaBuscar());
                                break;
                            default:
                                throw new AssertionError();
                        }
                        break;
                    case 'B': // b) Editorial
                        switch (op) {
                            case 'A': //CREAR Editorial
                                es.crearEditorialDesdeTeclado();
                                break;
                            case 'B': //MODIFICAR Editorial
//                                es.actualizarEditorial(es.buscarEditorialPorNombre(es.solicitarPorTecladoNombreEditorialParaBuscar()));
                                editorialEncontrada = es.getEditorial();
                                if (editorialEncontrada == null) {
                                    System.out.println("\nPrimero busque una Editorial para modificarla.");
                                } else {
                                    es.actualizarEditorial(editorialEncontrada);
                                }
                                break;
                            case 'C': //ELIMINAR Editorial
//                                es.eliminarEditorial(es.buscarEditorialPorNombre(es.solicitarPorTecladoNombreEditorialParaBuscar()));
                                editorialEncontrada = es.getEditorial();
                                if (editorialEncontrada == null) {
                                    System.out.println("\nPrimero busque una Editorial para eliminarla.");
                                } else {
                                    es.eliminarEditorial(editorialEncontrada);
                                }
                                break;
                            case 'D': //BUSCAR Editorial
                                es.buscarEditorialPorNombre(es.solicitarPorTecladoNombreEditorialParaBuscar());
                                break;
                            default:
                                throw new AssertionError();
                        }
                        break;
                    case 'C': // c) Libro
                        switch (op) {
                            case 'A': //CREAR Libro
                                ls.crearLibroDesdeTeclado();
                                break;
                            case 'B': //MODIFICAR Libro
                                if (ls.getLibros() == null) {
                                    System.out.println("\nPrimero busque un libro para modificarlo.");
                                } else { // se encontró un libro
                                    libroEncontrado = ls.getLibros().get(0);
                                    ls.actualizarLibro(libroEncontrado);
                                }
                                break;
                            case 'C': //ELIMINAR Libro                                
                                if (ls.getLibros() == null) {
                                    System.out.println("\nPrimero busque un libro para eliminar.");
                                } else {
                                    libroEncontrado = ls.getLibros().get(0);
                                    ls.eliminarLibro(libroEncontrado);
                                }
                                break;
                            case 'D': //BUSCAR Libro (por: título / isbn / autor.nombre / editorial.nombre
                                System.out.println("\n** Buscar libro **");
                                System.out.println("Ingrese el método de búsqueda. Buscar un libro ingresando..");
                                System.out.println("a) título");
                                System.out.println("b) isbn");
                                System.out.println("c) Nombre del Autor");
                                System.out.println("d) Nombre de la Editorial");
                                System.out.println("e) <Cancelar>");
                                System.out.println("");
                                System.out.print("Elija una opción (a..e): ");
                                op3 = leer.next().toUpperCase().charAt(0);
                                switch (op3) {
                                    case 'A': // título
                                        ls.buscarLibroPorTitulo(ls.solicitarPorTecladoTituloLibroParaBuscar());
                                        break;
                                    case 'B': // isbn
                                        ls.buscarLibroPorIsbn(ls.solicitarPorTecladoIsbnLibroParaBuscar());
                                        break;
                                    case 'C': // Nombre del Autor
                                        ls.buscarLibrosPorNombreAutor(ls.solicitarPorTecladoNombreAutorLibroParaBuscar());
                                        break;
                                    case 'D': // Nombre de la Editorial
                                        ls.buscarLibrosPorNombreEditorial(ls.solicitarPorTecladoNombreEditorialLibroParaBuscar());
                                        break;
                                    case 'E': // <Cancelar>
                                        System.out.println("\nCancelando...");
                                        break;
                                    default:
                                        throw new AssertionError();
                                }
                                break;
                            default:
                                throw new AssertionError();
                        }
                        break;
                    case 'D': // d) <volver al menú anterior>
                        System.out.println("\nVolviendo al menú anterior...");
                        break;
                    default:
                        throw new AssertionError();
                }

            } // TODO: Resolver esta lógica horrible con este if gigante

        } while (op != 'E');

    }

}
