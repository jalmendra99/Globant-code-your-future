/*
Java-POO - Ejercicios extra.
Ejercicio 4 - Página 34

Fer V - Jalmendra99@gmail.com

 */
package Ej04DniNif.servicio;

import Ej04DniNif.entidad.*;
import java.util.Scanner;

public class NifService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Nif crearNif() {

        Nif n = new Nif();
        
        // Se fuerza a que el dni ingresado contenga entre 1 y 8 dígitos.
        int digitos = -1;
        long dni;
        while (digitos < 0 || digitos > 8) {
            System.out.print("Ingrese el número de DNI : ");
            dni = leer.nextLong();
            digitos = String.valueOf(dni).length();
            if (digitos < 0 || digitos > 8) {
                System.out.println("Cantidad de dígitos incorrecta. Ingrese entre 1 y 8 dígitos.");
            }
            n.setDni(dni);
        }

        // Asigna el dígito verificador correspondiente al dni ingresado.
        char letra = n.getTabla()[(int) (n.getDni() % 23)];
        n.setLetra(letra);
        
        return n;
    }

    public void mostrar(Nif n) {
        String dniCadena;
        dniCadena = String.valueOf(n.getDni());
        for (int i = dniCadena.length(); i < 8; i++) {
            dniCadena = "0".concat(dniCadena);
        }
        System.out.println("El NIF es: " + dniCadena + "-" + n.getLetra());
    }

}
