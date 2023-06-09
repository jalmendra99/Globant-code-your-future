/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 9 - Página 30

Fer V - Jalmendra99@gmail.com

 */
package Ej09Matematica;

public class main {

    public static void main(String[] args) {

        // Creo un objeto Matematica
        Matematica ma = new Matematica();

        // Se generan dos números al azar entre 0 y 10 y se asignan
        ma.setNum1((Math.random() * (10 - 0) + 1) + 0);
        ma.setNum2((Math.random() * (10 - 0) + 1) + 0);

        // Se muestran los dos números por pantalla para referencia
        System.out.println("El número 1 es " + ma.getNum1() + " y el número 2 es " + ma.getNum2());

        // Se muestra el mayor de los dos números
        System.out.println("El mayor de los dos números es " + ma.devolverMayor());
        System.out.println("El menor de los dos números es " + ma.devolverMenor());

        // Se calcula la potencia del mayor número elevado al menor número.
        System.out.println("El mayor número elevado al menor número resulta en: " + ma.calcularPotencia());

        // Se calcula la raíz cuadrada del menor de los valores.
        System.out.println("La raíz cuadrada del valor absoluto del menor número es: " + ma.calcularRaiz());

    }
}
