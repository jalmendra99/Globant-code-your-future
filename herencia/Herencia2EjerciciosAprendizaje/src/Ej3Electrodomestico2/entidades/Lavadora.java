/*
Java - Herencia - Ejercicios de Aprendizaje.
Ejercicio 3 - Página 15

Fer V - Jalmendra99@gmail.com

 */
package Ej3Electrodomestico2.entidades;

import java.util.Scanner;

public class Lavadora extends Electrodomestico {

    // Atributos
    private double carga;

    // Constructores
    public Lavadora() {
    }

    public Lavadora(double carga, double precio, String color, char consumoEnergetico, double peso) {
        super(precio, color, consumoEnergetico, peso);
        this.carga = carga;
        super.setPrecio(precioFinal());
    }

    // Getters y setters
    public double getCarga() {
        return carga;
    }

    public void setCarga(double carga) {
        this.carga = carga;
    }

    // Métodos
    public void crearLavadora() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        super.crearElectrodomestico();

        System.out.println("Creando una lavadora..");
        System.out.print("Ingrese el tamaño de la carga (kg): ");
        this.carga = leer.nextDouble();

        super.setPrecio(precioFinal());

    }

    private double precioFinal() {
        double precio = super.getPrecio();

        if (this.carga > 30) {
            precio += 500;
        }

        return precio;
    }

    @Override
    public String toString() {
        return " Lavadora{ " + super.toString() + " carga=" + carga + '}';
    }

}
