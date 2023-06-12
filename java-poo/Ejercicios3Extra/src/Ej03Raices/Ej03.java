/*
Java-POO - Ejercicios extra.
Ejercicio 3 - Página 33

Fer V - Jalmendra99@gmail.com

 */
package Ej03Raices;


public class Ej03 {
    
    public static void main(String[] args) {
        
        // Se crea un objeto Raices y se le asignan los 3 coeficientes.
        Raices ra1 = new Raices(1, 1, 1); // Discriminante = -3 <-- (<0) no tiene solución.
        Raices ra2 = new Raices(1, 2, 1); // Discriminante = 0 <-- (=0) Tiene 1 solución.
        Raices ra3 = new Raices(1, 3, 1); // Discriminante = 5 <-- (>0) Tiene 2 soluciones.
        
        // Se calculan y muestran las raíces
        System.out.println("Ecuación 1: ");
        ra1.calcular();
        System.out.println("Ecuación 2: ");
        ra2.calcular();
        System.out.println("Ecuación 3: ");
        ra3.calcular();
    }
}
