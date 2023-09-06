/*
Java - Herencia - Ejercicios de Aprendizaje extra.
Ejercicio 1 - Página 16

Fer V - Jalmendra99@gmail.com

 */
package Ej1Barcos.entidades;

public class Yate extends Barco {
    
    // Atributos
    
    private int potenciaEnCV;
    private int nroCamarotes;

    // Constructores

    public Yate() {
    }

    public Yate(int potenciaEnCV, int nroCamarotes, String matricula, double eslora, int anioFabricacion) {
        super(matricula, eslora, anioFabricacion);
        this.potenciaEnCV = potenciaEnCV;
        this.nroCamarotes = nroCamarotes;
    }
    
    // Getters y setters

    public int getPotenciaEnCV() {
        return potenciaEnCV;
    }

    public void setPotenciaEnCV(int potenciaEnCV) {
        this.potenciaEnCV = potenciaEnCV;
    }

    public int getNroCamarotes() {
        return nroCamarotes;
    }

    public void setNroCamarotes(int nroCamarotes) {
        this.nroCamarotes = nroCamarotes;
    }

    @Override
    public String toString() {
        return super.toString() + " Yate{" + "potenciaEnCV=" + potenciaEnCV + ", nroCamarotes=" + nroCamarotes + '}';
    }
    
}
