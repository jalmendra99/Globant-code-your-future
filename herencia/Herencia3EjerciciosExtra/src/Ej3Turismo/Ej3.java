/*
Java - Herencia - Ejercicios de Aprendizaje extra.
Ejercicio 3 - Página 17

Fer V - Jalmendra99@gmail.com

 */
package Ej3Turismo;

import Ej3Turismo.entidades.Alojamiento;
import Ej3Turismo.entidades.Camping;
import Ej3Turismo.entidades.GimnasioEnum;
import Ej3Turismo.entidades.Hotel4Estrellas;
import Ej3Turismo.entidades.Hotel5Estrellas;
import Ej3Turismo.entidades.Residencia;
import java.util.ArrayList;

public class Ej3 {

    public static void main(String[] args) {

        ArrayList<Alojamiento> alojamientos = new ArrayList<Alojamiento>();

        // Hardcodea dos alojamientos de cada tipo (Hotel4Estrellas, Hotel5Estrellas, Camping, Residencia).
        crearAlojamientos(alojamientos);

        // 1) Muestra todos los alojamientos.
        mostrarAlojamientos(alojamientos);

//        mostrarHotelesOrdenados(alojamientos);
//        
//        mostrarCampingsConRestaurante(alojamientos);
//        
//        mostrarResidenciasConDescuento(alojamientos);
    }

    private static void crearAlojamientos(ArrayList<Alojamiento> alos) {
        // Crear un alojamiento o dos de cada tipo (Hotel4Estrellas, Hotel5Estrellas, Camping, Residencia).
        // Hotel4:
        /**
         * Hotel 4 estrellas. Atributos: int cantHabitaciones, int nroCamas, int
         * cantPisos, GimnasioEnum gimnasio, String nombreRestaurante, int
         * capacidadRestaurante, double precioHabitacion, String nombre, String
         * direccion, String localidad, String gerente
         */
        alos.add(new Hotel4Estrellas(5, 10, 2, GimnasioEnum.A, "Resto4", 10, 100d, "Hotel4", "Direcc4", "Localidad4", "Gerente4"));
        alos.add(new Hotel4Estrellas(15, 20, 3, GimnasioEnum.B, "Resto4b", 25, 200d, "Hotel4", "Direcc4b", "Localidad4b", "Gerente4b"));
        /**
         * Hotell 5 estrellas. Atributos: int cantSalonesConferencia, int
         * cantSuites, int cantLimosinas, int cantHabitaciones, int nroCamas,
         * int cantPisos, GimnasioEnum gimnasio, String nombreRestaurante, int
         * capacidadRestaurante, double precioHabitacion, String nombre, String
         * direccion, String localidad, String gerente
         */
        alos.add(new Hotel5Estrellas(2, 5, 2, 10, 30, 2, GimnasioEnum.A, "Resto5", 20, 250d, "Hotel5", "Direcc5", "Local5", "Gerente5"));
        alos.add(new Hotel5Estrellas(1, 3, 4, 20, 35, 3, GimnasioEnum.B, "Resto5b", 23, 230d, "Hotel5b", "Direcc5b", "Local5b", "Gerente5b"));
        /**
         * Camping. Atributos: int capacidadMaxCarpas, int
         * cantBaniosDisponibles, boolean restaurante, boolean privado, double
         * cantMetrosCuadrados, String nombre, String direccion, String
         * localidad, String gerente) {
         */
        alos.add(new Camping(30, 5, true, false, 1500, "camping1", "direcCamp", "LocalCamp", "GerenteCamp"));
        alos.add(new Camping(40, 7, false, true, 2000, "camping2", "direcCamp2", "LocalCamp2", "GerenteCamp2"));
        /**
         * Residencia. Atributos: int cantHabitaciones, boolean
         * descuentoAGremios, boolean campoDeportivo, boolean privado, double
         * cantMetrosCuadrados, String nombre, String direccion, String
         * localidad, String gerente
         */
        alos.add(new Residencia(20, true, true, true, 800, "Resi1", "direRes1", "LocRes1", "GerenteRes1"));
        alos.add(new Residencia(10, false, false, false, 500, "Resi2", "direRes2", "LocRes2", "GerenteRes2"));

    }

    private static void mostrarAlojamientos(ArrayList<Alojamiento> alojamientos) {

        for (Alojamiento alojamiento : alojamientos) {

            if (alojamiento instanceof Hotel4Estrellas) {
                System.out.println((Hotel4Estrellas) alojamiento);
            } else if (alojamiento instanceof Hotel5Estrellas) {
                System.out.println((Hotel5Estrellas) alojamiento);
            } else if (alojamiento instanceof Camping) {
                System.out.println((Camping) alojamiento);
            } else if (alojamiento instanceof Residencia) {
                System.out.println((Residencia) alojamiento);
            }
        }

    }

}
