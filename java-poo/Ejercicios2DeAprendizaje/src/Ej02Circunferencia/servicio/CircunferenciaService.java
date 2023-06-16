/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 2 - Página 27

Fer V - Jalmendra99@gmail.com

 */
package Ej02Circunferencia.servicio;

import Ej02Circunferencia.entidad.Circunferencia;
import java.util.Scanner;

public class CircunferenciaService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Circunferencia crearCircunferencia() {

        // Crea una circunferencia vacía
        Circunferencia circu = new Circunferencia();

        // Se solicita el radio al usuario
        System.out.println("Ingrese un radio");
        double radio = leer.nextDouble();

        circu.setRadio(radio);

        return circu;
    }

    public void mostrarRadioYPerimetro(Circunferencia c) {
        // Muestra área y perímetro
        System.out.println("El área del círculo es: " + c.getArea());
        System.out.println("Y el perímetro es: " + c.getPerimetro());
    }

}
