/*
Java - colecciones - Ejercicios de Aprendizaje.
Ejercicio 3 - Página 22

Fer V - Jalmendra99@gmail.com

 */
package Ej3Alumnos.entidad;

import java.util.ArrayList;

public class Alumno {

    // Atributos
    private String nombre;
    private ArrayList<Integer> notas;

    // Constructor
    public Alumno() {
        notas = new ArrayList<Integer>();
    }

    // Getters y setters
    // el setter de notas, se llama agregar nota y las agrega de a una. (?)
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public ArrayList<Integer> getNotas() {
        return notas;
    }

    public void agregarNota(int nota) {
        this.notas.add(nota);
    }

    // toString
    @Override
    public String toString() {
        return "Alumno{" + "nombre=" + nombre + ", notas=" + notas + '}';
    }

}
