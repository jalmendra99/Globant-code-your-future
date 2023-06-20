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

import Ej09Matematica.entidad.Matematica;
import Ej09Matematica.servicio.MatematicaService;

public class Ej09 {

    public static void main(String[] args) {

        // Crea un objeto MatematicaService para crear e interactuar con objetos Matematica
        MatematicaService ms = new MatematicaService();

        // Crea un objeto Matematica y llena sus dos números al azar.
        Matematica ma = ms.CrearMatematica();

        // Se realizan varias pruebas con el objeto Matematica creado.
        ms.hacerPruebas(ma);

    }
}
