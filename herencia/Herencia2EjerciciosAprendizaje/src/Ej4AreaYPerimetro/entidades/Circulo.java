/*
Java - Herencia - Ejercicios de Aprendizaje.
Ejercicio 4 - Página 15

Fer V - Jalmendra99@gmail.com

 */
package Ej4AreaYPerimetro.entidades;

import Ej4AreaYPerimetro.interfaces.calculosFormas;

public class Circulo implements calculosFormas {

    /**
     * 
     * @param elem1 <-- radio del círculo
     * @param elem2 <-- no tengo la menor idea de para que usarlo en circulo
     * @return <-- area del círculo de radio elem1
     */
    @Override
    public double area(double elem1, double elem2) {
        return calculosFormas.PI * Math.pow(elem1, 2);
    }

    /**
     * 
     * @param elem1 <-- diametro del círculo
     * @param elem2 <-- no tengo la menor idea de para que usarlo en circulo
     * @return <-- perímetro del círculo de diámetro elem1
     */
    @Override
    public double perimetro(double elem1, double elem2) {
        return calculosFormas.PI * elem1;
    }

}
