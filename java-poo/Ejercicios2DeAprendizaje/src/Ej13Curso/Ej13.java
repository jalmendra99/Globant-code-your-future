/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 13 - Página 32

Fer V - Jalmendra99@gmail.com

 */
package Ej13Curso;

import Ej13Curso.entidad.Curso;
import Ej13Curso.servicio.CursoService;

public class Ej13 {

    public static void main(String[] args) {

        // Crea un objeto CursoService para crear y modificar objetos Curso.
        CursoService cs = new CursoService();
        
        // Crea un objeto Curso y solicita sus datos al usuario
        Curso cu = cs.crearCurso();

        // Muestra la información por pantalla
        System.out.printf("La ganancia semanal es: $%.2f\n", cs.calcularGananciaSemanal(cu));
    }
}
