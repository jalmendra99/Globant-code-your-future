/*
Java-POO - Ejercicios extra.
Ejercicio 5 - Página 35

Crea una clase en Java donde declares una variable de tipo array de Strings 
que contenga los doce meses del año, en minúsculas. 
A continuación, declara una variable mesSecreto de tipo String, 
y hazla igual a un elemento del array (por ejemplo, mesSecreto = mes[9]. 
El programa debe pedir al usuario que adivine el mes secreto. 
Si el usuario acierta mostrar un mensaje, y si no lo hace, 
pedir que vuelva a intentar adivinar el mes secreto.  
Un ejemplo de ejecución del programa podría ser este:
Adivine el mes secreto. Introduzca el nombre del mes en minúsculas: febrero
No ha acertado. Intente adivinarlo introduciendo otro mes: agosto
¡Ha acertado!


Fer V - Jalmendra99@gmail.com

 */
package Ej05AdivinaMes;

import java.util.Scanner;

public class Ej05 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        String mesIngresado;

        // Se crea un nuevo objeto AdivinaMes
        AdivinaMes am = new AdivinaMes();

        // Se le pide ingresar meses al usuario hasta que adivine uno
        System.out.print("Adivine el mes secreto (hint: es " + am.getMesSecreto() + "). ");
        System.out.print("Introduzca el nombre del mes en minúsculas: ");
        mesIngresado = leer.nextLine();

        while (!am.mesSecretoEs(mesIngresado)) {
            System.out.print("No ha acertado. ");
            System.out.print("Intente adivinarlo introduciendo otro mes: ");
            mesIngresado = leer.nextLine();
        }
        System.out.println("¡Há acertado!");
    }

}
