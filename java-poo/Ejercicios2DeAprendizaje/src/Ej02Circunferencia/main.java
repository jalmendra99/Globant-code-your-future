/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio # - Página #
NOMBRE_DE_EJERCICIO

Fer V - Jalmendra99@gmail.com

 */
package Ej02Circunferencia;

public class main {

    public static void main(String[] args) {

        // Crea circunferencia
        Circunferencia circu = new Circunferencia();

        // Carga el radio de la circunferencia.
        circu.crearCircunferencia();

        // Muestra área y perímetro
        System.out.println("El área del círculo es: " + circu.area());
        System.out.println("Y el perímetro es: " + circu.perimetro());

    }

}
