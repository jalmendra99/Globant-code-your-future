/*
Java - Ejercicios extra
Ejercicio 20 - Página 48
Llenar un vector con valores aleatorios usando una función.

Fer V - Jalmendra99@gmail.com

Crear una función que rellene un vector con números aleatorios, 
pasándole un arreglo por parámetro. 
Después haremos otra función o procedimiento que imprima el vector.


-------------------------------------------------------------------------
Este fuente usa métodos de la clase LibFerArrays
que se encuentra en el paquete EjerciciosDeAprendizaje.
por lo que para llamar a los mismos se usaría: LibFerArrays.NOMBREDEMETODO()
-------------------------------------------------------------------------

 */
package Ejercicios3Extra;

import Ejercicios2DeAprendizaje.LibFerArrays;
import java.util.Scanner;

public class Ej20VectorLlenarAleatorio {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int tamanio;
        int[] vector;

        // Se informa la premisa al usuario.
        System.out.print("Se solicitará ingresar un número entero <n> y se ");
        System.out.println("generará un vector de enteros de tamaño <n>.");
        System.out.print("Luego se llenará automáticamente con valores al azar ");
        System.out.print("y finalmente se mostrará por pantalla.");

        // Se ingresa un número entero positivo.
        // Se fuerza a que sea mayor que cero.
        do {
            System.out.print("\nIngrese el tamaño del vector: ");
            tamanio = leer.nextInt();
        } while (tamanio <= 0);

        // Se dimensiona el vector con el tamaño ingresado.
        vector = new int[tamanio];

        // Se llena el vector con los enteros elegidos al azar,
        // entre 1 y 100 inclusive, usando la función solicitada.
        LibFerArrays.llenaVectorEnterosAzar(vector, tamanio, 1, 100);

        // Se muestra en pantalla la información solicitada.
        // Se imprime por pantalla el vector para verificar visualmente.        
        System.out.println("\nEl vector1 es:");
        LibFerArrays.imprimeVectorEnteros(vector, tamanio);

    }

}
