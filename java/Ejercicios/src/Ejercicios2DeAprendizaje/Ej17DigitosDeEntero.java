/*
Java - Ejercicios de aprendizaje
Ejercicio 17 - Página 44
Calcular dígitos de un entero.

Fer V - Jalmendra99@gmail.com

Recorrer un vector de N enteros contabilizando cuántos números son de 1 dígito, 
cuántos de 2 dígitos, etcétera (hasta 5 dígitos).


-------------------------------------------------------------------------
Este fuente usa métodos de la clase LibFerArrays
que se encuentra en este mismo paquete (EjerciciosDeAprendizaje)
por lo que para llamar a los mismso se usaría: LibFerArrays.NOMBREDEMETODO()
-------------------------------------------------------------------------

 */
package Ejercicios2DeAprendizaje;

import java.util.Scanner;

public class Ej17DigitosDeEntero {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int n, numDigitosAleatorio, maximo, minimo;

        int[] digitos = new int[5];

        // Se inicializa el vector de dígitos en cero para todas sus posiciones.
        for (int i = 0; i < 5; i++) {
            digitos[i] = 0;
        }

        // Se informa la premisa al usuario.
        System.out.print("Se solicitará ingresar un número entero n ");
        System.out.print("para generar un vector de enteros de tamaño n ");
        System.out.print("que se llenará de números enteros elegidos al azar ");
        System.out.print("entre 0 y 99999 (entre 1 y 5 dígitos). ");
        System.out.print("Luego se contabilizará cuantos números son de 1, 2, ");
        System.out.println("3, 4 y 5 dígitos.");

        // Se Pide al usuario ingresar el número "n" para dimensionar el vector.
        System.out.print("Ingrese un número entero: ");
        n = leer.nextInt();

        // Se define y dimensiona el vector con el número "n" ingresado.
        int[] vector = new int[n];

        // Se llena el vector con valores aleatorios 
        // de números positivos entre 1 y 5 dígitos.
        for (int i = 0; i < n; i++) {
            vector[i] = LibFerArrays.AzarPorCantDigitos(1, 5);
        }

        int cantDigitos;

        // Para cada valor del vector, se calcula la cantidad de dígitos
        // y se acumula en la variable correspondiente.
        // Ej: Digitos[0] contendrá la cantidad de números del vector
        // que tienen 1 dígito.
        // Digitos[1] contendrá la cantidad de los que tienen 2 dígitos, etc.
        // hasta digitos[4] que contendrá los que tienen 5 dígitos.
        for (int i = 0; i < n; i++) {

            cantDigitos = LibFerArrays.cuentaDigitos(vector[i]);
            cantDigitos--;

            digitos[cantDigitos]++;
        }

        // Se muestra la información solicitada por pantalla.
        for (int i = 0; i < 5; i++) {
            System.out.println("Hay " + digitos[i] + " números de " + (i + 1) + " dígitos.");
        }

        // Se muestra el vector por pantalla para verificar visualmente.
        System.out.println("El vector es:");
        LibFerArrays.imprimeVectorEnteros(vector, n);

    }

}
