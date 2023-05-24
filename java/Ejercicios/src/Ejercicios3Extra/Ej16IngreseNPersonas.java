/*
Java - Ejercicios extra
Ejercicio 16 - Página 48
Ingresar N personas..

Fer V - Jalmendra99@gmail.com

Diseñe una función que pida el nombre y la edad de N personas 
e imprima los datos de las personas ingresadas por teclado 
e indique si son mayores o menores de edad. 
Después de cada persona, el programa debe preguntarle al usuario 
si quiere seguir mostrando personas 
y frenar cuando el usuario ingrese la palabra “No”.

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej16IngreseNPersonas {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int edad;
        String nombre, respuesta;
        boolean continuar = true;

        // Se informa la premisa al usuario.
        System.out.println("Se solicitará ingresar el nombre y edad de <n> personas.");
        System.out.print("Luego se mostrará por pantalla la información ingresada ");
        System.out.println("y si la persona es mayor o menor de edad.");

        
        while (continuar) {

            // Se ingresan los datos del usuario: nombre.
            System.out.print("Ingrese el nombre de una persona: ");
            nombre = leer.next();

            // Se ingresan los datos del usuario: edad (mayor a cero).
            do {
                System.out.print("Ingrese la edad en años: ");
                edad = leer.nextInt();
            } while (edad <= 0);

            // Se imprime la información de la persona.
            System.out.print(nombre + " tiene " + edad + " años y ");

            if (edad > 18) {
                System.out.println("es mayor de edad.");
            } else {
                System.out.println("NO es mayor de edad.");
            }

            // El programa le pregunta al usuario si quiere
            // seguír mostrando personas...
            System.out.println("");
            System.out.print("¿Desea continuar? (No = salir): ");
            respuesta = leer.next();

            // ...y frena cuando el usuario ingrese la palabra "No".
            if (respuesta.toUpperCase().equals("NO")) {
                continuar = false;
            }
        }

    }

}
