/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 5 - Página 28

Fer V - Jalmendra99@gmail.com

 */
package Ej05CuentaBancaria;

import java.util.Scanner;

public class Cuenta {

    // Atributos
    private int numeroCuenta;
    private long DNI;
    private int saldoActual;
    private double interes;

    // Constructores
    public Cuenta() {
    }

    public Cuenta(int numeroCuenta, long DNI, int saldoActual, double interes) {
        this.numeroCuenta = numeroCuenta;
        this.DNI = DNI;
        this.saldoActual = saldoActual;
        this.interes = interes;
    }

    // Getters y setters
    public int getNumeroCuenta() {
        return numeroCuenta;
    }

    public void setNumeroCuenta(int numeroCuenta) {
        this.numeroCuenta = numeroCuenta;
    }

    public long getDNI() {
        return DNI;
    }

    public void setDNI(long DNI) {
        this.DNI = DNI;
    }

    public int getSaldoActual() {
        return saldoActual;
    }

    public void setSaldoActual(int saldoActual) {
        this.saldoActual = saldoActual;
    }

    public double getInteres() {
        return interes;
    }

    public void setInteres(double interes) {
        this.interes = interes;
    }

    // Métodos
    public void crearCuenta() {
        Scanner leer = new Scanner(System.in);

        System.out.print("Ingrese el número de cuenta: ");
        numeroCuenta = leer.nextInt();

        System.out.print("Ingrese el DNI: ");
        DNI = leer.nextLong();

        System.out.print("Ingrese el Saldo actual: ");
        saldoActual = leer.nextInt();

        System.out.print("Ingrese el Interés: ");
        interes = leer.nextDouble();
    }

    public void ingresar(double ingreso) {
        saldoActual += ingreso;
    }

    public void retirar(double retiro) {
        if (retiro > saldoActual) {
            saldoActual = 0;
        } else {
            saldoActual -= retiro;
        }
    }

    public void extraccionRapida(double retiro) {
        if (retiro > saldoActual * 0.2) {
            System.out.println("No se puede retirar más del 20% de su saldo en una extracción rápida.");
        } else {
            saldoActual -= retiro;
        }
    }

    public void consultarSaldo() {
        System.out.println("El saldo actual es " + saldoActual);
    }

    public void consultarDatos() {
        System.out.println("Los datos de la cuenta son:");
        System.out.println("Número de cuenta: " + numeroCuenta);
        System.out.println("DNI: " + DNI);
        System.out.println("Saldo actual: " + saldoActual);
        System.out.println("Interés: " + interes);
    }

}
