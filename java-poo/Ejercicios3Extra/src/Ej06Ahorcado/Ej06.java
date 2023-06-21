/*
Java-POO - Ejercicios extra.
Ejercicio 6 - Página 35

Fer V - Jalmendra99@gmail.com

 */
package Ej06Ahorcado;

import Ej06Ahorcado.entidad.AhorcadoMejorado;
import Ej06Ahorcado.servicio.AhorcadoMejoradoService;

public class Ej06 {

    public static void main(String[] args) {

        // Se crea una clase AhorcadoMejoradoService para crear e interactuar con clases AhorcadoMejorado
        AhorcadoMejoradoService as = new AhorcadoMejoradoService();

        // Se crea una clase AhorcadoMejorado y se inicia el juego.
        AhorcadoMejorado ahorcado = as.crearAhorcado();

        // Se juega un juego con la clase AhorcadoMejorado
        as.juego(ahorcado);
    }
}
