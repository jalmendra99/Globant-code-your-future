/*
Java-POO - Ejercicios de aprendizaje.
Ejercicio 12 - Página 31

Fer V - Jalmendra99@gmail.com

 */
package Ej12Persona.servicio;

import Ej12Persona.entidad.Persona;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Scanner;

public class PersonaService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Persona crearPersona() {

        Persona pe = new Persona();

        int anio, mes, dia;

        System.out.print("Ingrese el nombre de la persona: ");
        pe.setNombre(leer.next());

        System.out.print("Ingrese el año de nacimiento: ");
        anio = leer.nextInt();

        System.out.print("Ingrese el mes de nacimiento: ");
        mes = leer.nextInt();

        System.out.print("Ingrese el día de nacimiento: ");
        dia = leer.nextInt();

        pe.setFechaDeNacimiento(anio, mes, dia);

        return pe;
    }

    public int calcularEdad(GregorianCalendar fechaDeNacimiento) {
        GregorianCalendar hoy = new GregorianCalendar();
        return hoy.get(Calendar.YEAR) - (fechaDeNacimiento.get(Calendar.YEAR));

    }

    public boolean menorQue(Persona pe, int edad) {
        return calcularEdad(pe.getFechaDeNacimiento()) < edad;
    }

    public void mostrarPersona(Persona pe) {
        System.out.println("Nombre: " + pe.getNombre());
        System.out.println("Edad: " + calcularEdad(pe.getFechaDeNacimiento()));
        System.out.println("Fecha de nacimiento: "
                + pe.getFechaDeNacimiento().get(Calendar.DAY_OF_MONTH) + "/"
                + pe.getFechaDeNacimiento().get(Calendar.MONTH) + "/"
                + pe.getFechaDeNacimiento().get(Calendar.YEAR) + ".");
    }

    public void hacerPruebas(Persona pe) {
        System.out.print("Ingrese una edad para comparar con la persona: ");
        if (menorQue(pe, leer.nextInt())) {
            System.out.println("La edad de la persona es menor que la ingresada.");
        } else {
            System.out.println("La edad de la persona es igual o mayor que la ingresada.");
        }

    }

}
