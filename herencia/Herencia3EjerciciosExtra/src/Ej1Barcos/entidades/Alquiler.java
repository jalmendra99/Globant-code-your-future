/*
Java - Herencia - Ejercicios de Aprendizaje extra.
Ejercicio 1 - Página 16

Fer V - Jalmendra99@gmail.com

 */
package Ej1Barcos.entidades;

import java.time.*;
import java.time.temporal.ChronoUnit;

public class Alquiler {

    // Atributos
    private String nombre;
    private String documento;
    private LocalDate fechaAlquiler;
    private LocalDate fechaDevolucion;
    private String posicionAmarre;
    private Barco barcoAlquilado;
    
    // Constructores

    public Alquiler() {
    }

    public Alquiler(String nombre, String documento, LocalDate fechaAlquiler, LocalDate fechaDevolucion, String posicionAmarre, Barco barcoAlquilado) {
        this.nombre = nombre;
        this.documento = documento;
        this.fechaAlquiler = fechaAlquiler;
        this.fechaDevolucion = fechaDevolucion;
        this.posicionAmarre = posicionAmarre;
        this.barcoAlquilado = barcoAlquilado;
    }
    
    // Getters y setters

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public LocalDate getFechaAlquiler() {
        return fechaAlquiler;
    }

    public void setFechaAlquiler(LocalDate fechaAlquiler) {
        this.fechaAlquiler = fechaAlquiler;
    }

    public LocalDate getFechaDevolucion() {
        return fechaDevolucion;
    }

    public void setFechaDevolucion(LocalDate fechaDevolucion) {
        this.fechaDevolucion = fechaDevolucion;
    }

    public String getPosicionAmarre() {
        return posicionAmarre;
    }

    public void setPosicionAmarre(String posicionAmarre) {
        this.posicionAmarre = posicionAmarre;
    }

    public Barco getBarcoAlquilado() {
        return barcoAlquilado;
    }

    public void setBarcoAlquilado(Barco barcoAlquilado) {
        this.barcoAlquilado = barcoAlquilado;
    }

    // Método para calcular el precio del alquiler
    public double calcularPrecioAlquiler() {
        
        long diasAlquilado = ChronoUnit.DAYS.between(fechaAlquiler, fechaDevolucion);
        double precio = this.barcoAlquilado.getEslora();
        
        if (this.barcoAlquilado instanceof Velero) {
            Velero ve = (Velero) this.barcoAlquilado;
            precio += ve.getNroMastiles();
        } else if (this.barcoAlquilado instanceof Motorizado) {
            Motorizado mo = (Motorizado) this.barcoAlquilado;
            precio += mo.getPotenciaEnCV();
        } else if (this.barcoAlquilado instanceof Yate) {
            Yate ya = (Yate) this.barcoAlquilado;
            precio += ya.getPotenciaEnCV() + ya.getNroCamarotes();
        }
        
        return precio * 10 * diasAlquilado;
    }
    
    // Método para crear un alquiler solicitando los datos al usuario..
    public void Alquilar(Barco ba) {
        
    }
    
    @Override
    public String toString() {
        return "Alquiler{" + "nombre=" + nombre + ", documento=" + documento + ", fechaAlquiler=" + fechaAlquiler + ", fechaDevolucion=" + fechaDevolucion + ", posicionAmarre=" + posicionAmarre + ", barcoAlquilado=" + barcoAlquilado + '}';
    }
    
}
