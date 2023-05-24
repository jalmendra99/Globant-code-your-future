/*
Java - Ejercicios extra
Ejercicio 11 - Página 47
Calcular los dígitos de un número entero.

Fer V - Jalmendra99@gmail.com

Escribir un programa que lea un número entero y devuelva el número 
de dígitos que componen ese número. 
Por ejemplo, si introducimos el número 12345, el programa deberá devolver 5. 
Calcular la cantidad de dígitos matemáticamente utilizando el operador 
de división. 
Nota: recordar que las variables de tipo entero truncan los números o resultados.

 */
package Ejercicios3Extra;

import Ejercicios2DeAprendizaje.LibFerArrays;
import java.util.Scanner;

public class Ej11DigitosDeEntero {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        int numero, cantDigitos;

        // Se informa la premisa al usuario.
        System.out.print("Se solicitará ingresar números para calcular su ");
        System.out.println("cantidad de dígitos. Finalizará cuando ingrese 0.");

        // Se solicita al usuario ingresar números para adivinar.
        // y solo se finaliza cuando ingrese cero.
        do {
            System.out.print("Ingrese un número entero: ");
            numero = leer.nextInt();

            if (numero != 0) {

                // Para calcular los dígitos del entero ingresado
                // se reutiliza una función realizada para un programa anterior.
                cantDigitos = LibFerArrays.cuentaDigitos(numero);

                // Se muestra la información solicitada por pantalla.
                System.out.println("La cantidad de dígitos es " + cantDigitos + ".");
            }

        } while (numero != 0);

    }

}
