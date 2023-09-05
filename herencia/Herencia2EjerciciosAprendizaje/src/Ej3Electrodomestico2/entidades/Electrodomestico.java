/*
Java - Herencia - Ejercicios de Aprendizaje.
Ejercicio 3 - Página 15

Fer V - Jalmendra99@gmail.com

 */
package Ej3Electrodomestico2.entidades;

import java.util.Scanner;

public class Electrodomestico {

    // Atributos
    private double precio;
    private String color;
    private char consumoEnergetico; // Letras entre A y F. Usar ConsumoEnum.
    private double peso;

    // Constructores
    public Electrodomestico() {
    }

    public Electrodomestico(double precio, String color, char consumoEnergetico, double peso) {
        this.consumoEnergetico = comprobarConsumoEnergetico(consumoEnergetico);
        this.peso = peso;
        this.precio = precio + precioFinal();
        this.color = comprobarColor(color);
    }

    // Getters y setters
    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getColor() {
        return color;
    }

    /* modificado para utilizar la función comprobarColor */
    public void setColor(String color) {
        this.color = comprobarColor(color);
    }

    public char getConsumoEnergetico() {
        return consumoEnergetico;
    }

    /* modificado para utilizar la función comprobarConsumoEnergetico */
    public void setConsumoEnergetico(char consumoEnergetico) {
        this.consumoEnergetico = comprobarConsumoEnergetico(consumoEnergetico);
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    // Métodos
    private char comprobarConsumoEnergetico(char letra) {
        char resultado;
        switch (String.valueOf(letra).toUpperCase()) {
            case "A":
                resultado = 'A';
                break;
            case "B":
                resultado = 'B';
                break;
            case "C":
                resultado = 'C';
                break;
            case "D":
                resultado = 'D';
                break;
            case "E":
                resultado = 'E';
                break;
            default:
                resultado = 'F';
                break;
        }
        return resultado;
    }

    private String comprobarColor(String color) {
        String resultado;
        switch (color.toUpperCase()) {
            case "NEGRO":
            case "ROJO":
            case "AZUL":
            case "GRIS":
                resultado = color;
                break;
            default:
                resultado = "Blanco";
                break;
        }
        return resultado;
    }

    public void crearElectrodomestico() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        System.out.println("\nCreando un electrodoméstico..");

        System.out.print("Ingrese el color (Negro, Rojo, Azul, Gris, por defecto: Blanco): ");
        this.color = comprobarColor(leer.next());

        System.out.print("Ingrese el consumoEnergetico (A, B, C, D, E, por defecto: F): ");
        this.consumoEnergetico = comprobarConsumoEnergetico(leer.next().charAt(0));

        System.out.print("Ingrese el peso (entre 1 y 100 aprox): ");
        this.peso = leer.nextDouble();

        this.precio = precioFinal();

    }

    private double precioFinal() {
        double precio = 1000;

        switch (String.valueOf(this.consumoEnergetico).toUpperCase()) {
            case "A":
                precio = 1000;
                break;
            case "B":
                precio = 800;
                break;
            case "C":
                precio = 600;
                break;
            case "D":
                precio = 500;
                break;
            case "E":
                precio = 300;
                break;
            case "F":
                precio = 100;
                break;
            default:
                System.out.println("Valor de consumo energético incorrecto: " + this.consumoEnergetico);
        }

        if (this.peso < 1) {
            System.out.println("\nError: Peso negativo.");
        } else if (this.peso >= 1 && this.peso < 20) {
            precio += 100;
        } else if (this.peso >= 20 && this.peso < 50) {
            precio += 500;
        } else if (this.peso >= 50 && this.peso < 80) {
            precio += 800;
        } else { // this.peso > 80;
            precio += 1000;
        }

        return precio;
    }

    @Override
    public String toString() {
        return "Electrodomestico{" + "precio=" + precio + ", color=" + color + ", consumoEnergetico=" + consumoEnergetico + ", peso=" + peso + '}';
    }

}
