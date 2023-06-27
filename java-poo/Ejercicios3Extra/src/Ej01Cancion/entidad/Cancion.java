/*
Java-POO - Ejercicios extra.
Ejercicio 1 - Página 33

Desarrollar una clase Cancion con los siguientes atributos: titulo y autor. 
Se deberá definir además dos constructores: uno vacío 
que inicializa el titulo y el autor a cadenas vacías 
y otro que reciba como parámetros el titulo y el autor de la canción. 
Se deberán además definir los métodos getters y setters correspondientes.


Fer V - Jalmendra99@gmail.com

 */
package Ej01Cancion.entidad;

public class Cancion {

    // Atributos
    private String titulo;
    private String autor;

    // Constructores
    public Cancion() {
    }

    public Cancion(String titulo, String autor) {
        this.titulo = titulo;
        this.autor = autor;
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
}
