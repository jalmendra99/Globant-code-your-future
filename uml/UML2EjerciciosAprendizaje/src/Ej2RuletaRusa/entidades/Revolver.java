/*
Java - UML - Ejercicios de Aprendizaje.
Ejercicio 2 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej2RuletaRusa.entidades;

public class Revolver {

    // Atributos
    private int posicionActual; // Posición del tambor que se dispara (puede que esté el agua o no)
    private int posicionAgua;

    // Constructores
    public Revolver() {
    }

    public Revolver(int posicionActual, int posicionAgua) {
        this.posicionActual = posicionActual;
        this.posicionAgua = posicionAgua;
    }

    // Getters y setters
    public int getPosicionActual() {
        return posicionActual;
    }

    public void setPosicionActual(int posicionActual) {
        this.posicionActual = posicionActual;
    }

    public int getPosicionAgua() {
        return posicionAgua;
    }

    public void setPosicionAgua(int posicionAgua) {
        this.posicionAgua = posicionAgua;
    }

    @Override
    public String toString() {
        return "Revolver{" + "posicionActual=" + posicionActual + ", posicionAgua=" + posicionAgua + '}';
    }

    // Métodos
    public void llenarRevolver() {
        this.posicionActual = (int) (Math.random() * 6) + 1;
        this.posicionAgua = (int) (Math.random() * 6) + 1;
    }

    public boolean mojar() {
        return this.posicionActual == this.posicionAgua;
    }

    public void siguienteChorro() {
        if (this.posicionActual == 6) {
            this.posicionActual = 1;
        } else {
            this.posicionActual++;
        }
    }

}
