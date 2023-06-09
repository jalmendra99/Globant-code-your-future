/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio # - Página #
NOMBRE_DE_EJERCICIO

Fer V - Jalmendra99@gmail.com

 */
package Ej03Operacion;

public class Ej03 {

    public static void main(String[] args) {

        // Crea una Operación
        Operacion op = new Operacion();

        // Carga los datos de la Operación
        op.crearOperacion();

        // Muestra suma, resta, multiplicación y división
        System.out.println("Suma: " + op.getNumero1() + " + " + op.getNumero2() + " = " + op.sumar());
        System.out.println("Resta: " + op.getNumero1() + " - " + op.getNumero2() + " = " + op.restar());
        System.out.println("Multiplicación: " + op.getNumero1() + " * " + op.getNumero2() + " = " + op.multiplicar());
        System.out.println("División: " + op.getNumero1() + " / " + op.getNumero2() + " = " + op.dividir());
    }
}
