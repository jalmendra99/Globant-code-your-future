/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 5 - Página 28

Fer V - Jalmendra99@gmail.com

 */
package Ej05CuentaBancaria.entidad;

public class Cuenta {

    // Atributos
    private int numeroCuenta;
    private long DNI;
    private double saldoActual;
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

    public double getSaldoActual() {
        return saldoActual;
    }

    public void setSaldoActual(double saldoActual) {
        this.saldoActual = saldoActual;
    }

    public double getInteres() {
        return interes;
    }

    public void setInteres(double interes) {
        this.interes = interes;
    }

    // Métodos
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
}
