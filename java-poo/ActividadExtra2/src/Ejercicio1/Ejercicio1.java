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
import Ejercicio1.servicio.AlquilerService;
import Ejercicio1.servicio.PeliculaService;
import java.time.LocalDate;
import java.util.Scanner;

public class Ejercicio1 {

    public static void main(String[] args) {

        PeliculaService ps = new PeliculaService();
        AlquilerService as = new AlquilerService();

        Pelicula[] peliculas = new Pelicula[5];
        Alquiler[] alquileres = new Alquiler[3]; // ¿Que se usa para que la cantidad sea dinámica?

        boolean salir = true;
        int opcion;

        while (!salir) {
            opcion = muestraMenu();
            salir = ejecutarOpcion(opcion, ps, as, peliculas, alquileres);
        }

        as.buscarAlquilerPorFechaDeInicio(alquileres, LocalDate.of(2023, 06, 27));

    }

    private static int muestraMenu() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        System.out.println("Alquiler de películas:");
        System.out.println("1. Ingresar (crear) una película");
        System.out.println("2. Mostrar todas las películas");
        System.out.println("3. Buscar una película");
        System.out.println("4. Ingresar un alquiler");
        System.out.println("5. Mostrar películas alquiladas");
        System.out.println("6. Calcular ingreso total de alquileres");
        System.out.println("7. Salir");
        System.out.print("Elija una opción: ");
        return leer.nextInt();
    }

    private static boolean ejecutarOpcion(int opcion, PeliculaService ps, AlquilerService as, Pelicula[] peliculas, Alquiler[] alquileres) {
        switch (opcion) {
            case 1:
                System.out.println("Eligió ingresar (crear) una película.");

                // Creamos 3 pelis hardcodeando la información
                System.out.println("Creando 5 películas hardcodeando...");
                peliculas[0] = ps.crearPelicula("Bañeros8", "comedia", 1987, 90);
                peliculas[1] = ps.crearPelicula("Terminator", "terror", 1984, 120);
                peliculas[2] = ps.crearPelicula("Avatar", "ficcion", 2022, 180);
                peliculas[3] = ps.crearPelicula("Bañeros7", "comedia", 1986, 90);
                peliculas[4] = ps.crearPelicula("Bañeros6", "comedia", 1985, 100);

                // Creamos 2 pelis solicitando la información al usuario y validándola
                // como pide el enunciado.
                // peliculas[3] = ps.crearPelicula();
                // peliculas[4] = ps.crearPelicula();
                
                break;
            case 2:
                System.out.println("Eligió mostrar todas la películas disponibles.");
                as.MostrarPeliculas(peliculas);
                break;
            case 3:
                System.out.println("Eligió buscar una película.");
                break;
            case 4:
                System.out.println("Eligió ingresar un alquiler.");

                // Creamos 2 alquileres hardcodeando la información.
                alquileres[0]
                        = as.crearAlquiler(peliculas[0],
                                LocalDate.of(2023, 06, 27),
                                LocalDate.of(2023, 06, 28));
                alquileres[1]
                        = as.crearAlquiler(peliculas[3],
                                LocalDate.of(2023, 06, 27),
                                LocalDate.of(2023, 06, 28));

                // Creamos un alquiler solicitando la información al usuario.
//        alquileres[2]
//                = as.crearAlquiler(peliculas[0],
//                        LocalDate.of(2023, 06, 20),
//                        LocalDate.of(2023, 06, 25));
                alquileres[2] = as.crearAlquiler(peliculas);

                break;
            case 5:
                System.out.println("Eligió mostrar el listado de películas alquiladas.");
                as.MostrarPeliculasAlquiladas(alquileres);
                break;
            case 6:
                System.out.println("Eligió calcular el ingreso total de los alquileres.");
                System.out.printf("$ %.2f\n", as.calcularIngresoTotal(alquileres));
                break;
            case 7:
                System.out.println("Eligió salír. Saliendo!...");
                break;
        }
    }

}
