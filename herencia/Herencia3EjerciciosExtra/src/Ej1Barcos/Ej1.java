/*
Java - Herencia - Ejercicios de aprendizaje extra.
Ejercicio 1 - Página 16

Fer V - Jalmendra99@gmail.com

 */
package Ej1Barcos;

import Ej1Barcos.entidades.Alquiler;
import Ej1Barcos.entidades.Motorizado;
import Ej1Barcos.entidades.Velero;
import Ej1Barcos.entidades.Yate;
import java.time.LocalDate;

public class Ej1 {

    public static void main(String[] args) {

        // Creo un barco de cada uno y calculo un alquiler para cada uno
        
        // velero: int nroMastiles, String matricula, double eslora, int anioFabricacion
        Velero ve = new Velero(2, "ABCDEF1234", 20, 1998);
        
        // Motorizado: int potenciaEnCV, String matricula, double eslora, int anioFabricacion
        Motorizado mo = new Motorizado(200, "XYZ1234AB", 35, 2001);
        
        // Yate: int potenciaEnCV, int nroCamarotes, String matricula, double eslora, int anioFabricacion
        Yate ya = new Yate(400, 6, "ABC494949LV", 60, 2018);
        
        // Creo un alquiler para cada barco...
        // Alquiler: String nombre, double documento, LocalDate fechaAlquiler, LocalDate fechaDevolucion, String posicionAmarre, Barco barcoAlquilado
        Alquiler a1 = new Alquiler("Juan Cartera", "12345443", LocalDate.of(2023, 9, 6), LocalDate.of(2023, 10, 6), "Amarra1", ve);
        Alquiler a2 = new Alquiler("Ernesto Paso", "44443123", LocalDate.of(2023, 9, 6), LocalDate.of(2023, 9, 8), "Amarra2", mo);
        Alquiler a3 = new Alquiler("Gonzalo Mota", "12345342", LocalDate.of(2023, 9, 6), LocalDate.of(2023, 9, 16), "Amarra3", ya);
        
        System.out.print(a1);
        System.out.printf("Precio de Alquiler: $ %.2f\n", a1.calcularPrecioAlquiler());
        System.out.print(a2);
        System.out.printf("Precio de Alquiler: $ %.2f\n", a2.calcularPrecioAlquiler());
        System.out.print(a3);
        System.out.printf("Precio de Alquiler: $ %.2f\n", a3.calcularPrecioAlquiler());
        
    }

}


/**
 * En un puerto se alquilan amarres para barcos de distinto tipo. 
 * Para cada Alquiler se guarda: el nombre, documento del cliente, la fecha de alquiler, 
 * fecha de devolución, la posición del amarre y el barco que lo ocupará.
 * Un Barco se caracteriza por: su matrícula, su eslora en metros y año de fabricación.
 * Sin embargo, se pretende diferenciar la información de algunos tipos de barcos especiales:
 * 
 * Número de mástiles para veleros. 
 * Potencia en CV para barcos a motor. 
 * Potencia en CV y número de camarotes para yates de lujo.
 * 
 * Un alquiler se calcula multiplicando el número de días de ocupación 
 * (calculado con la fecha de alquiler y devolución), por un valor módulo de cada barco 
 * (obtenido simplemente multiplicando por 10 los metros de eslora).
 * 
 * En los barcos de tipo especial el módulo de cada barco se calcula sacando el módulo normal 
 * y sumándole el atributo particular de cada barco. 
 * 
 * En los veleros se suma el número de mástiles, 
 * en los barcos a motor se le suma la potencia en CV 
 * y en los yates se suma la potencia en CV y el número de camarotes.
 * 
 * Utilizando la herencia de forma apropiada, deberemos programar en Java, las clases 
 * y los métodos necesarios que permitan al usuario elegir 
 * el barco que quiera alquilar y mostrarle el precio final de su alquiler.
 */