/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 14 - Página 32

Fer V - Jalmendra99@gmail.com

 */
package Ej14Movil;

import Ej14Movil.entidad.Movil;
import Ej14Movil.servicio.MovilService;

public class Ej14 {

    public static void main(String[] args) {

        // Se crea un objeto MovilService para crear y manipular objetos Movil
        MovilService ms = new MovilService();

        // Se crea un objeto Movil y se cargan sus datos
        Movil mo = ms.crearCelular();

        // Se muestran los datos
        ms.mostrarMovil(mo);
    }
}
