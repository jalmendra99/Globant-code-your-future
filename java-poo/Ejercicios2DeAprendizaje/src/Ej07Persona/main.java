/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 7 - Página 29

Fer V - Jalmendra99@gmail.com

 */
package Ej07Persona;

public class main {

    public static void main(String[] args) {

        // Constante para jugar con distintas cantidades de personas.
        final int CANTIDAD = 4;

        // Se crea un array de Persona
        Persona[] personas;
        personas = new Persona[CANTIDAD];

        // Las variables para calcular los porcentajes.
        double porcentajeDebajo = 0;
        double porcentajeBien = 0;
        double porcentajeArriba = 0;
        double porcentajeMayores = 0;
        double porcentajeMenores = 0;

        // Se crean "CANTIDAD" de nuevas instancias de "Persona"
        // y se cargan los datos de cada una.
        for (int i = 0; i < CANTIDAD; i++) {
            personas[i] = new Persona();
            personas[i].crearPersona();
        }

        // Se ejecutan todos los métodos para cada objeto...
        // Para cada objeto Persona, se usan los métodos de la clase Persona para...
        for (int i = 0; i < CANTIDAD; i++) {

            // Imprime el nombre de la persona actual para referencia.
            System.out.print(personas[i].getNombre() + " ");
            
            // Se calcula y verifica su IMC.
            switch (personas[i].calcularIMC()) {
                case -1:
                    porcentajeDebajo += 1;
                    System.out.print("está por debajo del peso ideal ");
                    break;
                case 0:
                    porcentajeBien += 1;
                    System.out.print("está en su peso ideal ");
                    break;
                case 1:
                    porcentajeArriba += 1;
                    System.out.print("está por encima de su peso ideal ");
                    break;
                default:
                    throw new AssertionError();
            }

            // Se verifica si es o no mayor de edad.
            if (personas[i].esMayorDeEdad()) {
                System.out.println("y es mayor de edad.");
                porcentajeMayores += 1;
            } else {
                System.out.println("y NO es mayor de edad.");
                porcentajeMenores += 1;
            }

        }

        // Se calculan los porcentajes solicitados.
        porcentajeDebajo /= CANTIDAD;
        porcentajeBien /= CANTIDAD;
        porcentajeArriba /= CANTIDAD;
        porcentajeMayores /= CANTIDAD;
        porcentajeMenores /= CANTIDAD;

        // Se muestra la información solicitada por pantalla.
        System.out.println("Los porcentajes solicitados son:");

        // Cuantas están por debajo de su peso.
        System.out.println("Debajo de su peso ideal: " + porcentajeDebajo + "%");

        // Cuantas en su peso ideal.
        System.out.println("En su peso ideal: " + porcentajeBien + "%");
        
        // Cuantos por encima
        System.out.println("Por encima de su peso ideal: " + porcentajeArriba + "%");
        
        // Cuantos son mayores de edad.
        System.out.println("Mayores de edad: " + porcentajeMayores + "%");
        
        // Cuntos son menores.
        System.out.println("Menores de edad: " + porcentajeMenores + "%");
        
    }
}
