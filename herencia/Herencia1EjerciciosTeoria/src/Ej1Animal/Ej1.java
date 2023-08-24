/*
Java - Herencia - Ejercicios de teoría.
Ejercicio 1 - Página 6

Fer V - Jalmendra99@gmail.com

 */
package Ej1Animal;

import Ej1Animal.entidades.Animal;
import Ej1Animal.entidades.Gato;
import Ej1Animal.entidades.Perro;
import java.util.ArrayList;
import java.util.Iterator;

public class Ej1 {

    public static void main(String[] args) {

        ArrayList<Animal> animales = new ArrayList<Animal>();
        
        Animal a = new Animal();
        Animal b = new Perro();
        Animal c = new Gato();
        
        animales.add(a);
        animales.add(b);
        animales.add(c);
        
        for (Animal animal : animales) {
            animal.hacerRuido();
        }
        
    }

}
