/*
Java - Excepciones - Ejercicios de Aprendizaje.
Ejercicio 2 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej02ArrayIndexOutOfBounds;

import Ej02ArrayIndexOutOfBounds.entidades.Clase;

public class Ej02 {

    public static void main(String[] args) {

        Clase c = new Clase();

        try {
        c.llenarBienVector();
        c.llenarMalVector();
            
        } 
        catch (Exception e) {
            System.out.println(e.getMessage());
            System.out.println(e);
        }


    }

}
