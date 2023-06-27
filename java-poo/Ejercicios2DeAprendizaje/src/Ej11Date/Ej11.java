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

[...]

Constructor and Description

Date(int year, int month, int date)
Deprecated. 
As of JDK version 1.1, replaced by Calendar.set(year + 1900, month, date) 
or GregorianCalendar(year + 1900, month, date).

--

Nota: 
- Inicialmente se reemplazó java.util.Date por java.util.GregorianCalendar
- Finalmente se reemplazó java.util.GregorianCalendar por java.Time porque 
    es lo que fué más usado por el grupo (y porque no está deprecado para nada)



Fer V - Jalmendra99@gmail.com

 */
package Ej11Date;

// import java.util.Date;
// import java.util.Calendar;
// import java.util.GregorianCalendar;
import java.util.Scanner;
import java.time.*;

public class Ej11 {

    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in).useDelimiter("\n");

        System.out.print("Ingrese el año: ");
        int anio = leer.nextInt();

        System.out.print("Ingrese el mes: ");
        int mes = leer.nextInt();

        System.out.print("Ingrese el dia: ");
        int dia = leer.nextInt();

        ////// Acá se resolvió usando java.util.Date
        ////Date fecha = new Date(anio - 1900, mes - 1, dia);
        ////Date hoy = new Date();
        ////int diferenciaEnAnios = hoy.getYear() - fecha.getYear();
        //// Acá se resolvió usando java.util.GregorianCalendar
        //GregorianCalendar fecha = new GregorianCalendar(anio, mes, dia);
        //GregorianCalendar hoy = new GregorianCalendar();
        //int diferenciaEnAnios = hoy.get(Calendar.YEAR) - fecha.get(Calendar.YEAR);
        // Resuelto usando java.Time.
        LocalDate fecha = LocalDate.of(anio, mes, dia);
        LocalDate hoy = LocalDate.now();
        int diferenciaEnAnios = hoy.getYear() - fecha.getYear();

        System.out.println("La diferencia en años entre la fecha ingresada y hoy es de " + diferenciaEnAnios + " años.");
    }
}
