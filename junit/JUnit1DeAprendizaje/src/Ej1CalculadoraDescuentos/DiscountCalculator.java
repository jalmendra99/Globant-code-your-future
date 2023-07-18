/*
Java-JUnit - Ejercicios de aprendizaje.
Ejercicio 1 - Página 10

Fer V - Jalmendra99@gmail.com

1. Calculadora de Descuentos:
Crea una clase DiscountCalculator que calcule el descuento aplicado a un producto. 
Escribe pruebas unitarias para verificar que el cálculo del descuento 
se realiza correctamente para diferentes escenarios (por ejemplo, descuento del 10%, 
descuento máximo, sin descuento, etc.).

 */
package Ej1CalculadoraDescuentos;

public class DiscountCalculator {

    // si recibe importe = 100 y descuento = 10 -> resultado esperado = 90.   
    public static double calcularDescuento(double importe, double porcentajeDescuento) {
        return (importe - (importe * porcentajeDescuento / 100));
    }
}

