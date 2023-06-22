/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 2 - Página 27

Fer V - Jalmendra99@gmail.com

 */
package Ej02Circunferencia.entidad;

import java.util.Scanner;

public class Circunferencia {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    // Atributos
    private double radio;
    private double area;
    private double perimetro;

    // Constructores
    public Circunferencia() {
    }

    public Circunferencia(double radio) {
        this.radio = radio;
        Area();
        Perimetro();
    }

    // Getters y Setters
    // No hay setters de area y perímetro porque se calculan automáticamente
    // en el constructor y/o en el setter de radio.
    public double getRadio() {
        return radio;
    }

    public void setRadio(double radio) {
        this.radio = radio;
        Area();
        Perimetro();
    }

    public double getArea() {
        return area;
    }

    public double getPerimetro() {
        return perimetro;
    }

    // Métodos
    private void Area() {
        area = Math.PI * radio * radio;
    }

    private void Perimetro() {
        perimetro = 2 * Math.PI * radio;
    }
}
