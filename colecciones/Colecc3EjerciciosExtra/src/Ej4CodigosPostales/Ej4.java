/*
Java - colecciones - Ejercicios de Aprendizaje extra.
Ejercicio 4 - Página 25

Almacena en un HashMap los códigos postales de 10 ciudades a elección 
de esta página: https://mapanet.eu/index.htm. Nota: 
Poner el código postal sin la letra, solo el número.
* Pedirle al usuario que ingrese 10 códigos postales y sus ciudades. 
* Muestra por pantalla los datos introducidos 
* Pide un código postal y muestra la ciudad asociada si existe sino avisa al usuario. 
* Muestra por pantalla los datos 
* Agregar una ciudad con su código postal correspondiente más al HashMap. 
* Elimina 3 ciudades existentes dentro del HashMap, que pida el usuario. 
* Muestra por pantalla los datos

Fer V - Jalmendra99@gmail.com

 */
package Ej4CodigosPostales;

import java.util.HashMap;
import java.util.Scanner;

public class Ej4 {

    private static final int CANT_COD_POSTALES = 10;
    private static HashMap<Integer, String> codigosPostales = new HashMap<Integer, String>();
    private static Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public static void main(String[] args) {

        // * Pedirle al usuario que ingrese 10 códigos postales y sus ciudades. 
        ingresarCodigos();

        // * Muestra por pantalla los datos introducidos 
        mostrarCodigos();

        // * Pide un código postal y muestra la ciudad asociada si existe sino avisa al usuario. 
        mostrarCiudadDeCodigo();

        // * Muestra por pantalla los datos 
        mostrarCodigos();

        // * Agregar una ciudad con su código postal correspondiente más al HashMap. 
        System.out.println("\nAgregando una ciudad y un código..");
        ingresarCodigo();
        mostrarCodigos();

        // * Elimina 3 ciudades existentes dentro del HashMap, que pida el usuario. 
        eliminarCiudades();

        // * Muestra por pantalla los datos
        mostrarCodigos();
    }

    private static void ingresarCodigos() {

        // Para hardcodear 10 códigos de Uruguay -> Colonia ->...
        /*
        codigosPostales.put(70102, "Agraciada");
        codigosPostales.put(70002, "Artilleros");
        codigosPostales.put(70007, "Barker");
        codigosPostales.put(70003, "Campana");
        codigosPostales.put(70100, "Carmelo");
        codigosPostales.put(70000, "Colonia");
        codigosPostales.put(70202, "Colonia Valdense");
        codigosPostales.put(70004, "Conchillas");
        codigosPostales.put(70204, "Cufré");
        codigosPostales.put(75204, "Florencio Sánchez");
        
         */
        // Ingresando los códigos por pantalla.
        System.out.println("\nIngresando 10 códigos postales..");

        for (int i = 0; i < CANT_COD_POSTALES; i++) {
            ingresarCodigo();
        }

    }

    private static void ingresarCodigo() {

        String ciudad;
        Integer codigo;

        System.out.print("Ingrese el nombre de la ciudad: ");
        ciudad = leer.next();
        System.out.print("Ingrese el código postal: ");
        codigo = leer.nextInt();

        codigosPostales.put(codigo, ciudad);
    }

    private static void mostrarCodigos() {
        System.out.println("\nMostrando los códigos postales..");
        for (HashMap.Entry<Integer, String> entry : codigosPostales.entrySet()) {
            System.out.println("Ciudad: " + entry.getValue() + ", Código: " + entry.getKey());
        }
    }

    private static void mostrarCiudadDeCodigo() {

        System.out.println("\nBuscando un código postal para mostrar su ciudad..");

        Integer codigo = buscarCiudadPorCodigo();

        if (codigo != -1) {
            System.out.println("La ciudad es: " + codigosPostales.get(codigo));
        }
    }

    private static Integer buscarCiudadPorCodigo() {
        Integer codigo;

        System.out.print("Ingrese el código postal: ");
        codigo = leer.nextInt();

        if (codigosPostales.containsKey(codigo)) {
            return codigo;
        } else {
            System.out.println("No hay ciudades ingresadas para ese código.");
            return -1;
        }

    }

    private static void eliminarCiudades() {

        System.out.println("\nBuscando un código postal para eliminar su ciudad..");

        Integer codigo = buscarCiudadPorCodigo();

        if (codigo != -1) {
            System.out.println("La ciudad " + codigosPostales.get(codigo) + " será eliminada.");
            codigosPostales.remove(codigo);
            System.out.println("La ciudad ha sido eliminada.");
        }
    }
}
