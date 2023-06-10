/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 13 - Página 32

Fer V - Jalmendra99@gmail.com

 */
package Ej13Curso;

public class Ej13 {

    public static void main(String[] args) {

        // Crea un Curso.
        Curso cu = new Curso();

        // Carga los datos en el curso
        cu.crearCurso();

        // Muestra la información por pantalla
        System.out.println("La ganancia semanal es: $" + cu.calcularGananciaSemanal());
    }

}
