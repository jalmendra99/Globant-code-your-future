/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 7 - Página 29

Realizar una clase llamada Persona que tenga los siguientes atributos: 
nombre, edad, sexo ('H' hombre, 'M' mujer, 'O' otro), peso y altura. 
Si el alumno desea añadir algún otro atributo, puede hacerlo. 

Los métodos que se implementarán son:
* Un constructor por defecto. 
* Un constructor con todos los atributos como parámetro.
* Métodos getters y setters de cada atributo.
* Metodo crearPersona(): el método crear persona, le pide los valores de los atributos al usuario 
    y después se le asignan a sus respectivos atributos para llenar el objeto Persona. 
    Además, comprueba que el sexo introducido sea correcto, es decir, H, M o O. 
    Si no es correcto se deberá mostrar un mensaje
* Método calcularIMC(): calculara si la persona está en su peso ideal 
    (peso en kg/(altura^2 en mt2)). Si esta fórmula da por resultado un valor menor que 20, 
    significa que la persona está por debajo de su peso ideal y la función devuelve un -1. 
    Si la fórmula da por resultado un número entre 20 y 25 (incluidos), 
    significa que la persona está en su peso ideal y la función devuelve un 0. 
    Finalmente, si el resultado de la fórmula es un valor mayor que 25 
    significa que la persona tiene sobrepeso, y la función devuelve un 1.
* Método esMayorDeEdad(): indica si la persona es mayor de edad. La función devuelve un booleano.

A continuación, en la clase main hacer lo siguiente:
Crear 4 objetos de tipo Persona con distintos valores, a continuación, llamaremos 
todos los métodos para cada objeto, deberá comprobar si la persona está en su peso ideal, 
tiene sobrepeso o está por debajo de su peso ideal e indicar para cada objeto si la persona es mayor de edad.
Por último, guardaremos los resultados de los métodos calcularIMC y esMayorDeEdad 
en distintas variables, para después en el main, calcular un porcentaje de esas 4 personas


Fer V - Jalmendra99@gmail.com

 */
package Ej07Persona;

import Ej07Persona.entidad.Persona;
import Ej07Persona.servicio.PersonaService;

public class Ej07 {

    public static void main(String[] args) {

        // La cantidad de personas a crear se guarda en 
        // una constante para poder jugar con distintas cantidades.
        final int CANTIDAD = 4;

        // Se crea un objeto PersonaService para crear e interactuar con objetos Persona
        PersonaService ps = new PersonaService();

        // Se crea un array de Persona
        Persona[] personas;
        personas = new Persona[CANTIDAD];

        // Se crean "CANTIDAD" de nuevas instancias de "Persona"
        // y el usuario carga los datos de cada una.
        for (int i = 0; i < CANTIDAD; i++) {
            personas[i] = ps.crearPersona();
        }

        ps.hacerPruebas(personas, CANTIDAD);

    }
}
