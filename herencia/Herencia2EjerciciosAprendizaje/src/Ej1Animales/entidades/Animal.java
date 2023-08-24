/*
Java - Herencia - Ejercicios de Aprendizaje.
Ejercicio 1 - Página 13

Fer V - Jalmendra99@gmail.com

 */
package Ej1Animales.entidades;

public abstract class Animal {

    // Atributos
    
    protected String nombre;
    protected String apellido;
    protected int edad;
    protected String raza;
    
    
    // Constructores
    
    public Animal() {
    }

    public Animal(String nombre, String apellido, int edad, String raza) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.raza = raza;
    }
    
    // Métodos
    
    public abstract void alimentarse();

    @Override
    public String toString() {
        return "Animal{" + "nombre=" + nombre + ", apellido=" + apellido + ", edad=" + edad + ", raza=" + raza + '}';
    }
    
}
