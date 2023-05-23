/*
Java - Ejercicios extra
Ejercicio 9 - Página 47
Calcular division y cociente usando restas.

Fer V - Jalmendra99@gmail.com

Simular la división usando solamente restas. 
Dados dos números enteros mayores que uno, realizar un algoritmo 
que calcule el cociente y el residuo usando sólo restas. 
Método: Restar el dividendo del divisor hasta obtener un resultado 
menor que el divisor, este resultado es el residuo, 
y el número de restas realizadas es el cociente.
Por ejemplo: 50 / 13:
50 – 13 = 37 una resta realizada
37 – 13 = 24 dos restas realizadas
24 – 13 = 11 tres restas realizadas
dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.
¿Aún no lo entendiste? Recomendamos googlear división con restas sucesivas.

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej09DivisionConRestas {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);

        int dividendo, divisor, cociente, resto;

        dividendo = divisor = 0;

        // Se informa la premisa al usuario.
        System.out.print("Se solicitará ingresar dos números enteros y se ");
        System.out.print("procederá a dividir el primero por el segundo ");
        System.out.println("utilizando el método de división por restas sucesivas.");

        // Se solicita la información al usuario...
        // Se fuerza a que el dividendo sea mayor o igual a cero.
        do {
            System.out.print("Ingrese un número entero positivo para el dividendo: ");
            dividendo = leer.nextInt();
        } while (dividendo < 0);

        // Se fuerza a que el divisor sea mayor a cero.
        do {
            System.out.print("Ingrese otro número entero positivo para el divisor: ");
            divisor = leer.nextInt();
        } while (divisor <= 0);

        // Se calcula la división usando restas.
        cociente = 0;
        resto = dividendo;
        // Mientras que el resto sea mayor al divisor.
        while (resto - divisor >= 0) {
            resto = resto - divisor;
            cociente += 1;
        }

        // Se muestra en pantalla la información solicitada.
        System.out.print("El cociente entre " + dividendo + " y " + divisor);
        System.out.print(" es " + cociente + " y el resto es " + resto + ".");
        System.out.println("");

    }

}
