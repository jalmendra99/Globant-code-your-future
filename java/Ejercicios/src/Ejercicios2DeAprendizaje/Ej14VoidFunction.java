/*
Java - Ejercicios de aprendizaje
Ejercicio 14 - Página 44
Funcion que no devuelve nada (void).

Fer V - Jalmendra99@gmail.com

Crea una aplicación que a través de una función nos convierta una cantidad 
de euros introducida por teclado a otra moneda, 
estas pueden ser a dólares, yenes o libras. 
La función tendrá como parámetros, la cantidad de euros 
y la moneda a converir que será una cadena, 
este no devolverá ningún valor y mostrará un mensaje indicando el cambio (void).
El cambio de divisas es:
* 0.86 libras es un 1 €
* 1.28611 $ es un 1 €
* 129.852 yenes es un 1 €

 */
package Ejercicios2DeAprendizaje;

import java.util.Scanner;

public class Ej14VoidFunction {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.        
        double euros;
        int eleccion;
        boolean opcionValida = false;

        // Se informa la premisa al usuario.
        System.out.print("Se pedirá al usuario ingresar un importe en euros ");
        System.out.println("y se calculará el equivalente en libras, pesos o yenes.");

        // Se ingresa el importe en Euros.
        System.out.print("Ingrese un importe en Euros: ");
        euros = leer.nextDouble();

        do {

            System.out.println("Convertir el importe ingresado a otra moneda:");
            System.out.println("1. Libras");
            System.out.println("2. Pesos");
            System.out.println("3. Yenes: ");
            System.out.print("Elija una moneda: ");
            eleccion = leer.nextInt();

        } while (eleccion < 1 || eleccion > 3);

        mostrarCambio(euros, eleccion);

    }

    // convierte el importe ingresado en "euros" a otra moneda
    // elegida según la "opción" seleccionada
    // y muestra por pantalla el resultado.
    public static void mostrarCambio(double euros, int opcion) {

        double resultado = 0.0;
        String moneda;

        switch (opcion) {
            case 1: // Libras.
                resultado = euros * 0.86;
                moneda = "Libras";
                break;
            case 2: // Pesos.
                resultado = euros * 1.28611;
                moneda = "Pesos";
                break;
            case 3: // Yenes.
                resultado = euros * 129.852;
                moneda = "Yenes";
                break;
            default:
                System.out.println("Error en parámetro de función mostrarCambio.");
                moneda = "ERROR";
                break;
        }

        if (moneda.equals("ERROR")) {
            System.out.println("Hubo un error al convertir la moneda.");
        } else {
            System.out.println(euros + " Euros equivalen a " + resultado + " " + moneda + ".");
        }
        
    }
}
