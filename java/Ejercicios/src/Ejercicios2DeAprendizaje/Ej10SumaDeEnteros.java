/*
Java - Ejercicios de aprendizaje
Ejercicio 10 - Página 43
Suma de enteros.

Fer V - Jalmendra99@gmail.com

Escriba un programa en el cual se ingrese un valor límite positivo, 
y a continuación solicite números al usuario hasta que la suma 
de los números introducidos supere el límite inicial.

 */
package Ejercicios2DeAprendizaje;

import java.util.Scanner;

public class Ej10SumaDeEnteros {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int numero, sumatoria, limite;

        // Se informa la premisa al usuario.
        System.out.print("Se pedirá al usuario ingresar un número que será ");
        System.out.print("usado como valor límite positivo, y a continuación ");
        System.out.print("se solicitarán números hasta que la suma de los ");
        System.out.print("mismos supere el límite inicial.");
        System.out.println("");

        // Se ingresa el límite.
        System.out.print("Ingrese un número para usarse como límite superior: ");
        limite = leer.nextInt();

        sumatoria = 0;
        do {
            System.out.print("Ingrese un número para sumar: ");
            numero = leer.nextInt();

            sumatoria += numero;

        } while (sumatoria < limite);

        // Se muestran el límite y la sumatoria por pantalla.
        System.out.println("La sumatoria fué de: " + sumatoria + ".");

    }
}
