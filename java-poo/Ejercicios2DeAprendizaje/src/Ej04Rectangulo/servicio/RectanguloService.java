/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 4 - Página 28

Fer V - Jalmendra99@gmail.com

 */
package Ej04Rectangulo.servicio;

import Ej04Rectangulo.entidad.Rectangulo;
import java.util.Scanner;

public class RectanguloService {

    // Métodos
    public Rectangulo crearRectangulo() {
        
        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        
        Rectangulo r = new Rectangulo();
        
        System.out.print("Ingrese la base del rectángulo en metros: ");
        r.setBase(leer.nextDouble());
        System.out.print("Ingrese la altura del rectángulo en metros: ");
        r.setAltura(leer.nextDouble());
        
        return r;
    }

    public void mostrarSuperficieYPerimetro(Rectangulo r) {
        System.out.println("La superficie del rectángulo es " + r.getSuperficie()+ " m2.");
        System.out.println("El perímetro del rectángulo es " + r.getPerimetro() + " m.");
    }

    public void dibujaRectangulo(Rectangulo r) {
        for (int i = 0; i < r.getAltura(); i++) {
            for (int j = 0; j < r.getBase(); j++) {
                if (i == 0 || i == (r.getAltura() - 1) || j == 0 || j == (r.getBase() - 1)) {
                    System.out.print("*");
                } else {
                    System.out.print(" ");
                }
            }
            System.out.println("");
        }
    }
}
