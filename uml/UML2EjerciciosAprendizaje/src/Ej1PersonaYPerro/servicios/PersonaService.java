/*
Java - UML - Ejercicios de Aprendizaje.
Ejercicio 1 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej1PersonaYPerro.servicios;

import Ej1PersonaYPerro.entidades.Perro;
import Ej1PersonaYPerro.entidades.Persona;
import java.util.Scanner;

public class PersonaService {

    // Atributos
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");

    // Constructores
    public PersonaService() {
    }

    // Métodos
    public Persona crearPersona() {

        Persona pe = new Persona();
        Perro dog = new Perro();

        System.out.println("\nCreando una persona..");
        System.out.print("Ingrese el nombre: ");
        pe.setNombre(leer.next());
        System.out.print("Ingrese el apellido: ");
        pe.setApellido(leer.next());
        System.out.print("Ingrese la edad: ");
        pe.setEdad(leer.nextInt());
        System.out.print("Ingrese el documento: ");
        pe.setDocumento(leer.nextInt());

        System.out.println("\nDatos de la mascota..");
        System.out.print("Ingrese el nombre: ");
        dog.setNombre(leer.next());
        System.out.print("Ingrese la raza: ");
        dog.setRaza(leer.next());
        System.out.print("Ingrese la edad: ");
        dog.setEdad(leer.nextInt());
        System.out.print("Ingrese el tamaño: ");
        dog.setTamanio(leer.next());

        pe.setPerro(dog);

        return pe;
    }

    public void mostrarPersona(Persona pe) {
        System.out.println("\nInformación de la persona..");
        System.out.println(pe);
    }

}
