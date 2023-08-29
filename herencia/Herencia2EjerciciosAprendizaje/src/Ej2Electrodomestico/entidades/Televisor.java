/*
Java - Herencia - Ejercicios de Aprendizaje.
Ejercicio 2 - Página 13

Fer V - Jalmendra99@gmail.com

 */
package Ej2Electrodomestico.entidades;

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
    public Televisor crearTelevisor() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        char siNo;

        Televisor tele = new Televisor();

        tele = (Televisor) super.crearElectrodomestico();

        System.out.print("Ingrese la resolución (pulgadas): ");
        tele.resolucion = leer.nextInt();

        do {
            System.out.print("¿Tiene sintonizador TDT? (s/n): ");
            siNo = leer.next().toUpperCase().charAt(0);

            if (siNo == 'S') {
                tele.sintonizadorTDT = true;
            } else if (siNo == 'N') {
                tele.sintonizadorTDT = false;
            } else {
                System.out.println("Por favor responda S o N..");
            }
        } while (siNo != 'S' && siNo != 'N');

        super.setPrecio(precioFinal());

        return tele;
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
        return super.toString() + " Televisor{" + "resolucion=" + resolucion + ", sintonizadorTDT=" + sintonizadorTDT + '}';
    }
    
    
}
