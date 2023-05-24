/*
Java - Ejercicios de aprendizaje
Ejercicio 11 - Página 43
Menú.

Fer V - Jalmendra99@gmail.com

Realizar un programa que pida dos números enteros positivos por teclado 
y muestre por pantalla el siguiente menú:

MENU 
1. Sumar 
2. Restar 
3. Multiplicar 
4. Dividir 
5. Salir 
Elija opción:

El usuario deberá elegir una opción y el programa deberá mostrar 
el resultado por pantalla y luego volver al menú. 
El programa deberá ejecutarse hasta que se elija la opción 5. 
Tener en cuenta que, si el usuario selecciona la opción 5, 
en vez de salir del programa directamente, 
se debe mostrar el siguiente mensaje de confirmación: 
¿Está seguro que desea salir del programa (S/N)? 
Si el usuario selecciona el carácter ‘S’ se sale del programa, 
caso contrario se vuelve a mostrar el menú.

 */
package Ejercicios2DeAprendizaje;

import java.util.Scanner;

public class Ej11Menu {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int numero1, numero2, opcion;
        String siONo;
        double division;
        boolean salir = false;

        // Se informa la premisa al usuario.
        System.out.print("Se pedirá al usuario ingresar dos números enteros ");
        System.out.print("y luego se mostrará un menú con opciones de operaciones ");
        System.out.print("a realizar entre los mismos. ");
        System.out.println("");

        // Se ingresan los dos números enteros
        System.out.print("Ingrese un número entero: ");
        numero1 = leer.nextInt();
        System.out.print("Ingrese otro número entero: ");
        numero2 = leer.nextInt();

        do {
            imprimirMenu();
            opcion = leer.nextInt();

            // Se agrega un salto de línea para prolijidad.
            System.out.println("");

            switch (opcion) {
                case 1: // 1. Sumar
                    System.out.println(numero1 + " + " + numero2 + " = " + (numero1 + numero2));
                    break;
                    
                case 2: // 2. Restar
                    System.out.println(numero1 + " - " + numero2 + " = " + (numero1 - numero2));
                    break;
                    
                case 3: // 3. Multiplicar
                    System.out.println(numero1 + " * " + numero2 + " = " + (numero1 * numero2));
                    break;
                    
                case 4: // 4. Dividir
                    if (numero2 != 0) {

                        // To get a "double" (floating point precision) 
                        // result from an integer division,
                        // you must typecast it, using (double), otherwise
                        // you will only get integer precision from this division.
                        // Source: https://stackoverflow.com/questions/32571909/java-integer-double-division-confusion
                        division = (double) numero1 / numero2;

                        System.out.println(numero1 + " / " + numero2 + " = " + division);

                    } else {
                        System.out.println("No se puede dividir por cero.");
                    }
                    break;
                    
                case 5: // 5. Salir

                    // Se pregunta al usuario si está seguro.
                    System.out.println("¿Está seguro que desea salir del programa (S/N)?: ");
                    siONo = leer.next();

                    // Si está seguro, salir = true hace que se salga del ciclo do..while.
                    if (siONo.toUpperCase().equals("S")) {
                        salir = true;
                    }

                    break;
                    
                default:
                    System.out.println("Opción no reconocida.");
            }

        } while (!salir);

    }

    private static void imprimirMenu() {
        System.out.println("");
        System.out.println("MENU");
        System.out.println("----");
        System.out.println("1. Sumar");
        System.out.println("2. Restar");
        System.out.println("3. Multiplicar");
        System.out.println("4. Dividir");
        System.out.println("5. Salir ");
        System.out.print("Elija opción: ");
    }
}
