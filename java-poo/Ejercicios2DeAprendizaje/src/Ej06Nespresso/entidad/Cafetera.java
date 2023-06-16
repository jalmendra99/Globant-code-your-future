/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 6 - Página 28

Fer V - Jalmendra99@gmail.com

 */
package Ej06Nespresso.entidad;

public class Cafetera {

    // Atributos
    private int capacidadMaxima;
    private int cantidadActual;

    // Constructores
    public Cafetera() {
    }

    public Cafetera(int capacidadMaxima, int cantidadActual) {
        this.capacidadMaxima = capacidadMaxima;
        this.cantidadActual = cantidadActual;
    }

    // Getters y setters
    public int getCapacidadMaxima() {
        return capacidadMaxima;
    }

    public void setCapacidadMaxima(int capacidadMaxima) {
        this.capacidadMaxima = capacidadMaxima;
    }

    public int getCantidadActual() {
        return cantidadActual;
    }

    public void setCantidadActual(int cantidadActual) {
        this.cantidadActual = cantidadActual;
    }

    // Métodos
    public void llenarCafetera() {
        cantidadActual = capacidadMaxima;
    }

    public void servirTaza(int tamanioTazaVacia) {

        if (tamanioTazaVacia > cantidadActual) {
            cantidadActual = 0;
            System.out.println("La taza no está llena, solo tiene " + cantidadActual);
        } else {
            cantidadActual -= tamanioTazaVacia;
            System.out.println("La taza está llena. Contiene " + tamanioTazaVacia);
        }
    }

    public void vaciarCafetera() {
        cantidadActual = 0;
    }

    public void agregarCafe(int cantidad) {
        cantidadActual += cantidad;
    }

}
