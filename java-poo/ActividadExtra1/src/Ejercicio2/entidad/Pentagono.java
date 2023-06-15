/*
Java-POO - Actividad extra 1.
Ejercicio 2 - Página 3

Fer V - Jalmendra99@gmail.com

--
Info: https://tutors.com/lesson/how-to-find-the-area-of-a-pentagon
Se asume que el pentágono es regular.
(calcular para un irregular sería más complejo).


 */
package Ejercicio2.entidad;

public class Pentagono {

    // Atributos
    private double lado;
    private double apotema;

    // Constructores
    public Pentagono() {
    }

    public Pentagono(double lado) {
        this.lado = lado;
        calcularApotema();
    }

    // Getters y setters
    // No hay setter del apotema porque se calcula con el constructor
    // y/o con el setter del lado.
    public double getLado() {
        return lado;
    }

    public void setLado(double lado) {
        this.lado = lado;
        calcularApotema();
    }

    public double getApotema() {
        return apotema;
    }

    // Métodos
    public double area() {
        return (apotema * lado * 5 / 2);
    }

    public double perimetro() {
        return (lado * 5);
    }

    // Agregado
    private void calcularApotema() {
        this.apotema = ((lado / 2) / Math.tan(Math.toRadians(36)));
    }
}
