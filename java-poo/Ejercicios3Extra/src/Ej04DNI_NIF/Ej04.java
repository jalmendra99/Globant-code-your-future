/*
Java-POO - Ejercicios extra.
Ejercicio 4 - Página 34

Fer V - Jalmendra99@gmail.com

--
&
Algunas pruebas:
DNI         División    resto(posición) letra
12341234    536575      9               D 
1234567     53676       19              L
23          1           0               T
24          1           1               R

 */
package Ej04DNI_NIF;

public class Ej04 {

    public static void main(String[] args) {

        // Crea una clase NIF
        NIF nif = new NIF();

        // Carga los datos
        nif.crearNif();

        // Muestra la información de la clase NIF
        nif.mostrar();
    }

}
