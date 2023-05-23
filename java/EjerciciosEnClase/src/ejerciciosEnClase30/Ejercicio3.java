/*
ejercicio 3

Escribir un programa que pida una frase y la muestre toda en mayúsculas 
y después toda en minúsculas. 
Nota: investigar la función toUpperCase() y toLowerCase() en Java.

 */
package ejerciciosEnClase30;

import java.util.Scanner;

public class Ejercicio3 {

    public static void main(String[] args) {
        
        Scanner leer = new Scanner(System.in);
        String nombre;
        
        System.out.println("Por favor ingrese una frase: ");
        nombre = leer.nextLine();
        
        System.out.println("La frase en mayusculas: " + nombre.toUpperCase());
        System.out.println("La frase en minúsculas: " + nombre.toLowerCase());
        
        // ctrl + shift + flechita abajo (duplica la línea actual)
        
    }
    
}
