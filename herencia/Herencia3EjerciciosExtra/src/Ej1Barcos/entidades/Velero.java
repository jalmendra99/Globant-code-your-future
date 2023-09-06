/*
Java - Herencia - Ejercicios de Aprendizaje extra.
Ejercicio 1 - Página 16

Fer V - Jalmendra99@gmail.com

 */
package Ej1Barcos.entidades;

public class Velero extends Barco {

    // Atributos
    private int nroMastiles;
    
    // Constructores

    public Velero() {
    }

    public Velero(int nroMastiles, String matricula, double eslora, int anioFabricacion) {
        super(matricula, eslora, anioFabricacion);
        this.nroMastiles = nroMastiles;
    }

    // Getters y setters

    public int getNroMastiles() {
        return nroMastiles;
    }

    public void setNroMastiles(int nroMastiles) {
        this.nroMastiles = nroMastiles;
    }

    @Override
    public String toString() {
        return super.toString() + " Velero{" + "nroMastiles=" + nroMastiles + '}';
    }
    
}
