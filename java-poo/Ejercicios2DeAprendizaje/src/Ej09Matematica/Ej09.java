/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 9 - Página 30

Método Static y Clase Math
Realizar una clase llamada Matemática que tenga como atributos dos números reales 
con los cuales se realizarán diferentes operaciones matemáticas. 
La clase deber tener un constructor vacío, parametrizado y get y set. 
En el main se creará el objeto y se usará el Math.random para generar los dos números 
y se guardaran en el objeto con su respectivos set.
Deberá además implementar los siguientes métodos:
a) Método devolverMayor() para retornar cuál de los dos atributos tiene el mayor valor
b) Método calcularPotencia() para calcular la potencia del mayor valor de la clase 
    elevado al menor número. Previamente se deben redondear ambos valores.
c) Método calculaRaiz(), para calcular la raíz cuadrada del menor de los dos valores. 
    Antes de calcular la raíz cuadrada se debe obtener el valor absoluto del número.


Fer V - Jalmendra99@gmail.com

 */
package Ej09Matematica;

public class Ej09 {

    public static void main(String[] args) {

        // Creo un objeto Matematica
        Matematica ma = new Matematica();

        // Se generan dos números al azar entre 0 y 10 y se asignan
        ma.setNum1((Math.random() * (10 - 0) + 1) + 0);
        ma.setNum2((Math.random() * (10 - 0) + 1) + 0);

        // Se muestran los dos números por pantalla para referencia
        System.out.printf("El número 1 es %.2f y el número 2 es %.2f\n", ma.getNum1(), ma.getNum2());

        // Se muestra el mayor de los dos números
        System.out.printf("El mayor de los dos números es %.2f\n", ma.devolverMayor());
        System.out.printf("El menor de los dos números es %.2f\n", ma.devolverMenor());

        // Se calcula la potencia del mayor número elevado al menor número.
        System.out.printf("El mayor número elevado al menor número resulta en: %.2f\n", ma.calcularPotencia());

        // Se calcula la raíz cuadrada del menor de los valores.
        System.out.printf("La raíz cuadrada del valor absoluto del menor número es: %.2f\n", ma.calcularRaiz());

    }
}
