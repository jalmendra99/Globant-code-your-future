/*
Java - colecciones - Ejercicios de Aprendizaje extra.
Ejercicio 1 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej1PersonaYPerro;

import Ej1PersonaYPerro.entidades.Persona;
import Ej1PersonaYPerro.servicios.PersonaService;

public class Ej1 {

    public static void main(String[] args) {

        // Crear dos personas y dos perros
        PersonaService ps = new PersonaService();
        Persona p1 = ps.crearPersona();
        Persona p2 = ps.crearPersona();

        // Mostrar la información del perro y de la persona desde la clase persona
        ps.mostrarPersona(p1);
        ps.mostrarPersona(p2);

    }

}
