/*
Java - Ejercicios extra
Ejercicio 3 - Página 46
Convertir minutos a días y horas.

Fer V - Jalmendra99@gmail.com

Elaborar un algoritmo en el cuál se ingrese una letra y se detecte 
si se trata de una vocal. 
Caso contrario mostrar un mensaje. 
Nota: investigar la función equals() de la clase String.

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej03VocalONo {
    
    public static void main(String[] args) {
        
        Scanner leer = new Scanner(System.in);
        
        String letra;
        boolean vocal = false;
        
        // El usuario ingresa la letra.
        System.out.print("Ingrese una letra para determinar si es vocal o no: ");
        letra = leer.nextLine();
        
        // Se determina si la letra ingresada es una vocal o no.
        vocal = letra.toUpperCase().equals("A") ||
                letra.toUpperCase().equals("E") ||
                letra.toUpperCase().equals("I") ||
                letra.toUpperCase().equals("O") ||
                letra.toUpperCase().equals("U");
               
        // Se imprime por pantalla la información solicitada.
        if (vocal) {
            System.out.println("La letra ingresada es una vocal.");
        } else {
            System.out.println("La letra ingresada NO es una vocal.");
        }
        
    }
    
}
