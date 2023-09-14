/*
Java - Herencia - Ejercicios de Aprendizaje extra.
Ejercicio 3 - Página 17

Fer V - Jalmendra99@gmail.com

 */
package Ej3Turismo.entidades;

public class Residencia extends Extra {
    
    // Atributos
    
    private int cantHabitaciones;
    private boolean descuentoAGremios;
    private boolean campoDeportivo;

    // Constructores

    public Residencia() {
    }

    public Residencia(int cantHabitaciones, boolean descuentoAGremios, boolean campoDeportivo, boolean privado, double cantMetrosCuadrados, String nombre, String direccion, String localidad, String gerente) {
        super(privado, cantMetrosCuadrados, nombre, direccion, localidad, gerente);
        this.cantHabitaciones = cantHabitaciones;
        this.descuentoAGremios = descuentoAGremios;
        this.campoDeportivo = campoDeportivo;
    }
    
    // Getters y setters

    public int getCantHabitaciones() {
        return cantHabitaciones;
    }

    public void setCantHabitaciones(int cantHabitaciones) {
        this.cantHabitaciones = cantHabitaciones;
    }

    public boolean isDescuentoAGremios() {
        return descuentoAGremios;
    }

    public void setDescuentoAGremios(boolean descuentoAGremios) {
        this.descuentoAGremios = descuentoAGremios;
    }

    public boolean isCampoDeportivo() {
        return campoDeportivo;
    }

    public void setCampoDeportivo(boolean campoDeportivo) {
        this.campoDeportivo = campoDeportivo;
    }

    @Override
    public String toString() {
        return super.toString() + " Residencia{" + "cantHabitaciones=" + cantHabitaciones + ", descuentoAGremios=" + descuentoAGremios + ", campoDeportivo=" + campoDeportivo + '}';
    }
    
}
