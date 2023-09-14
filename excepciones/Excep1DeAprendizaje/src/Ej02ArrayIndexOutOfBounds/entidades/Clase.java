/*
Java - Excepciones - Ejercicios de Aprendizaje.
Ejercicio 2 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej02ArrayIndexOutOfBounds.entidades;

public class Clase {

    // Atributo vector de tamaño 3
    private int[] vector = new int[3];

    public void llenarBienVector() {
        for (int i = 0; i < 3; i++) {
            vector[i] = i;
        }
        System.out.println("\nVector bien llenado.");
    }

    public void llenarMalVector() {
        for (int i = 0; i < 4; i++) {
            vector[i] = i;
        }
    }

}
