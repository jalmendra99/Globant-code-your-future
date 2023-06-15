/*
Java-POO - Ejercicios de Aprendizaje.
Ejercicio 1 - Página 27


Fer V - Jalmendra99@gmail.com

 */
package Ej01Libro.entidad;

public class Libro {

    // Atributos
    public int ISBN;
    public String titulo;
    public String autor;
    public int nroDePaginas;

    // Constructores
    public Libro() {
    }

    public Libro(int ISBN, String titulo, String autor, int nroDePaginas) {
        this.ISBN = ISBN;
        this.titulo = titulo;
        this.autor = autor;
        this.nroDePaginas = nroDePaginas;
    }

    // Getters y setters
    public int getISBN() {
        return ISBN;
    }

    public void setISBN(int ISBN) {
        this.ISBN = ISBN;
    }

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

    public int getNroDePaginas() {
        return nroDePaginas;
    }

    public void setNroDePaginas(int nroDePaginas) {
        this.nroDePaginas = nroDePaginas;
    }

    // toString
    @Override
    public String toString() {
        return "Libro{" + "ISBN=" + ISBN + ", titulo=" + titulo + ", autor=" + autor + ", nroDePaginas=" + nroDePaginas + '}';
    }

}
