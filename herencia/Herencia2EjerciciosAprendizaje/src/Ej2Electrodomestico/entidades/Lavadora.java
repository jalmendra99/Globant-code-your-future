/*
Java - Herencia - Ejercicios de Aprendizaje.
Ejercicio 2 - Página 13

Fer V - Jalmendra99@gmail.com

 */
package Ej2Electrodomestico.entidades;

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
    }

    // Getters y setters
    
    public double getCarga() {
        return carga;
    }

    public void setCarga(double carga) {
        this.carga = carga;
    }

    // Métodos
    
    public Lavadora crearLavadora() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        
        Lavadora lava = new Lavadora();
        
        lava = (Lavadora) super.crearElectrodomestico();

        System.out.print("Ingrese el tamaño de la carga (kg): ");
        lava.carga = leer.nextDouble();
        
        super.setPrecio(precioFinal());
        
        return lava;
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
        return super.toString() + " Lavadora{" + "carga=" + carga + '}';
    }

    
    

}
