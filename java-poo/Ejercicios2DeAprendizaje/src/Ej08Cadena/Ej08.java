/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 8 - Página 30

Fer V - Jalmendra99@gmail.com

 */
package Ej08Cadena;

import java.util.Scanner;

public class Ej08 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        // Crea una Cadena
        Cadena ca = new Cadena();

        // Llena la cadena con el setter
        System.out.println("Ingrese una cadena de texto.");
        ca.setFrase(leer.nextLine());

        // Se muestran las vocales
        System.out.println("La cadena tiene " + ca.mostrarVocales() + " vocales.");

        // Se muestra la frase invertida
        System.out.print("La frase invertida es: ");
        ca.invertirFrase();

        // Se muestra la cantidad de veces que un caracter está repetido.
        System.out.print("Ingrese un caracter para ver si está repetido: ");
        ca.vecesRepetido(leer.nextLine().charAt(0));

        // Se compara la longitud de una cadena ingresada por el usuario
        // contra la cadena actual.
        System.out.println("Ingrese otra cadena para comparar su longitúd con la de la primera.");
        ca.compararLongitud(leer.nextLine());

        // Se une una frase ingresada por el usuario a la frase original.
        System.out.println("Ingrese otra cadena para concatenarla a la cadena original.");
        ca.unirFrases(leer.nextLine());

        // Se reemplazan todas las letras a por la letra ingresada por el usuario.
        System.out.println("Ingrese una letra, para que reemplaze a todas las letras a en la cadena.");
        ca.reemplazar(leer.nextLine().charAt(0));

        // Se comprueba si una letra ingresada por el usuario está en la cadena
        System.out.println("Ingrese una letra para ver si está en la cadena.");
        char caracter = leer.nextLine().charAt(0);
        if (ca.contiene(caracter)) {
            System.out.println("El caracter " + caracter + " está en la cadena.");
        } else {
            System.out.println("El caracter " + caracter + " no está en la cadena.");
        }
    }
}
