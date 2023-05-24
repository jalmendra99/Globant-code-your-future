/*
Java - Ejercicios extra
Ejercicio 4 - Página 46
Convertir números arábicos a romanos.

Fer V - Jalmendra99@gmail.com

Elaborar un algoritmo en el cuál se ingrese un número entre 1 y 10 
y se muestre su equivalente en romano.

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej04NumerosRomanos {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        int numero;
        String romano = "";

        // El usuario ingresa un número entre 1 y 10.
        do {
            System.out.println("Ingrese un número entero entre 1 y 10");
            System.out.print("para pasarlo a números romanos: ");
            numero = leer.nextInt();

        } while (numero < 1 || numero > 10);

        // Se convierte a número romano.
        romano = ArabicoARomano(numero);

        // Se imprime por pantalla la información solicitada.
        if (romano.equals("no es válido")) {
            System.out.println("Hubo un error al convertír el número ingresado.");
        } else {
            System.out.println(numero + " en arábicos, equivale a " + romano + " en números romanos.");
        }

    }

    // Retorna una cadena que corresponde al equivalente en números romanos
    // del entero ingresado.    
    public static String ArabicoARomano(int numeroArabico) {

        switch (numeroArabico) {
            case 1:
                return "I";
            case 2:
                return "II";
            case 3:
                return "III";
            case 4:
                return "IV";
            case 5:
                return "V";
            case 6:
                return "VI";
            case 7:
                return "VII";
            case 8:
                return "VIII";
            case 9:
                return "IX";
            case 10:
                return "X";
            default:
                return "no es válido.";
        }
    }

}
