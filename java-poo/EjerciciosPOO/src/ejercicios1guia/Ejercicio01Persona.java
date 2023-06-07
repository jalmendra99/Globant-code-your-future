/*
Java-POO - Ejercicios de la guía.
Ejercicio 1 - Página 9
Clase Persona.

Fer V - Jalmendra99@gmail.com

 */
package ejercicios1guia;

import Entidad.Persona;

public class Ejercicio01Persona {

     public static void main(String[] args) {
         
         // Instanciación utilizando el constructor vacío.
         Persona primeraPersona = new Persona();
         
         // Instanciación utilizando el constructor vacío.
         Persona segundaPersona = new Persona("Juan", "Perez", 35);
         
         primeraPersona.setNombre("Lucio");
         
         System.out.println(segundaPersona.getNombre());
         
         
     }
            
    
}
