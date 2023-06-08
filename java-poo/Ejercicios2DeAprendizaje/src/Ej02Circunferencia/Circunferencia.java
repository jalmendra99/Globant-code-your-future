/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 2 - Página 27


Fer V - Jalmendra99@gmail.com

 */

package Ej02Circunferencia;

import java.util.Scanner;


public class Circunferencia {

    private double radio;

    Scanner leer = new Scanner(System.in);
    
    public Circunferencia(double radio) {
        this.radio = radio;
    }

    public double getRadio() {
        return radio;
    }

    public void setRadio(double radio) {
        this.radio = radio;
    }
    
    ///////////////////////////////
    // REVISAR ESTO
    ///////////////////////////////
    public void crearCircunferencia() {
        System.out.println("Ingrese un radio");
        radio = leer.nextDouble();
    }
    
    public double area() {
        return Math.PI * radio * radio ;
    }
    
    public double perimetro() {
        return 2 * Math.PI * radio;
    }
            
}
