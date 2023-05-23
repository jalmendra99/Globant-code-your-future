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
package EjerciciosDeAprendizaje;

import java.util.Scanner;

public class Ej14VoidFunction {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.        
        double euros;
        String eleccion;
        boolean opcionValida = false;

        // Se informa la premisa al usuario.
        System.out.print("Se pedirá al usuario ingresar un importe en euros ");
        System.out.println("y se calculará el equivalente en libras, pesos o yenes.");

        // Se ingresa el importe en Euros.
        System.out.print("Ingrese un importe en Euros: ");
        euros = leer.nextDouble();

        // Se pregunta a que formato convertir el importe ingresado.
        eleccion = "";

        do {

            System.out.println("Ingrese la moneda a convertir el importe ingresado.");
            System.out.print("libras, pesos o yenes: ");
            eleccion = leer.next();

            opcionValida = opcionValida || eleccion.toUpperCase().equals("LIBRAS");
            opcionValida = opcionValida || eleccion.toUpperCase().equals("PESOS");
            opcionValida = opcionValida || eleccion.toUpperCase().equals("YENES");

        } while (!opcionValida);

        mostrarCambio(euros, eleccion);

    }

    public static void mostrarCambio(double euros, String moneda) {

        double resultado = 0.0;

        switch (moneda.toUpperCase()) {
            case "LIBRAS":
                resultado = euros * 0.86;
                break;
            case "PESOS":
                resultado = euros * 1.28611;
                break;
            case "YENES":
                resultado = euros * 129.852;
                break;
            default:
                System.out.println("Error en parámetro de función mostrarCambio.");
                break;
        }

        System.out.println(euros + " Euros equivalen a " + resultado + " " + moneda + ".");
    }
}
