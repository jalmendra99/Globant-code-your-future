/*
Java-POO - Ejercicios extra.
Ejercicio 5 - Página 35

Crea una clase en Java donde declares una variable de tipo array de Strings 
que contenga los doce meses del año, en minúsculas. 
A continuación, declara una variable mesSecreto de tipo String, 
y hazla igual a un elemento del array (por ejemplo, mesSecreto = mes[9]. 
El programa debe pedir al usuario que adivine el mes secreto. 
Si el usuario acierta mostrar un mensaje, y si no lo hace, 
pedir que vuelva a intentar adivinar el mes secreto.  
Un ejemplo de ejecución del programa podría ser este:
Adivine el mes secreto. Introduzca el nombre del mes en minúsculas: febrero
No ha acertado. Intente adivinarlo introduciendo otro mes: agosto
¡Ha acertado!


Fer V - Jalmendra99@gmail.com

 */
package Ej05AdivinaMes;

import Ej05AdivinaMes.entidad.AdivinaMes;
import Ej05AdivinaMes.servicio.AdivinaMesService;

public class Ej05 {

    public static void main(String[] args) {

        // Se crea un objeto AdivinaMesService para interactuar con objetos AdivinaMes
        AdivinaMesService as = new AdivinaMesService();

        // Se crea un objeto AdivinaMes
        AdivinaMes am = as.CreaAdivinaMes();

        // Se le pide ingresar meses al usuario hasta que adivine uno
        as.hacerPruebas(am);
    }
}
