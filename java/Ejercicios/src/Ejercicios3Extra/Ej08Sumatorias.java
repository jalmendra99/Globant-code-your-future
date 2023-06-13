/*
Java - Ejercicios extra
Ejercicio 8 - Página 46
Calcular sumatorias de pares, impares, etc.

Fer V - Jalmendra99@gmail.com

Escriba un programa que lea números enteros. 
Si el número es múltiplo de cinco debe detener la lectura 
y mostrar la cantidad de números leídos, la cantidad de números pares 
y la cantidad de números impares. 
Al igual que en el ejercicio anterior los números negativos no deben sumarse. 
Nota: recordar el uso de la sentencia break.

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej08Sumatorias {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        int total, pares, impares;
        int numero;

        // Se informa la premisa al usuario.
        System.out.print("Ingresará números enteros hasta ingresar un ");
        System.out.print("múltiplo de 5. Luego se mostrará el total de ");
        System.out.print("los números leídos y la cantidad de números pares ");
        System.out.println("e impares. El 5 no se tomará en cuenta.");

        total = pares = impares = 0;

        do {
            System.out.print("Ingrese un número entero: ");
            numero = leer.nextInt();

            if (numero % 5 != 0) {
                total++;
                if (numero % 2 == 0) {
                    pares++;
                } else {
                    impares++;
                }
            }

        } while (numero % 5 != 0); // mientras que el número ingresado no 
        // sea múltiplo de 5.

        // Se muestra en pantalla la información solicitada.
        System.out.println("La cantidad total de números ingresados es " + total + ".");
        System.out.println("La cantidad de números pares ingresados es " + pares + ".");
        System.out.println("La cantidad de números impares ingresados es " + impares + ".");

    }

}
