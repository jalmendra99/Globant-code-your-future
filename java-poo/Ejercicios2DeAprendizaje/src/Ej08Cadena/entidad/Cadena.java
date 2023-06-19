/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 8 - Página 30

Fer V - Jalmendra99@gmail.com

 */
package Ej08Cadena.entidad;

public class Cadena {

    // Atributos
    private String frase;
    private int longitud;

    // Constructores
    public Cadena() {
    }

    public Cadena(String frase) {
        this.frase = frase;
        this.longitud = frase.length();
    }

    // Getters y setters
    // Setter de longitud no se crea, porque la longitud de la frase
    // se calcula automáticamente en el constructor y el setter de frase.
    public String getFrase() {
        return frase;
    }

    public void setFrase(String frase) {
        this.frase = frase;
        this.longitud = frase.length();
    }

    public int getLongitud() {
        return longitud;
    }
}
