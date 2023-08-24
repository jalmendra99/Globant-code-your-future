/*
Java - Herencia - Ejercicios de Aprendizaje.
Ejercicio 1 - Página 13

Fer V - Jalmendra99@gmail.com

 */
package Ej1Animales.entidades;

public final class Gato extends Animal {

    public Gato() {
    }

    public Gato(String nombre, String apellido, int edad, String raza) {
        super(nombre, apellido, edad, raza);
    }

    @Override
    public void alimentarse() {
        System.out.println("El gato " + super.nombre + " " + super.apellido + " come atún.");
    }

}
