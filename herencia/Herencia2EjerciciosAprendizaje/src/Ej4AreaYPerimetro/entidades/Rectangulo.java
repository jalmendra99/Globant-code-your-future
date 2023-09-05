/*
Java - Herencia - Ejercicios de Aprendizaje.
Ejercicio 4 - Página 15

Fer V - Jalmendra99@gmail.com

 */
package Ej4AreaYPerimetro.entidades;

import Ej4AreaYPerimetro.interfaces.calculosFormas;

public class Rectangulo implements calculosFormas{

    /**
     * 
     * @param elem1 <-- base
     * @param elem2 <-- altura
     * @return <-- area del rectángulo
     */
    @Override
    public double area(double elem1, double elem2) {
        return elem1 * elem2;
    }

    /**
     * 
     * @param elem1 <-- base
     * @param elem2 <-- altura
     * @return <-- perímetro del rectángulo
     */
    @Override
    public double perimetro(double elem1, double elem2) {
        return (elem1 + elem2) * 2;
    }

}
