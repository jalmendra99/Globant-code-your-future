/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 7 - Página 29

Fer V - Jalmendra99@gmail.com

 */
package Ej07Persona.servicio;

import Ej07Persona.entidad.Persona;
import java.util.Scanner;

public class PersonaService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Persona crearPersona() {

        Persona pe = new Persona();

        System.out.print("Ingrese el nombre: ");
        pe.setNombre(leer.next());

        System.out.print("Ingrese la edad: ");
        pe.setEdad(leer.nextInt());

        char sexo = ' ';
        while (sexo != 'H' && sexo != 'M' && sexo != 'O') {
            System.out.print("Ingrese el sexo (H/M/O): ");
            sexo = leer.next().charAt(0);

            if (sexo != 'H' && sexo != 'M' && sexo != 'O') {
                System.out.println("La opción ingresada es inválida. Use H/M/O.");
            }
        }
        pe.setSexo(sexo);

        System.out.print("Ingrese el peso en Kg: ");
        pe.setPeso(leer.nextDouble());

        System.out.print("Ingrese la altura en metros: ");
        pe.setAltura(leer.nextDouble());

        return pe;
    }

    // Esta sería la función que pidieron en el enunciado
    // que se debería llamar (incorrectamente) "calcularImc"
    public int tipoDeImc(double imc) {
        if (imc < 20) { // Underweight
            return -1;
        }
        if (imc > 25) { // Overweight
            return 1;
        }
        // Normal
        return 0;
    }

    // Recibe una CANTIDAD de Persona en el arreglo personas
    // y realiza varias pruebas con las mismas:
    // Muestra el nombre, calcula el % de mayores y menores de edad,
    // y calcula el % de personas con sobrepeso, peso correcto y por debajo    
    public void hacerPruebas(Persona[] personas, int CANTIDAD) {
        
        // Las variables para calcular los porcentajes.
        // Guardarán la cantidad de personas...
        double cantPesoBajo = 0;        // ...debajo de su peso ideal
        double cantPesoCorrecto = 0;    // ...en su peso correcto
        double cantPesoSobre = 0;       // ...con sobrepeso
        double cantMayores = 0;         // ...mayores de edad
        double cantMenores = 0;         // ...menores de edad

        // Se ejecutan todos los métodos de cada Persona. Para...
        for (int i = 0; i < CANTIDAD; i++) {

            // ...Imprimir el nombre de la persona actual para referencia.
            System.out.print(personas[i].getNombre() + " ");

            // ...Calcular y verificar su IMC.
            switch (tipoDeImc(personas[i].getImc())) {
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
