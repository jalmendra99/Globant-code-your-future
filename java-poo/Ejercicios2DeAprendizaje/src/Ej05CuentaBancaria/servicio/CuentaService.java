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
        System.out.println("\nEl saldo actual es " + c.getSaldoActual());
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
        } else {
            c.setSaldoActual((c.getSaldoActual() - retiro));
        }
    }

    public void hacerPruebas(Cuenta cuenta1) {
        boolean salir = false;
        int opcion;
        do {
            System.out.println("\nMenú de operaciones:");
            System.out.println("1. Consulta de saldo");
            System.out.println("2. Ingresar saldo");
            System.out.println("3. Retirar saldo");
            System.out.println("4. Extracción rápida");
            System.out.println("5. Consulta de datos de la cuenta");
            System.out.println("6. Salir");
            System.out.print("Ingrese una opción: ");
            opcion = leer.nextInt();
            switch (opcion) {
                case 1: // Consulta de Saldo
                    consultarSaldo(cuenta1);
                    break;
                case 2: // Ingresar saldo
                    ingresar(cuenta1);
                    consultarSaldo(cuenta1);
                    break;
                case 3: // Retirar saldo
                    retirar(cuenta1);
                    consultarSaldo(cuenta1);
                    break;
                case 4: // Extracción rápida
                    extraccionRapida(cuenta1);
                    consultarSaldo(cuenta1);
                    break;
                case 5: // Consulta de datos de la cuenta
                    consultarDatos(cuenta1);
                    break;
                case 6: // Salir
                    System.out.println("Saliendo...");
                    salir = true;
                    break;
                default:
                    System.out.println("Opción incorrecta. Ingrese un número entre 1 y 6.");
                    break;
            }
        } while (!salir);
    }
}
