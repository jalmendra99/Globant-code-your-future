/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 4 - Página 28

Fer V - Jalmendra99@gmail.com

 */
package Ej04Rectangulo;

import java.util.Scanner;

public class Rectangulo {

    // Atributos
    private int base;
    private int altura;

    // Constructores
    public Rectangulo(int base, int altura) {
        this.base = base;
        this.altura = altura;
    }

    // Getters y Setters
    public int getBase() {
        return base;
    }

    public void setBase(int base) {
        this.base = base;
    }

    public int getAltura() {
        return altura;
    }

    public void setAltura(int altura) {
        this.altura = altura;
    }
    
    // Métodos
    
    public void crearRectangulo() {
        Scanner leer = new Scanner(System.in);
        System.out.print("Ingrese la base del rectángulo: ");
        base = leer.nextInt();
        System.out.print("Ingrese la altura del rectángulo: ");
        altura = leer.nextInt();
    }
    
    public int superficie() {
        return base * altura;
    }

    public int perimetro() {
        return (base + altura) * 2;
    }

    public void dibujaRectangulo() {
        for (int i = 0; i < altura; i++) {
            for (int j = 0; j < base; j++) {
                if (i == 0 || i == altura || j == 0 || j == base) {
                    System.out.println("*");
                } else {
                    System.out.print(" ");
                }
            }
            System.out.println("");
        }
    }
}
