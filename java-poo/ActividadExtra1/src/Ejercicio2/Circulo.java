/*
Java-POO - Actividad extra 1.
Ejercicio 2 - Página 3

Fer V - Jalmendra99@gmail.com

 */
package Ejercicio2;

public class Circulo {

    // Atributos
    private double radio;

    // Constructores
    public Circulo() {
    }

    public Circulo(double radio) {
        this.radio = radio;
    }

    // Getters y setters
    public double getRadio() {
        return radio;
    }

    public void setRadio(double radio) {
        this.radio = radio;
    }

    // Métodos
    public double area() {
        return Math.PI * radio * radio;
    }

    public double perimetro() {
        return circunferencia();
    }

    public double circunferencia() {
        return 2 * Math.PI * radio;
    }

}
