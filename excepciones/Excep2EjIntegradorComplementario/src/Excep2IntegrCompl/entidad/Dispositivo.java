/*
Java - Excepciones
Ejercicio Integrador complementario
Página 15 de la guia de excepciones

Fer V - Jalmendra99@gmail.com

 */
package Excep2IntegrCompl.entidad;

public abstract class Dispositivo {

    // Atributos
    private int consumoEnergetico;
    private boolean daniado;
    private boolean destruido;

    // Constructores y destructores
    public Dispositivo() {
        this.daniado = false;
        this.destruido = false;
    }

    public Dispositivo(int consumoEnergetico) {
        this.consumoEnergetico = consumoEnergetico;
        this.daniado = false;
        this.destruido = false;
    }



    // Getters y setters
    public int getConsumoEnergetico() {
        return consumoEnergetico;
    }

    public void setConsumoEnergetico(int consumoEnergetico) {
        this.consumoEnergetico = consumoEnergetico;
    }

    @Override
    public String toString() {
        return "Dispositivo{" + "consumoEnergetico=" + consumoEnergetico + ", daniado=" + daniado + '}';
    }

    // Métodos
    /**
     *
     * @param intensidad <-- min / med / max? 10%, 20%, 30%, etc? @param
     * tiempoSegundos @re t urns <-- s* kw / s <-- kw
     */
    public float usar(Integer intensidad, Integer tiempoSegundos) {
        if (this.daniado) {
            System.out.println("\nEl dispositivo está dañado y no se puede usar.");
        }
        int azar;
        azar = (int) Math.random();
        this.daniado = azar <= 0.3;
        return (intensidad * tiempoSegundos * consumoEnergetico);
    }

    public boolean reparar() {
        int azar;
        azar = (int) Math.random();
        if (this.daniado) {
            this.daniado = azar > 0.4;
        }
        return !this.daniado;
    }

}
