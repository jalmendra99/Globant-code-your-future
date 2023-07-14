/*
Java-POO - Actividad extra 2.

Fer V - Jalmendra99@gmail.com

 */
package Ejercicio1.entidad;

import java.time.LocalDate;

public class Alquiler {

    // Atributos
    private Pelicula peliAlquilada;
    private LocalDate fechaDeInicio;
    private LocalDate fechaDeFin;
    private double precio;

    // Constructores
    public Alquiler() {
    }

    public Alquiler(Pelicula peliAlquilada, LocalDate fechaDeInicio, LocalDate fechaDeFin) {
        this.peliAlquilada = peliAlquilada;
        this.fechaDeInicio = fechaDeInicio;
        this.fechaDeFin = fechaDeFin;
    }

    // Getters y setters
    public Pelicula getPeliAlquilada() {
        return peliAlquilada;
    }

    public void setPeliAlquilada(Pelicula peliAlquilada) {
        this.peliAlquilada = peliAlquilada;
    }

    public LocalDate getFechaDeInicio() {
        return fechaDeInicio;
    }

    public void setFechaDeInicio(LocalDate fechaDeInicio) {
        this.fechaDeInicio = fechaDeInicio;
    }

    public LocalDate getFechaDeFin() {
        return fechaDeFin;
    }

    public void setFechaDeFin(LocalDate fechaDeFin) {
        this.fechaDeFin = fechaDeFin;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    @Override
    public String toString() {
        return "Alquiler{" + "peliAlquilada=" + peliAlquilada + ", fechaDeInicio=" + fechaDeInicio + ", fechaDeFin=" + fechaDeFin + ", precio=" + precio + '}';
    }

}
