/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 4 - Página 28

Fer V - Jalmendra99@gmail.com

 */
package Ej04Rectangulo;

import java.util.Scanner;

public class Rectangulo {

    // Atributos
    private double base;
    private double altura;

    // Constructores    
    public Rectangulo() {
    }

    public Rectangulo(int base, int altura) {
        this.base = base;
        this.altura = altura;
    }

    // Getters y Setters
    public double getBase() {
        return base;
    }

    public void setBase(int base) {
        this.base = base;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(int altura) {
        this.altura = altura;
    }

    // Métodos
    public void crearRectangulo() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        System.out.print("Ingrese la base del rectángulo en metros: ");
        base = leer.nextInt();
        System.out.print("Ingrese la altura del rectángulo en metros: ");
        altura = leer.nextInt();
    }

    public double superficie() {
        return base * altura;
    }

    public double perimetro() {
        return (base + altura) * 2;
    }

    public void dibujaRectangulo() {
        for (int i = 0; i < altura; i++) {
            for (int j = 0; j < base; j++) {
                if (i == 0 || i == (altura - 1) || j == 0 || j == (base - 1)) {
                    System.out.print("*");
                } else {
                    System.out.print(" ");
                }
            }
            System.out.println("");
        }
    }
}
