/*
Java-POO - Actividad extra 1.
Ejercicio 2 - Página 3

Fer V - Jalmendra99@gmail.com

 */
package Ejercicio2.entidad;

public class Cuadrado {

    // Atributos
    private double lado;

    // Constructores
    public Cuadrado() {
    }

    public Cuadrado(double lado) {
        this.lado = lado;
    }

    // Getters y setters
    public double getLado() {
        return lado;
    }

    public void setLado(double lado) {
        this.lado = lado;
    }

    // Métodos
    public double area() {
        return lado * lado;
    }

    public double perimetro() {
        return lado * 4;
    }

}
