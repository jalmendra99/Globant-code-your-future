/*
Java - Ejercicios extra
Ejercicio 1 - Página 46
Convertir minutos a días y horas.

Fer V - Jalmendra99@gmail.com

Dado un tiempo en minutos, calcular su equivalente en días y horas. 
Por ejemplo, si el usuario ingresa 1600 minutos, 
el sistema debe calcular su equivalente: 1 día, 2 horas.

 */
package Ejercicios3Extra;

import java.util.Scanner;

public class Ej01MinutosADiasYHoras {
    
    public static void main(String[] args) {
        
        Scanner leer = new Scanner(System.in);
        
        int minutos, dias, horas, minutosRestantes;
        
        dias = 0;
        horas = 0;
        minutosRestantes = 0;
        
        // El usuario ingresa la cantidad de minutos.
        System.out.print("Ingrese la cantidad de minutos: ");
        minutos = leer.nextInt();
        
        // Se calculan la cantidad de días y horas a partír de los minutos ingresados.
        if (minutos > 60) {
            horas = (int) Math.floor(minutos / 60);
            /* System.out.println(horas + " horas"); */
            minutosRestantes = minutos % 60;
        }
        if (horas > 24) {
            
            dias = (int) Math.floor(horas / 24);
            /* System.out.println(dias +" dias"); */
            horas = horas % 24;
        }
        
        // Se muestra en pantalla la información solicitada.
        System.out.print(minutos + " minutos equivalen a " + dias + " días y " + horas + " horas" );
        System.out.println(" (y " + minutosRestantes + " minutos).");
        
    }
    
}
