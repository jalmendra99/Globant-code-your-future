/*
Java - Herencia - Ejercicios de Aprendizaje extra.
Ejercicio 3 - Página 17

Fer V - Jalmendra99@gmail.com

 */
package Ej3Turismo.entidades;

public abstract class Extra extends Alojamiento {

    // Atributos
    private boolean privado;
    private double cantMetrosCuadrados;

    // Constructores
    public Extra() {
    }

    public Extra(boolean privado, double cantMetrosCuadrados, String nombre, String direccion, String localidad, String gerente) {
        super(nombre, direccion, localidad, gerente);
        this.privado = privado;
        this.cantMetrosCuadrados = cantMetrosCuadrados;
    }

    // Getters y setters
    public boolean isPrivado() {
        return privado;
    }

    public void setPrivado(boolean privado) {
        this.privado = privado;
    }

    public double getCantMetrosCuadrados() {
        return cantMetrosCuadrados;
    }

    public void setCantMetrosCuadrados(double cantMetrosCuadrados) {
        this.cantMetrosCuadrados = cantMetrosCuadrados;
    }

    @Override
    public String toString() {
        return super.toString() + " Extra{" + "privado=" + privado + ", cantMetrosCuadrados=" + cantMetrosCuadrados + '}';
    }

}
