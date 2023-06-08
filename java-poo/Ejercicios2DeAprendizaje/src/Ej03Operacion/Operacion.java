/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 3 - Página 27

Fer V - Jalmendra99@gmail.com

 */
package Ej03Operacion;

import java.util.Scanner;

public class Operacion {

    private int numero1;
    private int numero2;

    Scanner leer = new Scanner(System.in);

    public Operacion(int numero1, int numero2) {
        this.numero1 = numero1;
        this.numero2 = numero2;
    }

    public int getNumero1() {
        return numero1;
    }

    public void setNumero1(int numero1) {
        this.numero1 = numero1;
    }

    public int getNumero2() {
        return numero2;
    }

    public void setNumero2(int numero2) {
        this.numero2 = numero2;
    }

    public void crearOperacion() {
        System.out.println("Ingrese el número1");
        numero1 = leer.nextInt();
        System.out.println("Ingrese el número2");
        numero2 = leer.nextInt();
    }
    
    public int sumar() {
        return numero1 + numero2;
    }
    
    public int restar() {
        return numero1 - numero2;
    }
    
    public int multiplicar() {
        if (numero1 != 0 && numero2 !=0) {
            return numero1 * numero2;
        } else {
            return 0;
        }
    }

}
