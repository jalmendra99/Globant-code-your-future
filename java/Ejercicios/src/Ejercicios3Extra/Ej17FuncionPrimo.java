/*
Java - Ejercicios extra
Ejercicio 17 - Página 48
Función numero primo.

Fer V - Jalmendra99@gmail.com

Crea una aplicación que nos pida un número por teclado 
y con una función se lo pasamos por parámetro 
para que nos indique si es o no un número primo, 
debe devolver true si es primo, sino false.


 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej17FuncionPrimo {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int numero;
        boolean numeroEsPrimo;

        // Se ingresa un número entero positivo.
        do {
            System.out.print("Ingrese un número entero para ver si es primo: ");
            numero = leer.nextInt();
        } while (numero < 0);

        numeroEsPrimo = esPrimo(numero);

        if (numeroEsPrimo) {
            System.out.println("El número " + numero + " es primo.");
        } else {
            System.out.println("El número " + numero + " NO es primo.");
        }
        
    }

    // Returna verdadero si el "numero" recibido es primo. Falso si no es.
    public static boolean esPrimo(int numero) {

        // Se recorren todos los números en el rango entre el "numero" y 1
        // (sin incluírlos), para ver si "numero" tiene algún tercer múltiplo.
        // Si aparece un tercer múltiplo, entonces el "numero" no es primo 
        // y la función retorna falso.
        for (int i = (numero - 1); i >= 2; i--) {
            if (numero % i == 0) {
                return false;
            }
        }

        // Si se llegó hasta acá, no se encontró un tercer múltiplo,
        // entonces el "numero" no es primo y la función retorna verdadero.
        return true;
    }

}
