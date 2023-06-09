/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 5 - Página 28

Fer V - Jalmendra99@gmail.com

 */
package Ej05CuentaBancaria;

public class Ej05 {

    public static void main(String[] args) {

        // Crea una cuenta
        Cuenta cu = new Cuenta();

        // Agrega los datos a la cuenta
        cu.crearCuenta();

        // Consulta de saldo #1
        cu.consultarSaldo();

        // Ingresa saldo
        System.out.println("Ingresando 1000 a la cuenta...");
        cu.ingresar(1000);

        // Consulta de saldo #2
        cu.consultarSaldo();

        // Retira saldo
        System.out.println("Retirando 600 de la cuenta...");
        cu.retirar(600);

        // Consulta de saldo #3
        cu.consultarSaldo();

        // Intento de Extracción rápida
        // En la cuenta actualmente hay 400, así que
        // Si se pide extraer 100, daría error (por ser 100 más del 20% de 400)
        // Si se pide extraer 70, funcionaría (por ser 70 menos del 20% de 400)
        System.out.println("Intentando extracción rápida de 100");
        cu.extraccionRapida(100);

        System.out.println("Intentando extracción rápida de 70");
        cu.extraccionRapida(70);

        // Consulta de saldo #4
        cu.consultarSaldo();

        // Consulta de datos de la cuenta
        cu.consultarDatos();
    }

}
