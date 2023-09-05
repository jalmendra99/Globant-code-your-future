/*
Java - Herencia - Ejercicios de Aprendizaje.
Ejercicio 3 - Página 15

Fer V - Jalmendra99@gmail.com

 */
package Ej3Electrodomestico2.entidades;

import java.util.Scanner;

public class Televisor extends Electrodomestico {

    // Atributos
    private int resolucion;
    private boolean sintonizadorTDT;

    // Constructores
    public Televisor() {
    }

    public Televisor(int resolucion, boolean sintonizadorTDT, double precio, String color, char consumoEnergetico, double peso) {
        super(precio, color, consumoEnergetico, peso);
        this.resolucion = resolucion;
        this.sintonizadorTDT = sintonizadorTDT;
        super.setPrecio(precioFinal());
    }

    // Getters y setters
    public int getResolucion() {
        return resolucion;
    }

    public void setResolucion(int resolucion) {
        this.resolucion = resolucion;
    }

    public boolean isSintonizadorTDT() {
        return sintonizadorTDT;
    }

    public void setSintonizadorTDT(boolean sintonizadorTDT) {
        this.sintonizadorTDT = sintonizadorTDT;
    }

    // Métodos
    public void crearTelevisor() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        char siNo;

        super.crearElectrodomestico();

        System.out.println("Creando un televisor..");
        System.out.print("Ingrese la resolución (pulgadas): ");
        this.resolucion = leer.nextInt();

        do {
            System.out.print("¿Tiene sintonizador TDT? (s/n): ");
            siNo = leer.next().toUpperCase().charAt(0);

            if (siNo == 'S') {
                this.sintonizadorTDT = true;
            } else if (siNo == 'N') {
                this.sintonizadorTDT = false;
            } else {
                System.out.println("Por favor responda S o N..");
            }
        } while (siNo != 'S' && siNo != 'N');

        super.setPrecio(precioFinal());

    }

    private double precioFinal() {
        double precio = super.getPrecio();

        if (this.resolucion >= 40) {
            precio *= 1.3;
        }

        if (this.sintonizadorTDT) {
            precio += 500;
        }

        return precio;
    }

    @Override
    public String toString() {
        return " Televisor{ " + super.toString() + " resolucion=" + resolucion + ", sintonizadorTDT=" + sintonizadorTDT + '}';
    }

}
