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

public class Ej07 {

    public static void main(String[] args) {

        // La cantidad de personas a crear se guarda en 
        // una constante para poder jugar con distintas cantidades.
        final int CANTIDAD = 4;

        // Se crea un array de Persona
        Persona[] personas;
        personas = new Persona[CANTIDAD];

        // Las variables para calcular los porcentajes.
        // Guardarán la cantidad de personas...
        double cantPesoBajo = 0;        // ...debajo de su peso ideal
        double cantPesoCorrecto = 0;    // ...en su peso correcto
        double cantPesoSobre = 0;       // ...con sobrepeso
        double cantMayores = 0;         // ...mayores de edad
        double cantMenores = 0;         // ...menores de edad

        // Se crean "CANTIDAD" de nuevas instancias de "Persona"
        // y el usuario carga los datos de cada una.
        for (int i = 0; i < CANTIDAD; i++) {
            personas[i] = new Persona();
            personas[i].crearPersona();
        }

        // Se ejecutan todos los métodos de cada Persona. Para...
        for (int i = 0; i < CANTIDAD; i++) {

            // ...Imprimir el nombre de la persona actual para referencia.
            System.out.print(personas[i].getNombre() + " ");

            // ...Calcular y verificar su IMC.
            switch (personas[i].calcularIMC()) {
                case -1:
                    cantPesoBajo += 1;
                    System.out.print("está por debajo del peso ideal ");
                    break;
                case 0:
                    cantPesoCorrecto += 1;
                    System.out.print("está en su peso ideal ");
                    break;
                case 1:
                    cantPesoSobre += 1;
                    System.out.print("está por encima de su peso ideal ");
                    break;
                default:
                    throw new AssertionError();
            }

            // ...Verificar si es o no mayor de edad.
            if (personas[i].esMayorDeEdad()) {
                System.out.println("y es mayor de edad.");
                cantMayores += 1;
            } else {
                System.out.println("y NO es mayor de edad.");
                cantMenores += 1;
            }

        }

        // Se calculan los porcentajes solicitados.
        cantPesoBajo *= 100;
        cantPesoCorrecto *= 100;
        cantPesoSobre *= 100;
        cantMayores *= 100;
        cantMenores *= 100;

        cantPesoBajo /= CANTIDAD;
        cantPesoCorrecto /= CANTIDAD;
        cantPesoSobre /= CANTIDAD;
        cantMayores /= CANTIDAD;
        cantMenores /= CANTIDAD;

        // Se muestra la información solicitada por pantalla.
        System.out.println("Los porcentajes solicitados son:");

        // ...debajo de su peso.
        System.out.println("Debajo de su peso ideal: " + cantPesoBajo + "%");

        // ...en su peso ideal.
        System.out.println("En su peso ideal: " + cantPesoCorrecto + "%");

        // ...sobrepeso.
        System.out.println("Por encima de su peso ideal: " + cantPesoSobre + "%");

        // ...mayores de edad.
        System.out.println("Mayores de edad: " + cantMayores + "%");

        // ...menores.
        System.out.println("Menores de edad: " + cantMenores + "%");

    }
}
