/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 9 - Página 30

Fer V - Jalmendra99@gmail.com

 */
package Ej09Matematica.entidad;

public class Matematica {

    // Atributos
    private double num1;
    private double num2;

    // Constructores
    public Matematica() {
    }

    public Matematica(double num1, double num2) {
        this.num1 = num1;
        this.num2 = num2;
    }

    // Getters y setters
    public double getNum1() {
        return num1;
    }

    public void setNum1(double num1) {
        this.num1 = num1;
    }

    public double getNum2() {
        return num2;
    }

    public void setNum2(double num2) {
        this.num2 = num2;
    }

    // Métodos
    public double devolverMayor() {
        return num1 > num2 ? num1 : num2;

// Esto equivale a la línea de arriba.        
//        if (num1 > num2) {
//            return num1;
//        } else {
//            return num2;
//        }
    }

    public double devolverMenor() {
        return num1 > num2 ? num2 : num1;
    }

    public double calcularPotencia() {
        int mayor = (int) this.devolverMayor();
        int menor = (int) this.devolverMenor();
        return Math.pow(mayor, menor);
    }

    public double calcularRaiz() {
        double menor = this.devolverMenor();
        menor = Math.abs(menor);
        return Math.sqrt(menor);
    }

}
