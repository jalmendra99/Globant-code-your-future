/*
Java-JUnit - Ejercicios de aprendizaje.
Ejercicio 1 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej1CalculadoraDescuentos;

public class DiscountCalculator {

    // si recibe importe = 100 y descuento = 10 -> resultado esperado = 90.   
    public static double calcularDescuento(double importe, double porcentajeDescuento) {
        return (importe - (importe * porcentajeDescuento / 100));
    }
}

