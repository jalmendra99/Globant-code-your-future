/*
Java-POO - Ejercicios extra.
Ejercicio # - Página #

Fer V - Jalmendra99@gmail.com

 */
package Ejercicio1.servicio;

import Ejercicio1.entidad.Alquiler;
import Ejercicio1.entidad.Pelicula;
import java.time.LocalDate;
import java.time.Period;
import java.util.Arrays;
import java.util.Scanner;

public class AlquilerService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Alquiler crearAlquiler(Pelicula peli, LocalDate fechaInicio, LocalDate fechaFin) {
        Alquiler alqui = new Alquiler(peli, fechaInicio, fechaFin);
        alqui.setPrecio(calcularPrecio(alqui));
        return alqui;
    }

    public Alquiler crearAlquiler(Pelicula[] pelis) {
        Alquiler alqui = new Alquiler();
        PeliculaService ps = new PeliculaService();

        //peli, fechaInicio, fechaFin
        System.out.println("Creando un alquiler.");
        MostrarPeliculas(pelis);

        Pelicula peli;
        // Fuerza a que la película ingresada exista en el arreglo de películas
        do {
            System.out.print("Ingrese el nombre de la película a alquilar: ");
            String nombrePelicula = leer.next();
            peli = ps.buscarPeliculaPorTitulo(pelis, nombrePelicula);
            alqui.setPeliAlquilada(peli);
            if (peli == null) {
                System.out.println("La película ingresada no existe");
            }
        } while (peli == null);

        alqui.setPrecio(calcularPrecio(alqui));
        System.out.println("El alquiler ha sido creado correctamente.");
        return alqui;
    }

    public void MostrarPeliculas(Pelicula[] pelis) {
        System.out.println("Mostrando el listado de peliculas");
        System.out.println(Arrays.toString(pelis));
    }

    public void MostrarPeliculasAlquiladas(Alquiler[] alquileres) {
        Pelicula[] pelis = new Pelicula[alquileres.length];
        for (int i = 0; i < alquileres.length; i++) {
            pelis[i] = alquileres[i].getPeliAlquilada();
        }
        MostrarPeliculas(pelis);
    }

    public double calcularPrecio(Alquiler alqui) {
        double precio = 0;
        // Calcular el ingreso total del servicio (El alquiler cuesta $10, 
        // por 3 días. Por cada día extra, se aumenta un 10% de interés.)
        Period diferencia = Period.between(alqui.getFechaDeInicio(), alqui.getFechaDeFin());
        int dias = diferencia.getDays();
        if (dias <= 3) {
            precio = 10;
        } else if (dias > 3) {
            precio = (Math.pow(1.1, (dias - 3)) * 10);
        }
        return precio;
    }

    public boolean buscarAlquilerPorFechaDeInicio(Alquiler[] alqui, LocalDate fechaDeInicioAbuscar) {
        boolean seEncontro = false;
        for (int i = 0; i < alqui.length; i++) {
            if (fechaDeInicioAbuscar.isEqual(alqui[i].getFechaDeInicio())) {
                System.out.println("Se encontró el alquiler: " + alqui[i].toString());
                seEncontro = true;
            }
        }
        return seEncontro;
    }

    public double calcularIngresoTotal(Alquiler[] alqui) {
        double sumatoria = 0;
        for (int i = 0; i < alqui.length; i++) {
            sumatoria += calcularPrecio(alqui[i]);
        }
        return sumatoria;
    }

    public Alquiler[] devolvemeAlquileres(Alquiler[] alqui) {
        return alqui;
    }

}
