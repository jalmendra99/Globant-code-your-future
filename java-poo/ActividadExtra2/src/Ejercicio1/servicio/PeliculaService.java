/*
Java-POO - Actividad extra 2.

Fer V - Jalmendra99@gmail.com

--

Info: 
- Año de la primera película (aprox) ~1.830
https://en.wikipedia.org/wiki/History_of_film
- Duración de la película más larga ~60.000 min
https://es.wikipedia.org/wiki/Anexo:Pel%C3%ADculas_de_m%C3%A1s_larga_duraci%C3%B3n

 */
package Ejercicio1.servicio;

import Ejercicio1.entidad.Pelicula;
import java.util.Scanner;

public class PeliculaService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Pelicula crearPelicula() {
        Pelicula peli = new Pelicula();

        System.out.println("Ingresando una nueva película al sistema...");

        System.out.print("Ingrese el título de la película: ");
        peli.setTitulo(leer.next());

        System.out.print("Ingrese el género de la película: ");
        peli.setGenero(leer.next());

        // Se fuerza a que el año esté entre 1830 y 2100.
        int anio;
        do {
            System.out.print("Ingrese el año de la película: ");
            anio = leer.nextInt();
            if (anio < 1830 && anio > 2100) {
                System.out.println("Ingrese un año entre 1830 y 2100.");
            }

        } while (anio < 1830 && anio > 2100);
        peli.setAnio(anio);

        // Se fuerza a que la duración esté entre 1 minuto y 60000
        int duracion;
        do {
            System.out.print("Ingrese la duración en minutos de la película:");
            duracion = leer.nextInt();
            if (duracion < 1 || duracion > 60000) {
                System.out.println("Ingrese una cantidad de minutos entre 1 y 60000.");
            }
        } while (duracion < 1 || duracion > 60000);
        peli.setDuracionEnMinutos(duracion);

        return peli;
    }

    public Pelicula crearPelicula(String titulo, String genero, int anio, int duracion) {
        Pelicula peli = new Pelicula(titulo, genero, anio, duracion);
        return peli;
    }

    // Métodos
    public Pelicula buscarPeliculaPorTitulo(Pelicula[] pelis, String tituloABuscar) {
        for (int i = 0; i < pelis.length; i++) {
            if (tituloABuscar.equals(pelis[i].getTitulo())) {
                return pelis[i];
            }
        }
        return null;
    }

    // 
    public Pelicula buscarPeliculaPorGenero(Pelicula[] pelis, String generoABuscar) {
        for (int i = 0; i < pelis.length; i++) {
            if (generoABuscar.equals(pelis[i].getGenero())) {
                return pelis[i];
            }
        }
        return null;
    }
}
