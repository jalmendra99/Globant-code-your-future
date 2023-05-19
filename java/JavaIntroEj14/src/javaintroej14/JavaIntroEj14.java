/*
Java Intro - Ejercicio 14 - Vector, llenar.
Fer V - Jalmendra99@gmail.com

EJERCICIO 14 

Utilizando un Bucle for, aloja en el vector Equipo, los nombres de 
tus compañeros de equipo.

 */
package javaintroej14;

import java.util.Scanner;

public class JavaIntroEj14 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        String[] Equipo = new String[9];

        for (int i = 0; i < 9; i++) {

            System.out.print("Ingrese el nombre para el alumno #" + i + ": ");
            Equipo[i] = leer.nextLine();
        }
    }
}
