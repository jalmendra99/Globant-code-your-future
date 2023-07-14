/*
Java-POO - Actividad extra 2.

Escribir un programa en Java que simule un servicio de alquiler de películas. 
El programa debe tener una clase Pelicula que represente los datos de una película, como 
el título, el género, el año y la duración. El programa también debe tener una clase Alquiler que represente los datos de un alquiler, como la película alquilada, la fecha de inicio, la fecha de fin y el precio.

Fer V - Jalmendra99@gmail.com

 */
package Ejercicio1.entidad;

public class Pelicula {

    // Atributos
    private String titulo;
    private String genero;
    private int anio;
    private int duracionEnMinutos;

    // Constructores
    public Pelicula() {
    }

    public Pelicula(String titulo, String genero, int anio, int duracionEnMinutos) {
        this.titulo = titulo;
        this.genero = genero;
        this.anio = anio;
        this.duracionEnMinutos = duracionEnMinutos;
    }

    // Getters y setters
    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public int getAnio() {
        return anio;
    }

    public void setAnio(int anio) {
        this.anio = anio;
    }

    public int getDuracionEnMinutos() {
        return duracionEnMinutos;
    }

    public void setDuracionEnMinutos(int duracionEnMinutos) {
        this.duracionEnMinutos = duracionEnMinutos;
    }

    @Override
    public String toString() {
        return "Pelicula{" + "titulo=" + titulo + ", genero=" + genero + ", anio=" + anio + ", duracionEnMinutos=" + duracionEnMinutos + '}' + "\n";
    }

}
