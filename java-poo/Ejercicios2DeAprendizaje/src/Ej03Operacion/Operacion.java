/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 3 - Página 27

Fer V - Jalmendra99@gmail.com

 */
package Ej03Operacion;

import java.util.Scanner;

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

    public void setNumero1(int numero1) {
        this.numero1 = numero1;
    }

    public double getNumero2() {
        return numero2;
    }

    public void setNumero2(int numero2) {
        this.numero2 = numero2;
    }

    // Métodos
    public void crearOperacion() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        System.out.println("Ingrese el número1");
        numero1 = leer.nextInt();
        System.out.println("Ingrese el número2");
        numero2 = leer.nextInt();
    }

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
