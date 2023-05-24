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
        
        String cadena;
        char letra;
        boolean vocal = false;
        
        // El usuario ingresa la letra.
        System.out.print("Ingrese una letra para determinar si es vocal o no: ");
        cadena = leer.next();

        // Se toma solo el primer caracter, sin importar el resto de lo ingresado.
        // y se pasa a mayúsculas para ser más sencillo de comparar.
        letra = cadena.toUpperCase().charAt(0);
        
        // Se determina si la letra ingresada es una vocal o no.
        vocal = esVocal(letra);
        
        // Se imprime por pantalla la información solicitada.
        if (vocal) {
            System.out.println("La letra ingresada es una vocal.");
        } else {
            System.out.println("La letra ingresada NO es una vocal.");
        }
        
    }
    
    // Retorna verdadero si la "letra" ingresada es una vocal.    
    public static boolean esVocal(char letra) {
        
        boolean vocal = false;        
        
        vocal = letra == 'A' ||
                letra == 'E' ||
                letra == 'I' ||
                letra == 'O' ||
                letra == 'U';
        
        return vocal;
        
    }
    
}
