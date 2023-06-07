/*
Java-POO - Ejercicios de la guía.
Ejercicio 1 - Página 9
Clase Persona.

Fer V - Jalmendra99@gmail.com

 */
package Entidad;

public class Persona {

    // Atributos.
    public String nombre;
    public String apellido;
    public int edad;

    // Getters y setters.
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

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    // Constructor 1.
    public Persona() {
        
    }
            
    // Constructor 2.
    public Persona(String nombre, String apellido, int edad) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
    }
    
}
