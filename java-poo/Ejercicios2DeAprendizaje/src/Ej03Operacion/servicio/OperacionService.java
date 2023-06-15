/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 3 - Página 27

Fer V - Jalmendra99@gmail.com

 */
package Ej03Operacion.servicio;

import Ej03Operacion.entidad.Operacion;
import java.util.Scanner;

public class OperacionService {

    public Operacion crearOperacion() {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        Operacion op = new Operacion();

        // Solicita ingresar los dos operandos al usuario.
        System.out.println("Ingrese el número1");
        op.setNumero1(leer.nextDouble());
        System.out.println("Ingrese el número2");
        op.setNumero2(leer.nextDouble());

        return op;
    }

    public void mostrarResultados(Operacion op) {
        System.out.println("Suma: " + op.getNumero1() + " + " + op.getNumero2() + " = " + op.sumar());
        System.out.println("Resta: " + op.getNumero1() + " - " + op.getNumero2() + " = " + op.restar());
        System.out.println("Multiplicación: " + op.getNumero1() + " * " + op.getNumero2() + " = " + op.multiplicar());
        System.out.println("División: " + op.getNumero1() + " / " + op.getNumero2() + " = " + op.dividir());
    }

}
