/*
Java - Excepciones
Ejercicio Integrador complementario
Página 15 de la guia de excepciones

Fer V - Jalmendra99@gmail.com

 */
package Excep2IntegrCompl.entidad;

public class Generador {

    // Atributos
    private float nivelDeBateria;

    // Constructores
    public Generador() {
    }

    public Generador(Integer nivelDeBateria) {
        this.nivelDeBateria = nivelDeBateria;
    }

    // Getters y setters
    public float getNivelDeBateria() {
        return nivelDeBateria;
    }

    public void setNivelDeBateria(float nivelDeBateria) {
        this.nivelDeBateria = nivelDeBateria;
    }

    @Override
    public String toString() {
        return "Generador{" + "nivelDeBateria=" + nivelDeBateria + '}';
    }

    // Metodos
    public void consumo(float cantidadConsumida) {
        this.nivelDeBateria -= cantidadConsumida;
    }
}
