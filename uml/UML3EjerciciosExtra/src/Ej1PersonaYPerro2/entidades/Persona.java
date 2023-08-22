/*
Java - UML - Ejercicios de Aprendizaje extra.
Ejercicio 1 - Página 12

Fer V - Jalmendra99@gmail.com

 */
package Ej1PersonaYPerro2.entidades;

public class Persona {

    // Atributos
    private String nombre;
    private String apellido;
    private int edad;
    private int documento;
    private Perro perro;

    // Constructores
    public Persona() {
    }

    public Persona(String nombre, String apellido, int edad, int documento, Perro perro) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.documento = documento;
        this.perro = perro;
    }

    // Agrego un constructor sin asignar perro, para poder crear personas y perros por separado
    public Persona(String nombre, String apellido, int edad, int documento) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.documento = documento;
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

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getDocumento() {
        return documento;
    }

    public void setDocumento(int documento) {
        this.documento = documento;
    }

    public Perro getPerro() {
        return perro;
    }

    public void setPerro(Perro perro) {
        this.perro = perro;
    }

    @Override
    public String toString() {
        return "Persona{" + "nombre=" + nombre + ", apellido=" + apellido + 
                "edad=" + edad + ", documento=" + documento + 
                "\nperro=" + perro + '}';
    }

}
