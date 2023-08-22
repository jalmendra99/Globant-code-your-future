/*
Java - UML - Ejercicios de Aprendizaje extra.
Ejercicio 1 - Página 12

Fer V - Jalmendra99@gmail.com

--
Info:
Info: 
https://www.expertoanimal.com/nombres-graciosos-para-perros-23298.html
https://www.expertoanimal.com/las-10-razas-de-perros-mas-populares-del-mundo-23205.html

 */
package Ej1PersonaYPerro2;

import Ej1PersonaYPerro2.entidades.Perro;
import Ej1PersonaYPerro2.entidades.Persona;
import Ej1PersonaYPerro2.servicios.PerroService;
import Ej1PersonaYPerro2.servicios.PersonaService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;
import javax.swing.JOptionPane;

public class Ej1 {

    public static void main(String[] args) {

        
        
        ArrayList<Persona> personas = new ArrayList<Persona>();
        ArrayList<Perro> perros = new ArrayList<Perro>();
        ArrayList<Perro> perrosAdoptados = new ArrayList<Perro>();

        final int CANT_PERSONAS = 8;

        /**
         * Cantidad de perros debería ser igual o mayor a cantidad de personas
         * sinó, habrá personas a las que se les deberá informar que no quedan
         * más perros por adoptarse.
         */
        final int CANT_PERROS = 10;

        // Creando varias personas
        PersonaService ps = new PersonaService();

        personas = ps.crearMuchasPersonas(8);

        ps.mostrarPersonas(personas);

        // Creando varios perros
        PerroService dogServ = new PerroService();

        perros = dogServ.crearMuchosPerros(CANT_PERROS);

        dogServ.mostrarPerros(perros);

        // Para cada persona se intenta asignar un perro..
        // TODO: 
        //asignarPerrosAPersonas(personas, perros, perrosAdoptados);
    }

    private static void asignarPerrosAPersonas(ArrayList<Persona> personas, ArrayList<Perro> perros, ArrayList<Perro> perrosAdoptados) {

///////        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        String nombrePersona;
        String nombrePerro;
        Persona pe;
        Perro dog;

///////////        System.out.println("\nAsignando perros a personas");
        JOptionPane.showMessageDialog(null, "\nAsignando perros a personas");

        for (int i = 0; i < personas.size(); i++) {
            // TODO: imprimir todos los perros que *TODAVÍA* no fueron adoptados..

            nombrePersona = personas.get(i).getNombre() + " " + personas.get(i).getApellido();

            do {
                //System.out.print("Escriba el nombre de un perro de la lista para ser adoptado por " + nombrePersona + ": ");
                //nombrePerro = leer.next();
                nombrePerro = JOptionPane.showInputDialog("Escriba el nombre de un perro de la lista para ser adoptado por " + nombrePersona + ": ");

                dog = buscarPerroPorNombre(nombrePerro, perros);

                if (dog != null) {
                    if (perros.contains(dog)) {
                        perros.remove(dog);
                        perrosAdoptados.add(dog);
                        personas.get(i).setPerro(dog);
                    } else {
                        System.out.println("\nError: No se encontró ese perro en el listado de perros a adoptar.");
                    }
                }
            } while (personas.get(i).getPerro() != null);

        }

    }

    private static Perro buscarPerroPorNombre(String nombrePerro, ArrayList<Perro> perros) {
        for (Iterator<Perro> iterator = perros.iterator(); iterator.hasNext();) {
            if (iterator.next().getNombre().equalsIgnoreCase(nombrePerro)) {
                return iterator.next();
            }
        }
        return null;
    }

}
