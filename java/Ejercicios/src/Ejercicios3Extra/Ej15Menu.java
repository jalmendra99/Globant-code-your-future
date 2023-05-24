/*
Java - Ejercicios extra
Ejercicio 15 - Página 48
Calcular promedios de un vector.

Fer V - Jalmendra99@gmail.com

Crea una aplicación que le pida dos números al usuario 
y este pueda elegir entre sumar, restar, multiplicar y dividir. 
La aplicación debe tener una función para cada operación matemática 
y deben devolver sus resultados para imprimirlos en el main.


--
Nota: Se modificó levemente el ejercicio Ejercicios2DeAprendizaje.Ej11Menu
- Se agregaron las cuatro funciones para suma, resta, multiplicación y división
  que retornan resultados, tal como se pide en este nuevo enunciado.

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej15Menu {

    public static void main(String[] args) {

//        String[] nada = new String[0];        
//        Ejercicios2DeAprendizaje.Ej11Menu.main(nada);
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
                    System.out.println(numero1 + " + " + numero2 + " = " + sumar(numero1, numero2));
                    break;

                case 2: // 2. Restar
                    System.out.println(numero1 + " - " + numero2 + " = " + restar(numero1, numero2));
                    break;

                case 3: // 3. Multiplicar
                    System.out.println(numero1 + " * " + numero2 + " = " + multiplicar(numero1, numero2));
                    break;

                case 4: // 4. Dividir
                    if (numero2 != 0) {

                        // To get a "double" (floating point precision) 
                        // result from an integer division,
                        // you must typecast it, using (double), otherwise
                        // you will only get integer precision from this division.
                        // Source: https://stackoverflow.com/questions/32571909/java-integer-double-division-confusion
                        division = (double) numero1 / numero2;

                        System.out.println(numero1 + " / " + numero2 + " = " + dividir(numero1, numero2));

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

    public static int sumar(int num1, int num2) {
        return num1 + num2;
    }

    public static int restar(int num1, int num2) {
        return num1 - num2;
    }

    public static int multiplicar(int num1, int num2) {
        return num1 * num2;
    }

    public static double dividir(int num1, int num2) {
        return (double) num1 / num2;
    }

}
