/*
Java - Herencia - Ejercicios de Aprendizaje extra.
Ejercicio 3 - Página 17

Fer V - Jalmendra99@gmail.com

 */
package Ej3Turismo.entidades;

public class Hotel4Estrellas extends Alojamiento{

    // Atributos
    
    private int cantHabitaciones;
    private int nroCamas;
    private int cantPisos;
    private GimnasioEnum gimnasio;
    private String nombreRestaurante;
    private int capacidadRestaurante;
    private double precioHabitacion;
    
    // Constructor

    public Hotel4Estrellas() {
    }

    public Hotel4Estrellas(int cantHabitaciones, int nroCamas, int cantPisos, GimnasioEnum gimnasio, String nombreRestaurante, int capacidadRestaurante, double precioHabitacion, String nombre, String direccion, String localidad, String gerente) {
        super(nombre, direccion, localidad, gerente);
        this.cantHabitaciones = cantHabitaciones;
        this.nroCamas = nroCamas;
        this.cantPisos = cantPisos;
        this.gimnasio = gimnasio;
        this.nombreRestaurante = nombreRestaurante;
        this.capacidadRestaurante = capacidadRestaurante;
        this.precioHabitacion = precioHabitacion;
    }
    
    // Getters y setters 

    public int getCantHabitaciones() {
        return cantHabitaciones;
    }

    public void setCantHabitaciones(int cantHabitaciones) {
        this.cantHabitaciones = cantHabitaciones;
    }

    public int getNroCamas() {
        return nroCamas;
    }

    public void setNroCamas(int nroCamas) {
        this.nroCamas = nroCamas;
    }

    public int getCantPisos() {
        return cantPisos;
    }

    public void setCantPisos(int cantPisos) {
        this.cantPisos = cantPisos;
    }

    public GimnasioEnum getGimnasio() {
        return gimnasio;
    }

    public void setGimnasio(GimnasioEnum gimnasio) {
        this.gimnasio = gimnasio;
    }

    public String getNombreRestaurante() {
        return nombreRestaurante;
    }

    public void setNombreRestaurante(String nombreRestaurante) {
        this.nombreRestaurante = nombreRestaurante;
    }

    public int getCapacidadRestaurante() {
        return capacidadRestaurante;
    }

    public void setCapacidadRestaurante(int capacidadRestaurante) {
        this.capacidadRestaurante = capacidadRestaurante;
    }

    public double getPrecioHabitacion() {
        return precioHabitacion;
    }

    public void setPrecioHabitacion(double precioHabitacion) {
        this.precioHabitacion = precioHabitacion;
    }

    @Override
    public String toString() {
        return super.toString() + " Hotel4Estrellas{" + "cantHabitaciones=" + cantHabitaciones + ", nroCamas=" + nroCamas + ", cantPisos=" + cantPisos + ", gimnasio=" + gimnasio + ", nombreRestaurante=" + nombreRestaurante + ", capacidadRestaurante=" + capacidadRestaurante + ", precioHabitacion=" + precioHabitacion + '}';
    }
    
    // Método calcular precio
    
    public double calcularPrecioHabitacion() {
        double precio = 0;
        
        precio += 50;
        precio += (1 * this.nroCamas) ;
        
        if (this.capacidadRestaurante < 30) {
            precio += 10;
        } else if (this.capacidadRestaurante >= 30 && this.capacidadRestaurante <= 50) {
            precio += 30;
        } else { // this.capacidadRestaurante > 50
            precio += 50;
        }
        
        if (this.gimnasio == GimnasioEnum.A) {
            precio += 50;
        } else { // this.gimnasio == GimnasioEnum.B
            precio += 30;
        }
        
        return precio;
        
    }
}
