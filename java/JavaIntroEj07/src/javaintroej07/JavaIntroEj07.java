/*
Java Intro - Ejercicio 7 - Switch.
Fer V - Jalmendra99@gmail.com

EJERCICIO 7 

Considera que estás desarrollando una web para una empresa que fabrica motores 
(suponemos que se trata del tipo de motor de una bomba para mover fluidos). 
Definir una variable tipoMotor y permitir que el usuario ingrese un valor 
entre 1 y 4. El programa debe mostrar lo siguiente: 
o Si el tipo de motor es 1, 
    mostrar un mensaje indicando “La bomba es una bomba de agua”. 
o Si el tipo de motor es 2, 
    mostrar un mensaje indicando “La bomba es una bomba de gasolina”.
o Si el tipo de motor es 3, 
    mostrar un mensaje indicando “La bomba es una bomba de hormigón”.
o Si el tipo de motor es 4, 
    mostrar un mensaje indicando “La bomba es una bomba de pasta alimenticia”.
o Si no se cumple ninguno de los valores anteriores 
    mostrar el mensaje “No existe un valor válido para tipo de bomba”

 */
package javaintroej07;

import java.util.Scanner;

public class JavaIntroEj07 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        System.out.print("Ingrese un valor entre 1 y 4: ");
        int num = leer.nextInt();

        switch (num) {
            case 1:
                // o Si el tipo de motor es 1, 
                // mostrar un mensaje indicando “La bomba es una bomba de agua”. 
                System.out.println("La bomba es una bomba de agua.");
                break;
            case 2:
                // o Si el tipo de motor es 2, 
                // mostrar un mensaje indicando “La bomba es una bomba de gasolina”.
                System.out.println("La bomba es una bomba de gasolina.");
                break;
            case 3:
                // o Si el tipo de motor es 3, 
                //  mostrar un mensaje indicando “La bomba es una bomba de hormigón”.
                System.out.println("La bomba es una bomba de hormigón.");
                break;
            case 4:
                // o Si el tipo de motor es 4, 
                //  mostrar un mensaje indicando “La bomba es una bomba de pasta alimenticia”.
                System.out.println("La bomba es una bomba de pasta alimenticia.");
                break;
            default:
                // o Si no se cumple ninguno de los valores anteriores 
                //     mostrar el mensaje “No existe un valor válido para tipo de bomba”
                System.out.println("No existe un valor válido para tipo de bomba");

        }

    }

}
