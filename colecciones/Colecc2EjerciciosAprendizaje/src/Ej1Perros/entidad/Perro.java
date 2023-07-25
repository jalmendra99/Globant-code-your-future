/*
Java - colecciones - Ejercicios.
Ejercicio 1 y 2 - Página 22

Fer V - Jalmendra99@gmail.com

 */
package Ej1Perros.entidad;

public class Perro {

    // Atributos
    private String raza;
    private String nombre;
    private String chip_id;

    // Constructores
    public Perro() {
    }

    public Perro(String raza) {
        this.raza = raza;
    }

    public Perro(String raza, String nombre, String chip_id) {
        this.raza = raza;
        this.nombre = nombre;
        this.chip_id = chip_id;
    }

    // Getters & Setters
    public String getRaza() {
        return raza;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getChip_id() {
        return chip_id;
    }

    public void setChip_id(String chip_id) {
        this.chip_id = chip_id;
    }

    // toString
    @Override
    public String toString() {
        return "Perro{" + "raza=" + raza + ", nombre=" + nombre + ", chip_id=" + chip_id + '}';
    }

}
