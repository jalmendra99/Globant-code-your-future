/*
Java - Herencia - Ejercicios de Aprendizaje extra.
Ejercicio nnn - Página nnn

Fer V - Jalmendra99@gmail.com

 */
package Ej2Edificios.entidades;

public class Polideportivo extends Edificio {

    // Atributos
    private String nombre;
    private tipoPoliEnum tipo;

    // Constructores
    public Polideportivo() {
    }

    public Polideportivo(String nombre, tipoPoliEnum tipo) {
        this.nombre = nombre;
        this.tipo = tipo;
    }

    public Polideportivo(String nombre, tipoPoliEnum tipo, double ancho, double alto, double largo) {
        super(ancho, alto, largo);
        this.nombre = nombre;
        this.tipo = tipo;
    }

    // Getters y setters
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public tipoPoliEnum getTipo() {
        return tipo;
    }

    public void setTipo(tipoPoliEnum tipo) {
        this.tipo = tipo;
    }

    @Override
    public String toString() {
        return super.toString() + " Polideportivo{" + "nombre=" + nombre + ", tipo=" + tipo + '}';
    }

    // Métodos
    public double calcularSuperficie() {
        return super.getAncho() * super.getLargo();
    }

    /**
     * Devuelve ancho * largo si no es techado, o ancho * largo * alto si es
     * techado
     */
    public double calcularVolumen() {
        if (this.tipo == tipoPoliEnum.ABIERTO) {
            return calcularSuperficie();
        } else if (this.tipo == tipoPoliEnum.TECHADO) {
            return super.getAncho() * super.getLargo() * super.getAlto();
        } else {
            return -1; // Error
        }
    }

}
