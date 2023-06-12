/*
Java-POO - Ejercicios extra.
Ejercicio 1 - Página 33

Fer V - Jalmendra99@gmail.com

 */
package Ej01Cancion;

public class Ej01 {

    public static void main(String[] args) {

        // Crea un objeto Cancion sin título ni autor. 
        Cancion ca1 = new Cancion();

        // Crea un objeto Cancion con titulo y autor.
        Cancion ca2 = new Cancion("Dig", "Incubus");

        // Agregando título y autor a ca1 usando setters.
        ca1.setAutor("Home");
        ca1.setTitulo("Resonance");

        // Mostrando información por pantalla usando getters
        System.out.println("Primera canción: " + ca1.getTitulo() + " de " + ca1.getAutor());
        System.out.println("Segunda canción: " + ca2.getTitulo() + " de " + ca2.getAutor());
    }

}
