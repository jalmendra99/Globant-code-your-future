/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 12 - Página 31

Implemente la clase Persona. Una persona tiene un nombre y una fecha de nacimiento (Tipo Date), 
constructor vacío, constructor parametrizado, get y set. Y los siguientes métodos:
* Agregar un método de creación del objeto que respete la siguiente firma: 
    crearPersona(). Este método rellena el objeto mediante un Scanner 
    y le pregunta al usuario el nombre y la fecha de nacimiento de la persona a crear, 
    recordemos que la fecha de nacimiento debe guardarse en un Date y los guarda en el objeto.
* Escribir un método calcularEdad() a partir de la fecha de nacimiento ingresada. 
    Tener en cuenta que para conocer la edad de la persona también se debe conocer la fecha actual.
* Agregar a la clase el método menorQue(int edad) que recibe como parámetro otra edad 
    y retorna true en caso de que el receptor tenga menor edad que la persona 
    que se recibe como parámetro, o false en caso contrario.
* Metodo mostrarPersona(): este método muestra la persona creada en el método anterior.


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
