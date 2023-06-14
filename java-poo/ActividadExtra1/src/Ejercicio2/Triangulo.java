/*
Java-POO - Actividad extra 1.
Ejercicio 2 - Página 3

--
Info: https://es.calcuworld.com/calculadoras-matematicas/hipotenusa/


Fer V - Jalmendra99@gmail.com

 */
package Ejercicio2;

public class Triangulo {

    // Atributos
    private double cateto1 = 0;
    private double cateto2 = 0;
    private double hipotenusa = 0;

    // Constructores
    public Triangulo() {
    }

    public Triangulo(double cateto1, double cateto2) {
        this.cateto1 = cateto1;
        this.cateto2 = cateto2;

        // Pitágoras: el cuadrado de la hipotenusa es igual a la suma del cuadrado de los catetos.
        calcularHipotenusa();
    }

    // Getters y setters
    // No hay setter de hipotenusa, porque la misma se calcula 
    // con el constructor del Triángulo y/o con los setters de cateto1 y cateto2.
    public double getCateto1() {
        return cateto1;
    }

    public void setCateto1(double cateto1) {
        this.cateto1 = cateto1;
        if (cateto2 != 0 && hipotenusa == 0) {
            calcularHipotenusa();
        }
    }

    public double getCateto2() {
        return cateto2;
    }

    public void setCateto2(double cateto2) {
        this.cateto2 = cateto2;
        if (cateto1 != 0 && hipotenusa == 0) {
            calcularHipotenusa();
        }
    }

    public double getHipotenusa() {
        return hipotenusa;
    }

    // Métodos
    public double area() {
        return cateto1 * cateto2 / 2;
    }

    public double perimetro() {
        return cateto1 + cateto2 + hipotenusa;
    }

    // Agregado
    private void calcularHipotenusa() {
        this.hipotenusa = Math.sqrt(Math.pow(cateto1, 2) + Math.pow(cateto2, 2));
    }

}
