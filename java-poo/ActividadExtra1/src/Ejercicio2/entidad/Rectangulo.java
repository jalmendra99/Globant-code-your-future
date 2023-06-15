/*
Java-POO - Actividad extra 1.
Ejercicio 2 - Página 3

Fer V - Jalmendra99@gmail.com

 */
package Ejercicio2.entidad;

public class Rectangulo {

    // Atributos
    private double lado1;
    private double lado2;

    // Constructores
    public Rectangulo() {
    }

    public Rectangulo(double lado1, double lado2) {
        this.lado1 = lado1;
        this.lado2 = lado2;
    }

    // Getters y setters
    public double getLado1() {
        return lado1;
    }

    public void setLado1(double lado1) {
        this.lado1 = lado1;
    }

    public double getLado2() {
        return lado2;
    }

    public void setLado2(double lado2) {
        this.lado2 = lado2;
    }

    // Métodos
    public double area() {
        return lado1 * lado2;
    }

    public double perimetro() {
        return (lado1 * 2) + (lado2 * 2);
    }

}
