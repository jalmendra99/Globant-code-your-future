/*
Java - colecciones - Ejercicios de Aprendizaje extra.
Ejercicio 3 - Página 24

[...] se debe crear una clase 
llamada Libro que guarde la información de cada uno de los libros de una Biblioteca. 
La clase Libro debe guardar el título del libro, autor, número de ejemplares 
y número de ejemplares prestados. [...]


Fer V - Jalmendra99@gmail.com

 */
package Ej3Libreria.entidad;

public class Libro {

    // Atributos
    private String titulo;
    private String autor;
    private int numeroDeEjemplares;
    private int numeroDeEjemplaresPrestados;

    // Constructores.
    public Libro() {
    }

    public Libro(String titulo, String autor, int numeroDeEjemplares, int numeroDeEjemplaresPrestados) {
        this.titulo = titulo;
        this.autor = autor;
        this.numeroDeEjemplares = numeroDeEjemplares;
        this.numeroDeEjemplaresPrestados = numeroDeEjemplaresPrestados;
    }
    
    // Getters y setters

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getNumeroDeEjemplares() {
        return numeroDeEjemplares;
    }

    public void setNumeroDeEjemplares(int numeroDeEjemplares) {
        this.numeroDeEjemplares = numeroDeEjemplares;
    }

    public int getNumeroDeEjemplaresPrestados() {
        return numeroDeEjemplaresPrestados;
    }

    public void setNumeroDeEjemplaresPrestados(int numeroDeEjemplaresPrestados) {
        this.numeroDeEjemplaresPrestados = numeroDeEjemplaresPrestados;
    }
    
    // toString

    @Override
    public String toString() {
        return "Libro{" + "titulo=" + titulo + ", autor=" + autor + ", numeroDeEjemplares=" + numeroDeEjemplares + ", numeroDeEjemplaresPrestados=" + numeroDeEjemplaresPrestados + '}';
    }
    
}
