/*
Java-POO - Ejercicios de Aprendizaje.
Ejercicio 1 - Página 27


Fer V - Jalmendra99@gmail.com

 */
package Ej01Libro;

import java.util.Scanner;

public class Libro {

    // Atributos
    public int ISBN;
    public String titulo;
    public String autor;
    public int nroDePaginas;

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    // Constructores
    public Libro(int ISBN, String titulo, String autor, int nroDePaginas) {
        this.ISBN = ISBN;
        this.titulo = titulo;
        this.autor = autor;
        this.nroDePaginas = nroDePaginas;
    }

    public Libro() {
    }

    // Métodos
    public void cargarLibro() {
        System.out.print("Ingrese el ISBN: ");
        this.ISBN = leer.nextInt();

        System.out.print("Ingrese el Título: ");
        this.titulo = leer.nextLine();

        System.out.print("Ingrese el Autor: ");
        this.autor = leer.nextLine();

        System.out.print("Ingrese el Número de páginas: ");
        this.nroDePaginas = leer.nextInt();
    }

    public void mostrarLibro() {
        System.out.println("ISBN: " + ISBN);
        System.out.println("Título: " + titulo);
        System.out.println("Autor: " + autor);
        System.out.println("Número de páginas: " + nroDePaginas);
    }

}
