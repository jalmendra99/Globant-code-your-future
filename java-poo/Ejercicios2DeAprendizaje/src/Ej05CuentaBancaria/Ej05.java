/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 5 - Página 28

Realizar una clase llamada Cuenta (bancaria) que debe tener como mínimo los atributos: 
numeroCuenta (entero), el DNI del cliente (entero largo) y el saldo actual (entero). 
Las operaciones asociadas a dicha clase son:
a) Constructor por defecto y constructor con DNI, saldo, número de cuenta e interés.
b) Agregar los métodos getters y setters correspondientes
c) Metodo para crear un objeto Cuenta, pidiéndole los datos al usuario.
d) Método ingresar(double ingreso): el método recibe una cantidad de dinero a ingresar 
    y se la sumara a saldo actual.
e) Método retirar(double retiro): el método recibe una cantidad de dinero a retirar 
    y se la restará al saldo actual. Si la cuenta no tiene la cantidad de dinero a retirar, 
    se pondrá el saldo actual en 0.
f) Método extraccionRapida(): le permitirá sacar solo un 20% de su saldo. 
    Validar que el usuario no saque más del 20%.
g) Método consultarSaldo(): permitirá consultar el saldo disponible en la cuenta.
h) Método consultarDatos(): permitirá mostrar todos los datos de la cuenta

Fer V - Jalmendra99@gmail.com

 */
package Ej05CuentaBancaria;

import Ej05CuentaBancaria.entidad.Cuenta;
import Ej05CuentaBancaria.servicio.CuentaService;

public class Ej05 {

    public static void main(String[] args) {

        // Crea un objeto CuentaService para interactuar con objetos Cuenta.
        CuentaService cs = new CuentaService();

        // Crea una cuenta nueva y solicita al usuario cargar sus atributos.
        Cuenta cuenta1 = cs.crearCuenta();

        // Hace varias pruebas con la cuenta 
        // (ingreso, extracción, extracción express, consulta saldo y muestra info de cuenta)
        cs.hacerPruebas(cuenta1);
    }

}
