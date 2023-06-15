/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 3 - Página 27

Fer V - Jalmendra99@gmail.com

 */
package Ej03Operacion.entidad;

public class Operacion {

    // Atributos
    private double numero1;
    private double numero2;

    // Constructores
    public Operacion() {
    }

    public Operacion(int numero1, int numero2) {
        this.numero1 = numero1;
        this.numero2 = numero2;
    }

    // Getters y Setters
    public double getNumero1() {
        return numero1;
    }

    public void setNumero1(double numero1) {
        this.numero1 = numero1;
    }

    public double getNumero2() {
        return numero2;
    }

    public void setNumero2(double numero2) {
        this.numero2 = numero2;
    }

    // Métodos
    public double sumar() {
        return numero1 + numero2;
    }

    public double restar() {
        return numero1 - numero2;
    }

    public double multiplicar() {
        if (numero1 != 0 && numero2 != 0) {
            return numero1 * numero2;
        } else {
            System.out.println("Multiplicar por cero resulta en cero.");
            return 0;
        }
    }

    public double dividir() {
        if (numero2 != 0) {
            return numero1 / numero2;
        } else {
            System.out.println("No se puede dividir por cero.");
            return 0;
        }
    }

}
