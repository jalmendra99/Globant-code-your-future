/*
ejercicio 4

Dada una cantidad de grados centígrados se debe mostrar su equivalente 
en grados Fahrenheit. La fórmula correspondiente es: F = 32 + (9 * C / 5).

 */
package Ejercicios4EnClase;

import java.util.Scanner;

public class Clase30Ejercicio4 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        double centigrados, farenheit;

        System.out.println("Ingrese una temperatura en grados centígrados: ");
        centigrados = leer.nextDouble();
        
        farenheit = 32 + (9 * centigrados / 5);
        
        System.out.println("En Farenheit son: " + farenheit );
    }

}
