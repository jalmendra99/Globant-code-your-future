/*
Java - UML - Ejercicios de teoría
Ejercicio 1 - Página 5

Fer V - Jalmendra99@gmail.com

 */
package Ej1PersonaYDni;

import java.util.Scanner;
import Ej1PersonaYDni.entidades.Dni;
import Ej1PersonaYDni.entidades.Persona;

public class UML1EjerciciosTeoria {

    private static Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public static void main(String[] args) {

        Persona pe = crearPersona();

        System.out.println("\nMostrando la persona creada..");
        System.out.println(pe);

    }

    private static Persona crearPersona() {
        Persona pe = new Persona();
        Dni dni = new Dni();

        System.out.println("\nCreando una persona..");
        System.out.print("Ingrese un nombre: ");
        pe.setNombre(leer.next());

        System.out.print("Ingrese un apellido: ");
        pe.setApellido(leer.next());

        System.out.print("Ingrese el número de DNI: ");
        dni.setNumero(leer.nextInt());
        
        System.out.print("Ingrese la serie del DNI: ");
        dni.setSerie(leer.next());

        pe.setDni(dni);

        return pe;
    }

}
