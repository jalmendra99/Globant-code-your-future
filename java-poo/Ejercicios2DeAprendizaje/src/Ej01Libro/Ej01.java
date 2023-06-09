/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 1 - Página 27

Crear una clase llamada Libro que contenga los siguientes atributos: 
ISBN, Título, Autor, Número de páginas, y un constructor 
con todos los atributos pasados por parámetro y un constructor vacío. 
Crear un método para cargar un libro pidiendo los datos al usuario 
y luego informar mediante otro método el número de ISBN, el título, 
el autor del libro y el numero de páginas.

Fer V - Jalmendra99@gmail.com

 */
package Ej01Libro;

public class Ej01 {

    public static void main(String[] args) {

        // Crea un libro
        Libro librin = new Libro();

        // Carga los datos del libro
        librin.cargarLibro();

        // Muestra el libro
        librin.mostrarLibro();

    }

}
