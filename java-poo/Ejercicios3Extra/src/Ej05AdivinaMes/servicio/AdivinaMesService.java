/*
Java-POO - Ejercicios extra.
Ejercicio 5 - Página 35

Fer V - Jalmendra99@gmail.com

 */
package Ej05AdivinaMes.servicio;

import Ej05AdivinaMes.entidad.AdivinaMes;
import java.util.Scanner;

public class AdivinaMesService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public AdivinaMes CreaAdivinaMes() {
        return new AdivinaMes();
    }
    
    public void hacerPruebas(AdivinaMes am) {
        
        String mesIngresado;

        // Se le pide ingresar meses al usuario hasta que adivine uno
        System.out.print("Adivine el mes secreto (hint: es " + am.getMesSecreto() + ").\n");
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
