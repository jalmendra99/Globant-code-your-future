/*
Java - Herencia - Ejercicios de Aprendizaje extra.
Ejercicio 3 - Página 17

Fer V - Jalmendra99@gmail.com

 */
package Ej3Turismo.entidades;

public class Camping extends Extra {
    
    // Atributos

    private int capacidadMaxCarpas;
    private int cantBaniosDisponibles;
    private boolean restaurante;
    
    // Constructores

    public Camping() {
    }

    public Camping(int capacidadMaxCarpas, int cantBaniosDisponibles, boolean restaurante, boolean privado, double cantMetrosCuadrados, String nombre, String direccion, String localidad, String gerente) {
        super(privado, cantMetrosCuadrados, nombre, direccion, localidad, gerente);
        this.capacidadMaxCarpas = capacidadMaxCarpas;
        this.cantBaniosDisponibles = cantBaniosDisponibles;
        this.restaurante = restaurante;
    }
    
    // Getters y setters

    public int getCapacidadMaxCarpas() {
        return capacidadMaxCarpas;
    }

    public void setCapacidadMaxCarpas(int capacidadMaxCarpas) {
        this.capacidadMaxCarpas = capacidadMaxCarpas;
    }

    public int getCantBaniosDisponibles() {
        return cantBaniosDisponibles;
    }

    public void setCantBaniosDisponibles(int cantBaniosDisponibles) {
        this.cantBaniosDisponibles = cantBaniosDisponibles;
    }

    public boolean isRestaurante() {
        return restaurante;
    }

    public void setRestaurante(boolean restaurante) {
        this.restaurante = restaurante;
    }

    @Override
    public String toString() {
        return super.toString() + " Camping{" + "capacidadMaxCarpas=" + capacidadMaxCarpas + ", cantBaniosDisponibles=" + cantBaniosDisponibles + ", restaurante=" + restaurante + '}';
    }
    
}
