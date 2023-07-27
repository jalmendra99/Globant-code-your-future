/*
Java - colecciones - Ejercicios de Aprendizaje extra.
Ejercicio 1 - Página 25

Diseñar un programa que lea una serie de valores numéricos enteros desde el teclado 
y los guarde en un ArrayList de tipo Integer. La lectura de números termina 
cuando se introduzca el valor -99. Este valor no se guarda en el ArrayList. 
A continuación, el programa mostrará por pantalla el número de valores 
que se han leído, su suma y su media (promedio).

Fer V - Jalmendra99@gmail.com

 */
package Ej1SumaYPromedio;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

public class Ej1 {

    public static void main(String[] args) {

        ArrayList<Integer> numeros = new ArrayList();

        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        // Ingreso de valores..
        System.out.println("Se ingresarán números por teclado y se terminará al ingresar un -99.");
        System.out.println("Luego se mostrarán por pantalla el número de valores leído, su suma y su media.");
        Integer numero;
        double promedio = 0;

        do {
            System.out.print("Ingrese un número: ");
            numero = leer.nextInt();

            if (numero != -99) {
                numeros.add(numero);
            }
        } while (numero != -99);

        Integer cantidad = numeros.size();

        Integer sumatoria = 0;
        for (Iterator<Integer> iterator = numeros.iterator(); iterator.hasNext();) {
            sumatoria += iterator.next();
            
        }

        if (cantidad > 0) {
            promedio = (double) sumatoria / cantidad;
        }
        
        System.out.println("\nResultados:");
        System.out.println("El número de valores leído es: " + cantidad);
        System.out.println("La suma de los valores leídos es: " + sumatoria);
        System.out.printf("La media de los valores leídos es: %.2f\n", promedio);

    }

}
