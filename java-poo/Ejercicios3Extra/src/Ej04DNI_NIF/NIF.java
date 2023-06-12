/*
Java-POO - Ejercicios extra.
Ejercicio 4 - Página 34

Fer V - Jalmendra99@gmail.com

 */
package Ej04DNI_NIF;

import java.util.Scanner;

public class NIF {

    // Atributos
    private long dni;
    private char letra;
    private final char[] tabla = new char[]{'T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E'};

    // Constructores
    public NIF() {
    }

    public NIF(long dni, char letra) {
        this.dni = dni;
        this.letra = letra;
    }

    // Getters y setters
    public long getDni() {
        return dni;
    }

    public void setDni(long dni) {
        this.dni = dni;
    }

    public char getLetra() {
        return letra;
    }

    public void setLetra(char letra) {
        this.letra = letra;
    }

    // Métodos
    public void crearNif() {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        // Se fuerza a que el dni ingresado contenga entre 1 y 8 dígitos.
        int digitos = -1;
        while (digitos < 0 || digitos > 8) {
            System.out.print("Ingrese el número de DNI : ");
            dni = leer.nextLong();
            digitos = String.valueOf(dni).length();
            if (digitos < 0 || digitos > 8) {
                System.out.println("Cantidad de dígitos incorrecta. Ingrese entre 1 y 8 dígitos.");
            }
        }

        // Asigna el dígito verificador correspondiente al dni ingresado.
        letra = tabla[(int) (dni % 23)];

    }

    public void mostrar() {
        String dniCadena;
        dniCadena = String.valueOf(dni);
        for (int i = dniCadena.length(); i < 8; i++) {
            dniCadena = "0".concat(dniCadena);
        }
        System.out.println("El NIF es: " + dniCadena + "-" + getLetra());
    }

}
