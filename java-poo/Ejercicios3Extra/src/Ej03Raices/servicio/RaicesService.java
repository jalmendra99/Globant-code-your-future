/*
Java-POO - Ejercicios extra.
Ejercicio 3 - Página 33

Fer V - Jalmendra99@gmail.com

 */
package Ej03Raices.servicio;

import Ej03Raices.entidad.*;

public class RaicesService {

    public Raices crearRaices() {
        return new Raices();
    }

    public Raices crearRaices(double a, double b, double c) {
        return new Raices(a, b, c);
    }

    public void mostrar(Raices ra) {
        System.out.print("\nCon coeficientes: a=" + ra.getA() + ", b=" + ra.getB() + ", c=" + ra.getC() + "... ");
        switch (ra.getCantidadRaices()) {
            case 2:
                System.out.println("La ecuación de segundo grado tiene dos soluciones.");
                System.out.printf("Raíz 1 = %.2f\n", ra.getRaiz1());
                System.out.printf("Raíz 2 = %.2f\n", ra.getRaiz2());
                break;
            case 1:
                System.out.println("La ecuación de segundo grado tiene una solución.");
                System.out.printf("Raíz = %.2f\n", ra.getRaiz1());
                break;
            case 0:
                System.out.println("La ecuación de segundo grado no tiene solución.");
                break;
            default:
                throw new AssertionError();
        }
    }
}
