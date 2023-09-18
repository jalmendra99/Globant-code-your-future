/*
Java - Excepciones - Ejercicios de Aprendizaje.
Ejercicio 4 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej04Division;

import Ej03Division.entidad.DivisionNumero;
import java.util.Scanner;

public class Ej04 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        Integer dividendo, divisor;
        DivisionNumero div = new DivisionNumero();

        try {
            System.out.println("Ingresará dos números enteros para realizar una división..");

            System.out.print("\nIngrese el dividendo: ");
            div.setDividendo(Integer.parseInt(leer.next()));

            System.out.print("\nIngrese el divisor: ");
            div.setDivisor(Integer.parseInt(leer.next()));

            System.out.printf("\nEl resultado de dividir %d / %d = %.2f\n", div.getDividendo(), div.getDivisor(), div.dividir());

        } catch (Exception e) {
            System.out.println(e.getMessage());
            System.out.println(e);
        }

    }

}
