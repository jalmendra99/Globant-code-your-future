/*
Java - Herencia - Ejercicios de Aprendizaje extra.
Ejercicio 1 - Página 16

Fer V - Jalmendra99@gmail.com

 */
package Ej1Barcos.entidades;

public class Motorizado extends Barco {

    // Atributos
    
    private int potenciaEnCV;
    
    // Constructores

    public Motorizado() {
    }

    public Motorizado(int potenciaEnCV, String matricula, double eslora, int anioFabricacion) {
        super(matricula, eslora, anioFabricacion);
        this.potenciaEnCV = potenciaEnCV;
    }
    
    // Getters y setters

    public int getPotenciaEnCV() {
        return potenciaEnCV;
    }

    public void setPotenciaEnCV(int potenciaEnCV) {
        this.potenciaEnCV = potenciaEnCV;
    }

    @Override
    public String toString() {
        return super.toString() + " Motorizado{" + "potenciaEnCV=" + potenciaEnCV + '}';
    }
    
}
