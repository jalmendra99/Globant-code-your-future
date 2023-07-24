/*
Java - colecciones - Ejercicios.
Ejercicio 6 - Página 15

Fer V - Jalmendra99@gmail.com

 */
package pkg1ejerciciosteoria.entidad;

public class Libro {

    // Atributos
    
    private int ID;
    String isbn;
    String nombre;
    String autor;
    
    // Constructores

    public Libro() {
    }
    
    public Libro(String nombre) {
        this.nombre = nombre;
    }

    public Libro(int ID, String isbn, String nombre, String autor) {
        this.ID = ID;
        this.isbn = isbn;
        this.nombre = nombre;
        this.autor = autor;
    }
    
    // Getters & Setters

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }
    
    // toString

    @Override
    public String toString() {
        return "Libro{" + "nombre=" + nombre + '}';
    }
    
}
