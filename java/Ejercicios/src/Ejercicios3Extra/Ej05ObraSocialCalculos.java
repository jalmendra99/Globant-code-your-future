/*
Java - Ejercicios extra
Ejercicio 5 - Página 46
Cálculos para socios de una obra social.

Fer V - Jalmendra99@gmail.com

Una obra social tiene tres clases de socios:
* Los socios tipo ‘A’ abonan una cuota mayor, 
  pero tienen un 50% de descuento en todos los tipos de tratamientos.
* Los socios tipo ‘B’ abonan una cuota moderada 
  y tienen un 35% de descuento para los mismos tratamientos que los socios del tipo A.
* Los socios que menos aportan, los de tipo ‘C’, 
  no reciben descuentos sobre dichos tratamientos.

Solicite una letra (carácter) que representa la clase de un socio, 
y luego un valor real que represente el costo del tratamiento 
(previo al descuento) y determine el importe en efectivo a pagar por dicho socio.
o

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej05ObraSocialCalculos {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        String letra = "";
        boolean letraValida;
        double costo, descuento, precio;

        // El usuario ingresa la letra para determinar el tipo de socio.
        do {
            System.out.println("Ingrese una letra para determinar el tipo de socio.");
            System.out.print("(A, B, C): ");

            letra = leer.nextLine();

            letraValida
                    = letra.toUpperCase().equals("A")
                    || letra.toUpperCase().equals("B")
                    || letra.toUpperCase().equals("C");

        } while (!letraValida);

        System.out.print("Ingrese el costo del tratamiento: ");
        costo = leer.nextDouble();

        descuento = 0;

        switch (letra.toUpperCase().substring(0, 1)) {
            case "A":
                descuento = 0.5;
                break;
            case "B":
                descuento = 0.35;
                break;
            case "C":
                descuento = 0;
                break;
            default:
                System.out.println("La letra ingresada no es válida.");
        }

        precio = costo - (costo * descuento);

        // Se imprime por pantalla la información solicitada.
        System.out.println("Un tratamiento con costo " + costo + " para un socio tipo <" + letra + "> tiene un precio de " + precio);
    }

}
