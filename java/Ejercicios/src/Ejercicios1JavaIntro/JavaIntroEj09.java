/*
Java Intro - Ejercicio 9 - Do..While.
Fer V - Jalmendra99@gmail.com

EJERCICIO 9

Escriba un programa que lea 20 números. 
Si el número leído es igual a cero se debe salir del bucle 
y mostrar el mensaje "Se capturó el numero cero".  
El programa deberá calcular y mostrar el resultado de la suma 
de los números leídos, pero si el número es negativo no debe sumarse. 
Nota: recordar el uso de la sentencia break.

 */
package Ejercicios1JavaIntro;

import java.util.Scanner;

public class JavaIntroEj09 {

    public static void main(String[] args) {

        // Definición de variables.
        int num;
        int iteracion;
        int sumatoria;

        Scanner leer = new Scanner(System.in);

        // Inicialización de variables.
        iteracion = 0;
        sumatoria = 0;

        // Se realizan 20 iteraciones. 
        // Se sale también si el número ingresado es cero.
        do {
            System.out.print("Ingrese un número (restan " + (20 - iteracion) + "): ");
            num = leer.nextInt();

            // Si el número es negativo o cero, se ignora (no se suma).
            // Si es positivo, se agrega a la sumatoria.
            if (num > 0) {
                sumatoria += num; // Esto es lo mismo que escribir "sumatoria = sumatoria + num".
            }

            // Se suma 1 al número actual de iteración.
            iteracion++;

        } while ((num != 0) && (iteracion < 20));

        System.out.println("La sumatoria es: " + sumatoria + ".");
        
    }

}
