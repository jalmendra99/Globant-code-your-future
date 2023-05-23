/*
Java Intro - Ejercicio 12 - Procedimiento (funciones que retornan void).
Fer V - Jalmendra99@gmail.com

EJERCICIO 12
Crea un procedimiento EsMultiplo que reciba los dos números 
pasados por el usuario, validando que el primer numero múltiplo del segundo 
e imprima si el primer numero es múltiplo del segundo, 
sino informe que no lo son.

--

Fer: Resuelto previamente en PSeInt como:


// Funcion EsMultiplo. 
// Retorna: Verdadero si num2 es múltiplo de num1. Falso si no.
Funcion retorno = EsMultiplo (num1, num2) 
	definir retorno Como Logico
	retorno = num2 mod num1 == 0
fin funcion


 */
package Ejercicios1JavaIntro;

import java.util.Scanner;

public class JavaIntroEj12 {

    public static void main(String[] args) {

        // Definición de variables.
        int num1, num2;

        Scanner leer = new Scanner(System.in);

        // Se informa la premisa al usuario.
        System.out.print("Ingresaran dos números enteros y se verificará si ");
        System.out.print("el segundo número ingresado es múltiplo del primero.");
        System.out.println("");
        System.out.print("Ingrese un número entero: ");
        num1 = leer.nextInt();
        System.out.print("Ingrese otro número entero para ver si es múltiiplo del primero: ");
        num2 = leer.nextInt();

        EsMultiplo(num1, num2);        
    }

    // Recibe dos números enteros: num1 y num2,
    // e imprime por pantalla si num2 es múltiplo de num1 o no.
    public static void EsMultiplo(int num1, int num2) {

        // Si el resto de dividir num2 por num1 es cero
        // entonces num2 es múltiplo de num1.
        if (num2 % num1 == 0) {
            System.out.println("El número " + num2 + " es múltiplo de " + num1 + ".");
        } else {
            System.out.println("El número " + num2 + " NO es múltiplo de " + num1 + ".");
        }
    }
}
