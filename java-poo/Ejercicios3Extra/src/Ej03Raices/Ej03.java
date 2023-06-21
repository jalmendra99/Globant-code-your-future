/*
Java-POO - Ejercicios extra.
Ejercicio 3 - Página 33

Fer V - Jalmendra99@gmail.com

 */
package Ej03Raices;

import Ej03Raices.entidad.Raices;
import Ej03Raices.servicio.RaicesService;

public class Ej03 {

    public static void main(String[] args) {

        // Se crea un objeto RaicesService para crear y manipular Raices
        RaicesService rs = new RaicesService();

        // Se crean tres raíces y se les asignan los 3 coeficientes a cada una.
        Raices ra1 = rs.crearRaices(1, 1, 1);   // Discriminante = -3   <-- (<0) no tiene solución.
        Raices ra2 = rs.crearRaices(1, 2, 1);   // Discriminante = 0    <-- (=0) Tiene 1 solución.
        Raices ra3 = rs.crearRaices(1, 3, 1);   // Discriminante = 5    <-- (>0) Tiene 2 soluciones.

        // Se calculan y muestran las raíces
        rs.mostrar(ra1);
        rs.mostrar(ra2);
        rs.mostrar(ra3);
    }
}
