/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio # - Página #
NOMBRE_DE_EJERCICIO

Fer V - Jalmendra99@gmail.com

 */
package Ej04Rectangulo;

public class Ej04 {

    public static void main(String[] args) {

        // Crea un Rectángulo
        Rectangulo rec = new Rectangulo();

        // Carga lo datos del Rectángulo
        rec.crearRectangulo();

        // Calcula y muestra la superficie del Rectángulo
        System.out.println("La superficie del rectángulo es " + rec.superficie() + " m2.");

        // Calcula y muestra el perímetro del Rectángulo
        System.out.println("El perímetro del rectángulo es " + rec.perimetro() + " m2.");

        // Dibuja el Rectángulo
        rec.dibujaRectangulo();
    }
}
