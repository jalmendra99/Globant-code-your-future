/*
Java-POO - Ejercicios extra.
Ejercicio 4 - Página 34

Fer V - Jalmendra99@gmail.com

--

Info: https://es.calcuworld.com/calculadoras-matematicas/calculadora-de-resto/

--

Algunas pruebas:
DNI         División    resto(posición) letra
12341234    536575      9               D 
1234567     53676       19              L
23          1           0               T
24          1           1               R

 */
package Ej04DniNif;

import Ej04DniNif.entidad.Nif;
import Ej04DniNif.servicio.NifService;

public class Ej04 {

    public static void main(String[] args) {

        // Crea un objeto NifService para crear e interactuar con objetos Nif.
        NifService ns = new NifService();

        // Crea un objeto Nif y carga sus datos
        Nif nif1 = ns.crearNif();

        // Muestra la información de la clase Nif
        ns.mostrar(nif1);
    }
}
