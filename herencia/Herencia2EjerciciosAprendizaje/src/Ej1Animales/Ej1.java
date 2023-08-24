/*
Java - Herencia - Ejercicios de Aprendizaje.
Ejercicio 1 - Página 13

Fer V - Jalmendra99@gmail.com

 */
package Ej1Animales;

import Ej1Animales.entidades.Animal;
import Ej1Animales.entidades.Caballo;
import Ej1Animales.entidades.Gato;
import Ej1Animales.entidades.Perro;

public class Ej1 {

    public static void main(String[] args) {

        //Declaración del objeto Perro
        Animal perro1 = new Perro("Stich", "Carnívoro", 15, "Doberman");
        perro1.alimentarse();

        //Declaración de otro objeto Perro
        Animal perro2 = new Perro("Teddy", "Croquetas", 10, "Chihuahua");
        perro2.alimentarse();

        //Declaración del objeto Gato
        Animal gato1 = new Gato("Pelusa", "Galletas", 15, "Siamés");
        gato1.alimentarse();

        //Declaración del objeto Caballo
        Animal caballo1 = new Caballo("Spark", "Pasto", 25, "Fino");
        caballo1.alimentarse();

    }

}
