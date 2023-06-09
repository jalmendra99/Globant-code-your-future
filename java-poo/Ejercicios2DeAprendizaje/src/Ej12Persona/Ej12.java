/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 12 - Página 31

Fer V - Jalmendra99@gmail.com

 */
package Ej12Persona;

import java.util.Scanner;

public class Ej12 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        // Se crea una Persona
        Persona pe = new Persona();

        // Se agregan datos a la Persona
        pe.crearPersona();

        // Se compara la edad de la persona con otra edad ingresada por el usuario
        System.out.print("Ingrese una edad para comparar con la persona: ");
        if (pe.menorQue(leer.nextInt())) {
            System.out.println("La edad de la persona es menor que la ingresada.");
        } else {
            System.out.println("La edad de la persona es igual o mayor que la ingresada.");
        }

        // Se muestran los datos de la Persona
        pe.mostrarPersona();
    }

}
