/*
Java - UML - Ejercicios de teoría
Ejercicio 1 - Página 5

Fer V - Jalmendra99@gmail.com

 */
package Ej1PersonaYDni.entidades;

import Ej1PersonaYDni.entidades.Dni;

public class Persona {

    // Atributos
    private String nombre;
    private String apellido;
    private Dni dni;
    
    // Constructores

    public Persona() {
    }

    public Persona(String nombre, String apellido, Dni dni) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
    }
    
    // Getters y setters

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Dni getDni() {
        return dni;
    }

    public void setDni(Dni dni) {
        this.dni = dni;
    }

    @Override
    public String toString() {
        return "Persona{" + "nombre=" + nombre + ", apellido=" + apellido + ", dni=" + dni + '}';
    }
    
}
