/*
Java - Excepciones - Ejercicios de Aprendizaje.
Ejercicio 1 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej01Persona;

import Ej01Persona.entidad.Persona;

public class Ej01 {

    public static void main(String[] args) {

        try {
            Persona p = null;
            System.out.println(p.esMayorDeEdad());

        } catch (Exception e) {
            System.out.println(e.getMessage());
            System.out.println(e);
            System.out.println(e.fillInStackTrace());
        }

    }

}
