/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 6 - Página 28

Programa Nespresso. Desarrolle una clase Cafetera con los atributos 
capacidadMaxima (la cantidad máxima de café que puede contener la cafetera) 
y cantidadActual (la cantidad actual de café que hay en la cafetera). 
Implemente, al menos, los siguientes métodos:
* Constructor predeterminado o vacío
* Constructor con la capacidad máxima y la cantidad actual
* Métodos getters y setters.
* Método llenarCafetera(): hace que la cantidad actual sea igual a la capacidad máxima.
* Método servirTaza(int): se pide el tamaño de una taza vacía, 
    el método recibe el tamaño de la taza y simula la acción de servir la taza 
    con la capacidad indicada. Si la cantidad actual de café “no alcanza” 
    para llenar la taza, se sirve lo que quede. El método le informará al usuario 
    si se llenó o no la taza, y de no haberse llenado en cuanto quedó la taza.
* Método vaciarCafetera(): pone la cantidad de café actual en cero.
* Método agregarCafe(int): se le pide al usuario una cantidad de café, 
    el método lo recibe y se añade a la cafetera la cantidad de café indicada.

Fer V - Jalmendra99@gmail.com

 */
package Ej06Nespresso;

import java.util.Scanner;

public class Ej06 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        // Crea una Cafetera (con cantidad máxima y cantidad actual)
        Cafetera ca = new Cafetera(100, 50);

        // Muestra la cantidad actual
        System.out.println("La cafetera tiene " + ca.getCantidadActual());

        // Llena la Cafetera
        System.out.println("Llenando la cafetera...");
        ca.llenarCafetera();

        // Muestra la cantidad actual
        System.out.println("La cafetera tiene " + ca.getCantidadActual());

        // Sirve una taza
        System.out.print("Ingrese el tamaño de la taza donde desea servir café: ");
        ca.servirTaza(leer.nextInt());

        // Muestra la cantidad actual
        System.out.println("La cafetera tiene " + ca.getCantidadActual());

        // Vacía la Cafetera
        System.out.println("Vaciando la cafetera...");
        ca.vaciarCafetera();

        // Muestra la cantidad actual
        System.out.println("La cafetera tiene " + ca.getCantidadActual());

        // Agrega café a la Cafetera
        System.out.print("Ingrese una cantidad de c30afé a agregar en la cafetera: ");
        ca.agregarCafe(leer.nextInt());

        // Muestra la cantidad actual
        System.out.println("La cafetera tiene " + ca.getCantidadActual());
    }

}
