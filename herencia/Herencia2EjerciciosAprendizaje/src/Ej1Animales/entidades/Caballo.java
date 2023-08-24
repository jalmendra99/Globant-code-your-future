/*
Java - Herencia - Ejercicios de Aprendizaje.
Ejercicio 1 - Página 13

Fer V - Jalmendra99@gmail.com

 */
package Ej1Animales.entidades;

public class Caballo extends Animal {

    public Caballo() {
    }

    public Caballo(String nombre, String apellido, int edad, String raza) {
        super(nombre, apellido, edad, raza);
    }
    
    @Override
    public void alimentarse() {
        System.out.println("El caballo " + super.nombre + " " + super.apellido + " come avena.");
    }
    
}
