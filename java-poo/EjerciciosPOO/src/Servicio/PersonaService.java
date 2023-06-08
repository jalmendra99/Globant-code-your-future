/*
Java-POO - Ejercicios de la guía.
Ejercicio 1 - Página 9
Clase Persona.

Fer V - Jalmendra99@gmail.com

 */
package Servicio;

import Entidad.Persona;
import java.util.Scanner;

public class PersonaService {

    Scanner leer = new Scanner(System.in);
    
    public Persona crearPersona() {
        
        // Instanciamos un objeto persona con sus atributos vacíos
        Persona personaCompleta = new Persona();
        
        // Pedimos al usuario que ingrese la información
        // que se alojará en el atributo por consola
        System.out.println("Ingrese el nombre de la persona");
        
        // Utilizamos el objeto para invocar al método SET
        // y con el Scanner recibimos la información.
        personaCompleta.setNombre(leer.next());
        
        // Este método retorna un objeto persona con sus atributos
        // llenos de información.
        return personaCompleta;
        
    }
    
    public void mostrarPersona(Persona personaAMostrar) {
        
        System.out.println("Nombre: " + personaAMostrar.getNombre());
        System.out.println("Apellido: " + personaAMostrar.getApellido());
        System.out.println("Edad: " + personaAMostrar.getEdad());
        
    }
}
