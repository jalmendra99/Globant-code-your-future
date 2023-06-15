/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 5 - Página 28

Fer V - Jalmendra99@gmail.com

 */
package Ej05CuentaBancaria.servicio;

import Ej05CuentaBancaria.entidad.Cuenta;
import java.util.Scanner;

public class CuentaService {

    Scanner leer = new Scanner(System.in);

    // Métodos
    public Cuenta crearCuenta() {

        // Crea una cuenta
        Cuenta cu = new Cuenta();

        // Solicita los datos al usuario.
        System.out.print("Ingrese el número de cuenta: ");
        cu.setNumeroCuenta(leer.nextInt());

        System.out.print("Ingrese el DNI: ");
        cu.setDNI(leer.nextLong());

        System.out.print("Ingrese el Saldo actual: ");
        cu.setSaldoActual(leer.nextDouble());

        System.out.print("Ingrese el Interés: ");
        cu.setInteres(leer.nextDouble());

        return cu;
    }

    public void consultarSaldo(Cuenta c) {
        System.out.println("El saldo actual es " + c.getSaldoActual());
    }

    public void consultarDatos(Cuenta c) {
        System.out.println("Los datos de la cuenta son:");
        System.out.println("Número de cuenta: " + c.getNumeroCuenta());
        System.out.println("DNI: " + c.getDNI());
        System.out.println("Saldo actual: " + c.getSaldoActual());
        System.out.println("Interés: " + c.getInteres());
    }

    public void ingresar(Cuenta c) {
        System.out.print("Ingrese la cantidad de $ para agregar a la cuenta: ");
        c.ingresar(leer.nextDouble());
    }

    public void retirar(Cuenta c) {
        System.out.print("Ingrese la cantidad de $ a retirar de la cuenta: ");
        c.retirar(leer.nextDouble());
    }

    public void extraccionRapida(Cuenta c) {
        System.out.print("Ingrese la cantidad de $ a retirar usando extracción rápida: ");
        double retiro = leer.nextDouble();
        if (retiro > (c.getSaldoActual() * 0.2)) {
            System.out.println("No se puede retirar más del 20% de su saldo en una extracción rápida.");
            System.out.println("Su saldo actual es $" + c.getSaldoActual());
        } else {
            c.setSaldoActual((c.getSaldoActual() - retiro));
        }
    }
}
