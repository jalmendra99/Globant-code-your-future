/*
Java - UML - Ejercicios de teoría
Ejercicio 1 - Página 5

Fer V - Jalmendra99@gmail.com

 */
package Ej1PersonaYDni.entidades;

public class Dni {

    // Atributos
    private String serie;
    private int numero;
    
    // Constructores

    public Dni() {
    }

    public Dni(String serie, int numero) {
        this.serie = serie;
        this.numero = numero;
    }
    
    // Getters y setters

    public String getSerie() {
        return serie;
    }

    public void setSerie(String serie) {
        this.serie = serie;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    @Override
    public String toString() {
        return "Dni{" + "serie=" + serie + ", numero=" + numero + '}';
    }
    
    
}
