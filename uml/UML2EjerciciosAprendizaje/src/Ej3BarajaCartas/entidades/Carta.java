/*
Java - UML - Ejercicios de Aprendizaje.
Ejercicio 3 - Página 11

Fer V - Jalmendra99@gmail.com

 */
package Ej3BarajaCartas.entidades;

public class Carta {

    // Atributos
    private int numero;
    private PaloEnum palo;

    // Constructores
    public Carta() {
    }

    public Carta(int numero, PaloEnum palo) {
        this.numero = numero;
        this.palo = palo;
    }

    // Getters y setters
    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public PaloEnum getPalo() {
        return palo;
    }

    public void setPalo(PaloEnum palo) {
        this.palo = palo;
    }

    @Override
    public String toString() {
        return "Carta{" + "numero=" + numero + ", palo=" + palo + '}';
    }

}
