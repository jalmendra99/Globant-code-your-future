/*
Java - colecciones - Ejercicios de Aprendizaje.
Ejercicio 4 - Página 22

Fer V - Jalmendra99@gmail.com

 */
package Ej4Cine.entidad;

public class Pelicula {

    // Atributos
    private String titulo;
    private String director;
    private Integer duracionEnMinutos;

    // Constructores
    public Pelicula() {
    }

    public Pelicula(String titulo, String director, Integer duracionEnHoras) {
        this.titulo = titulo;
        this.director = director;
        this.duracionEnMinutos = duracionEnHoras;
    }

    // Getters y setters
    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public Integer getDuracionEnMinutos() {
        return duracionEnMinutos;
    }

    public void setDuracionEnMinutos(Integer duracionEnHoras) {
        this.duracionEnMinutos = duracionEnHoras;
    }

    // toString
    @Override
    public String toString() {
        return "Pelicula{" + "titulo=" + titulo + ", director=" + director + ", duracionEnHoras=" + duracionEnMinutos + '}';
    }

}
