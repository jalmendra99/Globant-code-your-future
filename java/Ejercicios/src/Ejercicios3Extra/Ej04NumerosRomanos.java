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

            switch (numero) {
                case 1:
                    romano = "I";
                    break;
                case 2:
                    romano = "II";
                    break;
                case 3:
                    romano = "III";
                    break;
                case 4:
                    romano = "IV";
                    break;
                case 5:
                    romano = "V";
                    break;
                case 6:
                    romano = "VI";
                    break;
                case 7:
                    romano = "VII";
                    break;
                case 8:
                    romano = "VIII";
                    break;
                case 9:
                    romano = "IX";
                    break;
                case 10:
                    romano = "X";
                    break;
                default:
                    System.out.println("El número ingresado no es válido.");
            }
        } while (numero < 1 || numero > 10);
        
        // Se imprime por pantalla la información solicitada.
        System.out.println(numero + " en arábicos, equivale a " + romano + " en números romanos.");

    }

}
