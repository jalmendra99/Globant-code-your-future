/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 4 - Página 28

Fer V - Jalmendra99@gmail.com

 */
package Ej04Rectangulo.entidad;

public class Rectangulo {

    // Atributos
    private double base;
    private double altura;
    private double superficie;
    private double perimetro;

    // Constructores    
    public Rectangulo() {
    }

    public Rectangulo(int base, int altura) {
        this.base = base;
        this.altura = altura;
    }

    // Getters y Setters
    // No hay setter de superficie ni perímetro porque se calculan automáticamente
    // en el constructor y/o en el setter de base / altura.
    public double getBase() {
        return base;
    }

    public void setBase(double base) {
        this.base = base;
        if (altura != 0) {
            superficie();
            perimetro();
        }
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
        if (base != 0) {
            superficie();
            perimetro();
        }
    }

    public double getSuperficie() {
        return superficie;
    }

    public double getPerimetro() {
        return perimetro;
    }

    // Métodos
    private void superficie() {
        superficie = base * altura;
    }

    private void perimetro() {
        perimetro = (base + altura) * 2;
    }

}
