/*

ejercicio2:

Escribir un programa que pida tu nombre, lo guarde en una variable y lo muestre por pantalla.


 */
package ejerciciosEnClase30;

import java.util.Scanner;

public class Ejercicio2 {

    public static void main(String[] args) {
        
        Scanner entradaDeTeclado = new Scanner(System.in);
        
        String nombre;
        
        System.out.println("Por favor ingrese su nombre: ");
        nombre = entradaDeTeclado.nextLine();
        
        System.out.println("El nombre ingresado es " + nombre);
        
    }
    
}
