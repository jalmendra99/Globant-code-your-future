/*
Java - Excepciones - Ejercicios de Aprendizaje.
Ejercicio 5 - Página 10

Fer V - Jalmendra99@gmail.com

 */
package Ej05Adivinanza.entidad;

import java.util.Scanner;

public class Juego {

    // Atributos
    private int nroPreSeleccionado;
    private int intentos;

    // Constructores
    public Juego() {
        seleccionarNumero();
        this.intentos = 0;
    }

    public Juego(int nroPreSeleccionado) {
        this.nroPreSeleccionado = nroPreSeleccionado;
        this.intentos = 0;
    }

    // Getters y setters
    public int getNroPreSeleccionado() {
        return nroPreSeleccionado;
    }

    public void setNroPreSeleccionado(int nroPreSeleccionado) {
        this.nroPreSeleccionado = nroPreSeleccionado;
    }

    public int getIntentos() {
        return intentos;
    }

    // Métodos
    private void seleccionarNumero() {
        this.nroPreSeleccionado = (int) ((Math.random() * 500) + 1);
    }

    public void jugar() {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        boolean adivinado = false;
        int nroIngresado;

//        // Para "hacer trampa" y saber el número de antemano.
//        System.out.println("****************************");
//        System.out.println(this.nroPreSeleccionado);
//        System.out.println("****************************");

        System.out.println("Adivine el número elegido..\n");
        while (!adivinado) {

            System.out.print("Ingrese un número entre 1 y 500: ");
            intentos++;
            nroIngresado = leer.nextInt();

            if (nroIngresado == this.nroPreSeleccionado) {
                System.out.println("\n¡Correcto! Adivinó luego de " + this.intentos + " intentos.");
                adivinado = true;
            } else if (nroIngresado > this.nroPreSeleccionado) {
                System.out.println("**Incorrecto. El número elegido es menor.**");
            } else if (nroIngresado < this.nroPreSeleccionado) {
                System.out.println("**Incorrecto. El número elegido es mayor.**");
            }

        }

    }

}
