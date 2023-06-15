/*
Java-POO - Actividad extra 1.
Ejercicio 2 - Página 3

Fer V - Jalmendra99@gmail.com

--
Info: https://www.wikihow.com/Calculate-the-Area-of-a-Rhombus

 */
package Ejercicio2.entidad;

import java.util.Scanner;

public class Rombo {

    // Atributos
    private double lado;
    private double angulo;

    // Constructores
    public Rombo() {
    }

    // Getters y setters
    // No hay setter de ángulo porque se le solicita al usuario y valida usando otra función
    // que se ejecuta en el constructor.
    public double getLado() {
        return lado;
    }

    public void setLado(double lado) {
        this.lado = lado;
    }

    public double getAngulo() {
        return angulo;
    }

    // Métodos
    public double area() {
        return lado * lado * Math.sin(Math.toRadians(angulo));
    }

    public double perimetro() {
        return lado * 4;
    }

    // Agregado
    public void inicializarRombo() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        // Se ingresa la medida del lado
        System.out.print("Ingrese el lado en cm: ");
        lado = leer.nextDouble();

        // Se ingresa el tamaño en grados del ángulo y se valida que sea mayor a 0° y menor que 180°. 
        angulo = 0;
        while (angulo <= 0 || angulo >= 180) {
            System.out.print("Ingrese el valor en grados de cualquier ángulo del rombo (<180° y >0): ");
            angulo = leer.nextDouble();

            if (angulo <= 0 || angulo >= 180) {
                System.out.println("El ángulo ingresado es incorrecto. Ingrese un ángulo mayor a 0° y menor que 180°");
            }
        }

    }

}
