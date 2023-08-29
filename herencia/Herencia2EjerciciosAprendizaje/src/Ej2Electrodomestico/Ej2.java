/*
Java - Herencia - Ejercicios de Aprendizaje.
Ejercicio 2 - Página 13

Fer V - Jalmendra99@gmail.com

 */
package Ej2Electrodomestico;

import Ej2Electrodomestico.entidades.Lavadora;
import Ej2Electrodomestico.entidades.Televisor;

public class Ej2 {

    public static void main(String[] args) {

        /**
         * Vamos a crear una Lavadora y un Televisor 
         * y llamar a los métodos necesarios para mostrar el precio final de los dos electrodomésticos.
         */
         
        Lavadora lava = new Lavadora();
        Televisor tele = new Televisor();
        
        lava.crearLavadora();
        tele.crearTelevisor();
        
        System.out.println(lava);
        
        System.out.println(tele);
    }

}
