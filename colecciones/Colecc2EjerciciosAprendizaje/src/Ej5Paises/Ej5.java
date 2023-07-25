/*
Java - colecciones - Ejercicios de Aprendizaje.
Ejercicio 5 - Página 23

Fer V - Jalmendra99@gmail.com

 */
package Ej5Paises;

import Ej5Paises.servicio.PaisService;

public class Ej5 {

    public static void main(String[] args) {

        PaisService ps = new PaisService();

        ps.crearPaises();

        System.out.println("---ordenando alfabéticamente---");
        ps.ordenarAlfabeticamente();
//        ps.mostrarPaises();

        ps.eliminarPaisPorTeclado();
    }

}
