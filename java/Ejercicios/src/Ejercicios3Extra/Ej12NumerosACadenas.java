/*
Java - Ejercicios extra
Ejercicio 12 - Página 47
Contador raro. Convertír números a cadenas.

Fer V - Jalmendra99@gmail.com

Necesitamos mostrar un contador con 3 dígitos (X-X-X), que muestre los números del 0-0- 0 al 9-9-9, con la particularidad que cada vez que aparezca un 3 lo sustituya por una E. Ejemplo:
0-0-0
0-0-1
0-0-2
0-0-E
0-0-4
0-1-2
0-1-E
Nota: investigar función equals() y como convertir números a String.

 */
package Ejercicios3Extra;

import Ejercicios2DeAprendizaje.LibFerArrays;
import java.util.Scanner;

public class Ej12NumerosACadenas {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        String cadena;

        for (int numero1 = 0; numero1 < 10; numero1++) {
            for (int numero2 = 0; numero2 < 10; numero2++) {
                for (int numero3 = 0; numero3 < 10; numero3++) {
                    cadena = "";
                    if (numero1 == 3) {
                        cadena = cadena.concat("E");
                    } else {
                        cadena = cadena.concat(Integer.toString(numero1));
                    }
                    cadena = cadena.concat("-");

                    if (numero2 == 3) {
                        cadena = cadena.concat("E");
                    } else {
                        cadena = cadena.concat(Integer.toString(numero2));
                    }
                    cadena = cadena.concat("-");

                    if (numero3 == 3) {
                        cadena = cadena.concat("E");
                    } else {
                        cadena = cadena.concat(Integer.toString(numero3));
                    }

                    System.out.println(cadena);

                }
            }

        }

    }
}
