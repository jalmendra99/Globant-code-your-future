/*
Java - UML - Ejercicios de Aprendizaje extra.
Ejercicio 1 - Página 12

Fer V - Jalmendra99@gmail.com

 */
package Ej1PersonaYPerro2.servicios;

import Ej1PersonaYPerro2.entidades.Perro;
import Ej1PersonaYPerro2.entidades.Persona;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;
import javax.swing.JOptionPane;

public class PersonaService {

    // Atributos
    private Scanner leer = new Scanner(System.in).useDelimiter("\n");

    private enum nombres {
        JUAN, PEDRO, GONZALO, AGUSTIN, ERNESTO, ALFREDO, EZEQUIEL,
        MAXIMILIANO, RODRIGO, DIEGO, LEONARDO, JAVIER, ESTEBAN,
        JOSE,
        NATALIA, LAICA, MARIANA, ROSA, PEPA, JUANA, AGOSTINA,
        ZOE, ROMINA, CECILIA, ALEJANDRA
    };

    private enum apellidos {
        GOMEZ, GONZALEZ, ORTIZ, ARLEQUIN, MESA, SILLA,
        BOLAZO, GARLENGA, TABARE, REY, CABELLO, SORIANO,
        TACUAREMBO, PEREZ, LOMA, PIEDRANUEVA, ZAMORA,
        MCPATO, BONANZA, PETRUCHELLI, HUTCH, STARSKY,
        FERRAROTI
    };

    // Constructores
    public PersonaService() {
    }

    // Métodos
    public ArrayList<Persona> crearMuchasPersonas(int cantidad) {

        ArrayList<Persona> personas = new ArrayList<Persona>();
        int azar;
        String nombre;
        String apellido;
        int edad;
        int documento;

        for (int i = 0; i < cantidad; i++) {

            // Se elije al azar un nombre de la lista de nombres.
            azar = (int) (Math.random() * nombres.values().length);
            nombre = nombres.values()[azar].toString();

            // Se elije al azar un apellido de la lista de apellidos.
            azar = (int) (Math.random() * apellidos.values().length);
            apellido = apellidos.values()[azar].toString();

            // Se elije una edad al azar entre 18 y 99
            edad = (int) (Math.random() * 99 + 18);

            // Se elije un DNI al azar entre 15.000.000 y 50.000.000
            documento = (int) (Math.random() * 50000000 + 15000000);

            personas.add(new Persona(nombre, apellido, edad, documento));

        }

        return personas;
    }

//    public Persona crearPersona() {
//
//        Persona pe = new Persona();
//
//        System.out.println("\nCreando una persona..");
//        
//        pe.setNombre(JOptionPane.showInputDialog("Ingrese el nombre: "));
//        pe.setApellido(JOptionPane.showInputDialog("Ingrese el apellido: "));
//        pe.setEdad(Integer.parseInt(JOptionPane.showInputDialog("Ingrese la edad: ")));
//        pe.setDocumento(Integer.parseInt(JOptionPane.showInputDialog("Ingrese el número de documento: ")));
//
//        return pe;
//    }

    public void mostrarPersonas(ArrayList<Persona> personas) {
        System.out.println("\nMostrando todas las personas..");
        for (Iterator<Persona> iterator = personas.iterator(); iterator.hasNext();) {
            mostrarPersona(iterator.next());
        }
    }

    public void mostrarPersona(Persona pe) {
        System.out.println(pe);
        //////////////JOptionPane.showMessageDialog(null, pe);
    }

    public void asignarPerro(Persona pe, Perro dog) {
        pe.setPerro(dog);
    }

}
