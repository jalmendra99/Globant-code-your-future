/*
Java-POO - Ejercicios extra.
Ejercicio # - Página #

El programa debe permitir al usuario ingresar los datos de las películas disponibles 
y los datos de los alquileres realizados, y mostrar por pantalla un menú 
con las opciones de cargar una pelicula, hacer una lista de todas las peliculas disponibles, 
crear un alquiler, realizar una lista de todos los alquileres, 
buscar peliculas por titulo o por genero y buscar alquileres por fecha.


Fer V - Jalmendra99@gmail.com

 */
package Ejercicio1;

import Ejercicio1.entidad.Alquiler;
import Ejercicio1.entidad.Pelicula;
import Ejercicio1.service.AlquilerService;
import Ejercicio1.service.PeliculaService;
import java.time.LocalDate;

public class Ejercicio1 {

    public static void main(String[] args) {

        PeliculaService ps = new PeliculaService();
        AlquilerService as = new AlquilerService();

        Pelicula[] peliculas = new Pelicula[5];
        Alquiler[] alquileres = new Alquiler[2];

        // Creamos 4 pelis
        peliculas[0] = ps.crearPelicula("Bañeros8", "comedia", 1987, 90);
        peliculas[1] = ps.crearPelicula("Bañeros7", "comedia", 1986, 90);
        peliculas[2] = ps.crearPelicula("Bañeros6", "comedia", 1985, 90);
        peliculas[3] = ps.crearPelicula("Terminator", "terror", 1984, 120);
        peliculas[4] = ps.crearPelicula("Avatar", "ficcion", 2022, 180);

        // Creamos 2 alquileres
        alquileres[0]
                = as.crearAlquiler(peliculas[0],
                        LocalDate.of(2023, 06, 27),
                        LocalDate.of(2023, 06, 28));
        alquileres[1]
                = as.crearAlquiler(peliculas[3],
                        LocalDate.of(2023, 06, 27),
                        LocalDate.of(2023, 06, 28));

        alquileres[2]
                = as.crearAlquiler(peliculas[0],
                        LocalDate.of(2023, 06, 20),
                        LocalDate.of(2023, 06, 25));

        as.MostrarPeliculas(peliculas);

        as.MostrarPeliculasAlquiladas(alquileres);

        System.out.printf("$ %.2f\n", as.calcularIngresoTotal(alquileres));

        as.buscarAlquilerPorFechaDeInicio(alquileres, LocalDate.of(2023, 06, 27));

    }

}
