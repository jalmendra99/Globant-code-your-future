/*
Java - Herencia - Ejercicios de Aprendizaje extra.
Ejercicio 2 - Página 16

Fer V - Jalmendra99@gmail.com

 */
package Ej2Edificios.entidades;

public abstract class Edificio {

    // Atributos
    private double ancho;
    private double alto;
    private double largo;

    // Constructores
    public Edificio() {
    }

    public Edificio(double ancho, double alto, double largo) {
        this.ancho = ancho;
        this.alto = alto;
        this.largo = largo;
    }

    // Getters y setters
    public double getAncho() {
        return ancho;
    }

    public void setAncho(double ancho) {
        this.ancho = ancho;
    }

    public double getAlto() {
        return alto;
    }

    public void setAlto(double alto) {
        this.alto = alto;
    }

    public double getLargo() {
        return largo;
    }

    public void setLargo(double largo) {
        this.largo = largo;
    }

    @Override
    public String toString() {
        return "Edificio{" + "ancho=" + ancho + ", alto=" + alto + ", largo=" + largo + '}';
    }

    // Métodos abstractos pedidos
    public abstract double calcularSuperficie();

    public abstract double calcularVolumen();

}
