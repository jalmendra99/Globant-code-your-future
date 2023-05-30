/*
Java - Ejercicios extra
Ejercicio 24 - Página 50
Fibonacci.

Fer V - Jalmendra99@gmail.com

Realizar un programa que complete un vector con los N primeros números 
de la sucesión de Fibonacci. Recordar que la sucesión de Fibonacci 
es la sucesión de los siguientes números:
1, 1, 2, 3, 5, 8, 13, 21, 34, ...
Donde cada uno de los números se calcula sumando los dos anteriores a él. 
Por ejemplo:
La sucesión del número 2 se calcula sumando (1+1)
Análogamente, la sucesión del número 3 es (1+2),
Y la del 5 es (2+3),
Y así sucesivamente…
La sucesión de Fibonacci se puede formalizar de acuerdo a la siguiente fórmula:
Fibonaccin = Fibonaccin-1 + Fibonaccin-2 para todo n>1
Fibonaccin = 1 para todo n<=1
Por lo tanto, si queremos calcular el término “n” 
debemos escribir una función que reciba como parámetro el valor de “n” 
y que calcule la serie hasta llegar a ese valor.
Para conocer más acerca de la serie de Fibonacci consultar el siguiente link: 
https://quantdare.com/numeros-de-fibonacci/


--

Nota Fer: Sequencia de wikipedia: 
Posición: 1, 2, 3, 4, 5, 6, 7,  8,  9, 10, 11, 12, 13...
Valor:    1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...
https://en.wikipedia.org/wiki/Fibonacci_sequence

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej24Fibonacci {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        // Definición de variables.
        int num, resultado;

        // Inicialización de variables.
        num = 0;
        resultado = 0;

        // Se informa la premisa al usuario.
        System.out.print("Se solicitará ingresar un número entero y calculará y mostrará el ");
        System.out.print("término correspondiente a ese número en la secuencia de Fibonacci.\n");

        // Se solicita la información al usuario.	
        // Se fuerza a que el número ingresado sea mayor o igual a cero.
        do {
            System.out.print("Ingrese un número entero positivo: ");
            num = leer.nextInt();
        } while (num < 0);

        // Se calcula el término correspondiente al número ingresado usando la función solicitada.
        resultado = fibonacci(num);

        // Y se presenta el resultado por pantalla.
        System.out.println("El término " + num + " en la secuencia de Fibonacci es " + resultado + ".");

    }

    // Retorna el término 'n' de la sucesión de fibonacci.
    // Retorna Falso sino.
    public static int fibonacci(int n) {
        ////////System.out.println(n);
        if (n == 0) {
            return 0;
        } else if (n == 1) {
            return 1;
        } else {
            return (fibonacci(n - 1) + fibonacci(n - 2));
        }

    }

}
