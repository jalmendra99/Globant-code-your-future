/*
Java-JUnit - Ejercicios de aprendizaje.
Ejercicio 4 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej4GestorDeTareas.entidad;

public class Tarea {

    // Atributos
    
    private static int next_id = 0;    
    private int id;
    private String descripcion;
    
    // Constructores

    public Tarea() {
        id = next_id++;
    }

    public Tarea(String descripcion) {
        id = next_id++;
        this.descripcion = descripcion;
    }    
    
    // Getters & setters
    // No uso setId porque solo se setea una vez y en el constructor.

    public int getId() {
        return id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    // ToString

    @Override
    public String toString() {
        return "Tarea{" + "id=" + id + ", descripcion=" + descripcion + '}';
    }
    
}
