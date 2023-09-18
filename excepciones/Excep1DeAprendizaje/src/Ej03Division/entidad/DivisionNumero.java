/*
Java - Excepciones - Ejercicios de Aprendizaje.
Ejercicio 3 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej03Division.entidad;

public class DivisionNumero {

    // Atributos
    private Integer dividendo;
    private Integer divisor;

    // Constructores
    public DivisionNumero() {
    }

    public DivisionNumero(Integer dividendo, Integer divisor) {
        this.dividendo = dividendo;
        this.divisor = divisor;
    }

    // Getters y setters
    public Integer getDividendo() {
        return dividendo;
    }

    public void setDividendo(Integer dividendo) {
        this.dividendo = dividendo;
    }

    public Integer getDivisor() {
        return divisor;
    }

    public void setDivisor(Integer divisor) {
        this.divisor = divisor;
    }

    // Métodos
    public double dividir() {
        return dividendo / divisor;
    }

}
