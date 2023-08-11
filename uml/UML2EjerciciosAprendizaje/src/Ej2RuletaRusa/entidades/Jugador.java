/*
Java - UML - Ejercicios de Aprendizaje.
Ejercicio 2 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej2RuletaRusa.entidades;

public class Jugador {

    // Atributos
    private int id;
    private String nombre;
    private boolean mojado;

    // Constructores
    public Jugador() {
    }

    public Jugador(int id, String nombre, boolean mojado) {
        this.id = id;
        this.nombre = nombre;
        this.mojado = mojado;
    }

    // Getters y setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public boolean isMojado() {
        return mojado;
    }

    public void setMojado(boolean mojado) {
        this.mojado = mojado;
    }

    @Override
    public String toString() {
        return "Jugador{" + "id=" + id + ", nombre=" + nombre + ", mojado=" + mojado + '}';
    }

    // Métodos
    public boolean disparo(Revolver r) {

        if (r.mojar()) {
            this.mojado = true;
            return true;
        }
        r.siguienteChorro();
        return false;
    }
}
