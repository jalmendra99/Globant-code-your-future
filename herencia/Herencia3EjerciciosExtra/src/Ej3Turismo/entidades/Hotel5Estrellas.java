/*
Java - Herencia - Ejercicios de Aprendizaje extra.
Ejercicio 3 - Página 17

Fer V - Jalmendra99@gmail.com

 */
package Ej3Turismo.entidades;

public class Hotel5Estrellas extends Hotel4Estrellas {

    // Atributos
    private int cantSalonesConferencia;
    private int cantSuites;
    private int cantLimosinas;

    // Constructores
    public Hotel5Estrellas() {
    }

    public Hotel5Estrellas(int cantSalonesConferencia, int cantSuites, int cantLimosinas, int cantHabitaciones, int nroCamas, int cantPisos, GimnasioEnum gimnasio, String nombreRestaurante, int capacidadRestaurante, double precioHabitacion, String nombre, String direccion, String localidad, String gerente) {
        super(cantHabitaciones, nroCamas, cantPisos, gimnasio, nombreRestaurante, capacidadRestaurante, precioHabitacion, nombre, direccion, localidad, gerente);
        this.cantSalonesConferencia = cantSalonesConferencia;
        this.cantSuites = cantSuites;
        this.cantLimosinas = cantLimosinas;
    }

    // Getters y setters
    public int getCantSalonesConferencia() {
        return cantSalonesConferencia;
    }

    public void setCantSalonesConferencia(int cantSalonesConferencia) {
        this.cantSalonesConferencia = cantSalonesConferencia;
    }

    public int getCantSuites() {
        return cantSuites;
    }

    public void setCantSuites(int cantSuites) {
        this.cantSuites = cantSuites;
    }

    public int getCantLimosinas() {
        return cantLimosinas;
    }

    public void setCantLimosinas(int cantLimosinas) {
        this.cantLimosinas = cantLimosinas;
    }

    @Override
    public String toString() {
        return super.toString() + " Hotel5Estrellas{" + "cantSalonesConferencia=" + cantSalonesConferencia + ", cantSuites=" + cantSuites + ", cantLimosinas=" + cantLimosinas + '}';
    }

    // Métodos
    public double calcularPrecioHabitacion() {
        return super.calcularPrecioHabitacion() + (15 * this.cantLimosinas);
    }

}
