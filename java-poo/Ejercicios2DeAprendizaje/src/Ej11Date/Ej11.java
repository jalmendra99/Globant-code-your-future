/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 11 - Página 31

Pongamos de lado un momento el concepto de POO, ahora vamos a trabajar 
solo con la clase Date. En este ejercicio deberemos instanciar en el main, 
una fecha usando la clase Date, para esto vamos a tener que crear 3 variables, 
dia, mes y anio que se le pedirán al usuario para poner el constructor 
del objeto Date. Una vez creada la fecha de tipo Date, deberemos mostrarla 
y mostrar cuantos años hay entre esa fecha y la fecha actual, 
que se puede conseguir instanciando un objeto Date con constructor vacío.
Ejemplo fecha: Date fecha = new Date(anio, mes, dia);
Ejemplo fecha actual: Date fechaActual = new Date();


--
Info: https://docs.oracle.com/javase/8/docs/api/java/util/Date.html

 In all methods of class Date that accept or return year, month, date, 
hours, minutes, and seconds values, the following representations are used:

    A year y is represented by the integer y - 1900.
    A month is represented by an integer from 0 to 11; 0 is January, 
        1 is February, and so forth; thus 11 is December.
    A date (day of month) is represented by an integer from 1 to 31 in the usual manner.
    An hour is represented by an integer from 0 to 23. 
        Thus, the hour from midnight to 1 a.m. is hour 0, and the hour from noon to 1 p.m. is hour 12.
    A minute is represented by an integer from 0 to 59 in the usual manner.
    A second is represented by an integer from 0 to 61; 
        the values 60 and 61 occur only for leap seconds and even then 
        only in Java implementations that actually track leap seconds correctly. 
        Because of the manner in which leap seconds are currently introduced, 
        it is extremely unlikely that two leap seconds will occur in the same minute, 
        but this specification follows the date and time conventions for ISO C. 

[...]

Constructor and Description

Date()
Allocates a Date object and initializes it so that it represents the time 
at which it was allocated, measured to the nearest millisecond.

Date(int year, int month, int date)
Deprecated. 
As of JDK version 1.1, replaced by Calendar.set(year + 1900, month, date) 
or GregorianCalendar(year + 1900, month, date).

--


Fer V - Jalmendra99@gmail.com

 */
package Ej11Date;

import java.util.Date;
import java.util.Scanner;

public class Ej11 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        System.out.print("Ingrese el año: ");
        int anio = leer.nextInt();

        System.out.print("Ingrese el mes: ");
        int mes = leer.nextInt();

        System.out.print("Ingrese el dia: ");
        int dia = leer.nextInt();

        Date fecha = new Date(anio - 1900, mes - 1, dia);

        Date hoy = new Date();

        int diferenciaEnAnios = hoy.getYear() - fecha.getYear();
        System.out.println("La diferencia en años entre la fecha ingresada y hoy es de " + diferenciaEnAnios + " años.");
    }
}
