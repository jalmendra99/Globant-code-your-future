
/*
Java - Ejercicios de aprendizaje
Ejercicio 7 - Página 42
String comparison.

Fer V - Jalmendra99@gmail.com

Crear un programa que pida una frase y si esa frase es igual a “eureka” 
el programa pondrá un mensaje de Correcto, 
sino mostrará un mensaje de Incorrecto. 
Nota: investigar la función equals() en Java.

 */
package ej07comparastring;

import java.util.Scanner;

public class Ej07ComparaString {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        String frase;

        System.out.print("Ingrese una frase (hint: eureka): ");
        frase = leer.nextLine();

        // Se confirma si la frase es "eureka" o no.
        if (frase.equals("eureka")) {
            System.out.println("Correcto.");
        } else {
            System.out.println("Incorrecto.");
        }

    }
}
