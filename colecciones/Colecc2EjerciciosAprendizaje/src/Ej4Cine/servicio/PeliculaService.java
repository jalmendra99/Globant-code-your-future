/*
Java - colecciones - Ejercicios de Aprendizaje.
Ejercicio 4 - Página 22

Fer V - Jalmendra99@gmail.com

 */
package Ej4Cine.servicio;

import Ej4Cine.entidad.Pelicula;
import Ej4Cine.utilidad.PeliculaComparators;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class PeliculaService {

    // Atributos
    private ArrayList<Pelicula> pelis = new ArrayList<Pelicula>();
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");

    // Getter de peliculas 
    public ArrayList<Pelicula> getPelis() {
        return pelis;
    }

    // Métodos solicitados
    public void crearPeliculas() {
        String opcion;
        Pelicula peli;
        do {
            peli = new Pelicula();
            System.out.println("Creando una película nueva..");
            System.out.print("Ingrese el título de la película: ");
            peli.setTitulo(leer.next());

            System.out.print("Ingrese el nombre del director: ");
            peli.setDirector(leer.next());

            System.out.print("Ingrese la duración en minutos: ");
            peli.setDuracionEnMinutos(leer.nextInt());

            pelis.add(peli);

            System.out.print("¿Desea ingresar otra película? (s/n): ");
            opcion = leer.next();
        } while (opcion.equalsIgnoreCase("s"));

    }

    public void mostrarPeliculas() {
        for (Pelicula peli : pelis) {
            System.out.println(peli);
        }
    }

    // Sobreescrito para mostrar peliculas de otro listado.
    public void mostrarPeliculas(ArrayList<Pelicula> peliculas) {
        for (Pelicula peli : peliculas) {
            System.out.println(peli);
        }
    }

    public void mostrarPeliculasConDuracionMayorA(int duracion) {
        ArrayList<Pelicula> encontradas = new ArrayList<>();
        for (Pelicula peli : pelis) {
            if (peli.getDuracionEnMinutos() > duracion) {
                encontradas.add(peli);
            }
            mostrarPeliculas(encontradas);
        }
    }

    public void ordenarPeliculasPorDuracion() {
        Collections.sort(pelis, PeliculaComparators.ordenarPorDuracion);
    }

    public void ordenarPeliculasPorDuracionRev() {
        Collections.sort(pelis, PeliculaComparators.ordenarPorDuracionRev);
    }

    public void ordenarPeliculasPorTitulo() {
        Collections.sort(pelis, PeliculaComparators.ordenarPorTitulo);
    }

    public void ordenarPeliculasPorDirector() {
        Collections.sort(pelis, PeliculaComparators.ordenarPorDirector);
    }

    public void mostrarMenu() {
        int opcion;
        do {
            System.out.println("\n---Menú de opciones:---");
            System.out.println("1. Crear y agregar películas a la lista");
            System.out.println("2. Mostrar lista actual");
            System.out.println("3. Mostrar películas que tengan una duración mayor a una hora");
            System.out.println("4. Ordenar listado por duración");
            System.out.println("5. Ordenar listado por duración (de mayor a menor)");
            System.out.println("6. Ordenar listado por título");
            System.out.println("7. Ordenar listado por director");
            System.out.println("8. Salir");
            System.out.print("Elija una opción: ");
            opcion = leer.nextInt();

            switch (opcion) {
                case 1:
                    crearPeliculas();
                    break;
                case 2:
                    mostrarPeliculas(pelis);
                    break;
                case 3:
                    mostrarPeliculasConDuracionMayorA(60);
                    break;
                case 4:
                    ordenarPeliculasPorDuracion();
                    System.out.println("\nOrdenadas por duración: ");
                    mostrarPeliculas();
                    break;
                case 5:
                    ordenarPeliculasPorDuracionRev();
                    System.out.println("\nOrdenadas por duración (de mayor a menor): ");
                    mostrarPeliculas();
                    break;
                case 6:
                    ordenarPeliculasPorTitulo();
                    System.out.println("\nOrdenadas por tíulo: ");
                    mostrarPeliculas();
                    break;
                case 7:
                    ordenarPeliculasPorDirector();
                    System.out.println("\nOrdenadas por director: ");
                    mostrarPeliculas();
                case 8:
                    System.out.println("Saliendo...");
                default:
                    System.out.println("Opción inválida.");
            }
        } while (opcion != 8);
    }
}
